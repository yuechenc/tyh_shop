package edu.etime.tyh.common;

public class Config {
	private static String fileserver="http://47.100.224.4:88/";

	public static String getFileserver() {
		return fileserver;
	}

	public static void setFileserver(String fileserver) {
		Config.fileserver = fileserver;
	}
}
