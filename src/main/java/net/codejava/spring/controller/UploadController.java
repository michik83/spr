package net.codejava.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import net.codejava.spring.model.UploadItem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/upload")
public class UploadController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String getUploadForm(Model model) {
		model.addAttribute(new UploadItem());
		//System.err.println("LOG: " + model.toString());
		return "upload/uploadForm";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String create(UploadItem uploadItem, BindingResult result) {
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				System.err.println("Error: " + error.getCode() + " - "
						+ error.getDefaultMessage());
			}
			return "upload/uploadForm";
		}

		MultipartFile file = uploadItem.getFile();
		if (!file.isEmpty()) {
			try {

				byte[] bytes = file.getBytes();

				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + uploadItem.getName());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				// Some type of file processing...
				System.err
						.println("-------------------------------------------");
				System.err.println("Test upload: " + uploadItem.getName());
				System.err.println("Test upload: "
						+ uploadItem.getFile().getOriginalFilename());
				System.err
						.println("-------------------------------------------");

				return "redirect:/";

			} catch (Exception e) {
				return "You failed to upload " + uploadItem.getName() + " => "
						+ e.getMessage();
			}
		} else {
			return "You failed to upload " + uploadItem.getName()
					+ " because the file was empty.";
		}
	}
}