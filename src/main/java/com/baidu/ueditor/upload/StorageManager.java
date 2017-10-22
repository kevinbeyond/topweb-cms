package com.baidu.ueditor.upload;

import com.baidu.ueditor.define.AppInfo;
import com.baidu.ueditor.define.BaseState;
import com.baidu.ueditor.define.State;
import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import com.topweb.util.ConstantUtil;
import org.apache.commons.io.FileUtils;

import java.io.*;

public class StorageManager {
	public static final int BUFFER_SIZE = 8192;

	public StorageManager() {
	}

	public static State saveBinaryFile(byte[] data, String path) {
		File file = new File(path);

		State state = valid(file);

		if (!state.isSuccess()) {
			return state;
		}

		try {
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(file));
			bos.write(data);
			bos.flush();
			bos.close();
		} catch (IOException ioe) {
			return new BaseState(false, AppInfo.IO_ERROR);
		}

		state = new BaseState(true, file.getAbsolutePath());
		state.putInfo( "size", data.length );
		state.putInfo( "title", file.getName() );
		return state;
	}

	public static State saveFileByInputStream(InputStream is, String path,
			long maxSize) {
		State state = null;

		File tmpFile = getTmpFile();

		byte[] dataBuf = new byte[ 2048 ];
		BufferedInputStream bis = new BufferedInputStream(is, StorageManager.BUFFER_SIZE);

		try {
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(tmpFile), StorageManager.BUFFER_SIZE);

			int count = 0;
			while ((count = bis.read(dataBuf)) != -1) {
				bos.write(dataBuf, 0, count);
			}
			bos.flush();
			bos.close();

			if (tmpFile.length() > maxSize) {
				tmpFile.delete();
				return new BaseState(false, AppInfo.MAX_SIZE);
			}

			state = saveTmpFile(tmpFile, path);

			if (!state.isSuccess()) {
				tmpFile.delete();
			}

			return state;
			
		} catch (IOException e) {
		}
		return new BaseState(false, AppInfo.IO_ERROR);
	}

	public static State saveFileByInputStream(InputStream is, String path) {
		State state = null;

		File tmpFile = getTmpFile();

		byte[] dataBuf = new byte[ 2048 ];
		BufferedInputStream bis = new BufferedInputStream(is, StorageManager.BUFFER_SIZE);

		try {
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(tmpFile), StorageManager.BUFFER_SIZE);

			int count = 0;
			while ((count = bis.read(dataBuf)) != -1) {
				bos.write(dataBuf, 0, count);
			}
			bos.flush();
			bos.close();

			state = saveTmpFile(tmpFile, path);

			if (!state.isSuccess()) {
				tmpFile.delete();
			}

			return state;
		} catch (IOException e) {
		}
		return new BaseState(false, AppInfo.IO_ERROR);
	}

	private static File getTmpFile() {
		File tmpDir = FileUtils.getTempDirectory();
		String tmpFileName = (Math.random() * 10000 + "").replace(".", "");
		return new File(tmpDir, tmpFileName);
	}

	private static State saveTmpFile(File tmpFile, String path) {
		State state = null;
		File targetFile = new File(path);

		if (targetFile.canWrite()) {
			return new BaseState(false, AppInfo.PERMISSION_DENIED);
		}
		try {
			FileUtils.moveFile(tmpFile, targetFile);
		} catch (IOException e) {
			return new BaseState(false, AppInfo.IO_ERROR);
		}

		state = new BaseState(true);
		state.putInfo( "size", targetFile.length() );
		state.putInfo( "title", targetFile.getName() );
		
		return state;
	}

	private static State valid(File file) {
		File parentPath = file.getParentFile();

		if ((!parentPath.exists()) && (!parentPath.mkdirs())) {
			return new BaseState(false, AppInfo.FAILED_CREATE_FILE);
		}

		if (!parentPath.canWrite()) {
			return new BaseState(false, AppInfo.PERMISSION_DENIED);
		}

		return new BaseState(true);
	}

	//上传至七牛云服务器
	public static State saveFileToQiniu(InputStream is, String savePath, long maxSize) {

		State state = null;

//		File tmpFile = getTmpFile();
//
//		byte[] dataBuf = new byte[ 2048 ];
//		BufferedInputStream bis = new BufferedInputStream(is, StorageManager.BUFFER_SIZE);
//
//		try {
//			BufferedOutputStream bos = new BufferedOutputStream(
//					new FileOutputStream(tmpFile), StorageManager.BUFFER_SIZE);
//
//			int count = 0;
//			while ((count = bis.read(dataBuf)) != -1) {
//				bos.write(dataBuf, 0, count);
//			}
//			bos.flush();
//			bos.close();
//
//			if (tmpFile.length() > maxSize) {
//				tmpFile.delete();
//				return new BaseState(false, AppInfo.MAX_SIZE);
//			}
//			state = saveTmpFile(tmpFile, path);
//
//			if (!state.isSuccess()) {
//				tmpFile.delete();
//			}
//
//			return state;
//
//		} catch (IOException e) {
//		}

		Configuration cfg = new Configuration(Zone.zone1());
		UploadManager uploadManager = new UploadManager(cfg);
		String accessKey = ConstantUtil.QINIU_ACCESS_KEY;
		String secretKey = ConstantUtil.QINIU_SECRET_KEY;
		String bucket = ConstantUtil.QINIU_BUCKET;

		//默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = savePath;

//			byte[] uploadBytes = is.getBytes("utf-8");
//			ByteArrayInputStream byteInputStream=new ByteArrayInputStream(uploadBytes);

		Auth auth = Auth.create(accessKey, secretKey);
		String upToken = auth.uploadToken(bucket);
		try {
			Response response = uploadManager.put(is,key,upToken,null, null);
			//解析上传成功的结果
			DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
			state = new BaseState(true);
//			state.putInfo( "size", targetFile.length() );
			state.putInfo( "title", key);
			return state;
		} catch (QiniuException ex) {

		}

		return new BaseState(false, AppInfo.IO_ERROR);
	}
}
