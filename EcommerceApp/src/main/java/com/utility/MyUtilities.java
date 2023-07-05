package com.utility;

import java.io.File;
import java.util.ArrayList;

import org.apache.commons.fileupload.FileItem;

public class MyUtilities {
	
	public String UploadFile(FileItem Item,String destinationpath, ArrayList<String> ext)throws Exception
	{
		String newfilename = "";
		
		if(!Item.isFormField()) {
			
			// retrieve extension from file name
			String fname = Item.getName();
			String fileextension=fname.substring(fname.lastIndexOf('.'));
			if(ext.contains(fileextension) && (Item.getSize()/(1024*1024))<=10)
			{
				//create new file name
				 //newfilename=((int)(Math.random()*1000))+fname;
				newfilename=fname;
				Item.write(new File(destinationpath+newfilename));
			
		}
		
		
		
		
		
	}
		return newfilename;
	}
}
