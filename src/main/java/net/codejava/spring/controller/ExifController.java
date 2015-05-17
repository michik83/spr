package net.codejava.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import net.codejava.spring.model.ExifItem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;

@Controller
@RequestMapping(value = "/read")
public class ExifController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String getUploadForm(Model model) {
		model.addAttribute(new ExifItem());
		//System.err.println("LOG: " + model.toString());
		return "exif/exifForm";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String create(ExifItem exifItem, BindingResult result) {
		if (result.hasErrors()) {
			for (ObjectError error : result.getAllErrors()) {
				System.err.println("Error: " + error.getCode() + " - "
						+ error.getDefaultMessage());
			}
			return "exif/exifForm";
		}

		CommonsMultipartFile file = exifItem.getFile();
		String oFile = file.getStorageDescription();
		System.err.println("LOG: " + oFile);
		
		
//		try {
//			
//			Metadata metadata = ImageMetadataReader.readMetadata(file);
//			
//			for (Directory directory : metadata.getDirectories()) {
//			    for (Tag tag : directory.getTags()) {
//			        System.out.println(tag);
//			    }
//			}
//			
//		} catch (ImageProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
		return null;
}
}