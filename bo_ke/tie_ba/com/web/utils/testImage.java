package com.web.utils;


import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class testImage {
	//以逗号拼接，存入数据库
      public static String getImag(String url){
    	  
    // String s ="<p><img src=\"../ueditor/jsp/upload/image/20190417/155551411662607392612131s.png\" title=\"155551411662607392612131s.png\" alt=\"12131s.png\"/><img src=\"../ueditor/jsp/upload/image/20190417/155551419113300798512131s.png\" title=\"155551419113300798512131s.png\" alt=\"12131s.png\"/></p>";

     Pattern srcText = Pattern.compile("src\\s*=\\s*\"?(.*?)(\"|>|\\s+)");
  
     Matcher match3 = srcText.matcher (url); 

List<String> listImgSrc = new ArrayList<String>();

while (match3.find()) {
	
	String  fengeqian  = match3.group();
	String	fengehou=fengeqian.substring(fengeqian.indexOf("src=\"")+5, 
			fengeqian.lastIndexOf("\""));
	
    listImgSrc.add(fengehou);
}
    	
String str = listToString(listImgSrc, ",");
		return str;		
}
     
        //获取<=3个图片src的方法
      public static String listToString(List<String> listImgSrc, String separator) {
          StringBuilder sb = new StringBuilder();
          //如果图片大于等于三张，只取3
          if(listImgSrc.size()>=3){
        	for (int i = 0; i < 3; i++) {
                sb.append(listImgSrc.get(i));
                if (i <2) {
                    sb.append(separator);
                }
            }
            return sb.toString();
          }
          //小于3时
          else{
          for (int i = 0; i < listImgSrc.size(); i++) {
              sb.append(listImgSrc.get(i));
              if (i < listImgSrc.size()-1) {
                  sb.append(separator);
              }
             }
          return sb.toString();
          }
      }
      
      
      
	
        
        //数据库传值，取单个src
      public static String[] getSrc(String src){
        String[] m =src.split(",");
      
        return m;
         }
	}

