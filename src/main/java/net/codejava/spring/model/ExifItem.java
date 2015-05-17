package net.codejava.spring.model;



import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ExifItem {
	
	//private String name;
	private CommonsMultipartFile file;
	private String path;
	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public CommonsMultipartFile getFile() {
		return file;
	}
	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}
	
	

}
