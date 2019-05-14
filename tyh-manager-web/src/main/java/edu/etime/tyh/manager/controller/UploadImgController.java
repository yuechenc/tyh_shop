package edu.etime.tyh.manager.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.alibaba.fastjson.JSON;

import edu.etime.fastdfs.client.FastDFSClient;
import edu.etime.tyh.common.Config;

@Controller
@RequestMapping("/ckeditor/upload")
public class UploadImgController {
	
	@RequestMapping("/img")
	public void uploadimg(@RequestParam("upload") MultipartFile file, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 上传文件
		FastDFSClient dfs = new FastDFSClient();
		String filename = file.getOriginalFilename();
		String extName = filename.substring(filename.lastIndexOf(".") + 1);
		String url = dfs.uploadFile(file.getBytes(), extName);
		// 构建文件的完整路径。 包含： 文件服务器地址+文件位置
		url = Config.getFileserver() + url;
		System.out.println(url);
		Map<String, Object> map=new HashMap<>();
		map.put("fileName", url);
		map.put("uploaded", 1);
		map.put("url", url);
		String msg = JSON.toJSONString(map);
		System.out.println(msg);
		// 需要向客户端响应如下消息
		//response.setContentType("text/html;charset=UTF-8");
		//String callback = request.getParameter("CKEditorFuncNum");
		PrintWriter out = response.getWriter();
		//out.println("<script type=\"text/javascript\">");
		//out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + url + "',''" + ")");
		//out.println("</script>");
		out.println(msg);
		out.flush();
		out.close();
	}
}
