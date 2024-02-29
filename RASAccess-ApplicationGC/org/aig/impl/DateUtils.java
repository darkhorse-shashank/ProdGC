package org.aig.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;


public class DateUtils {
	/**
	 This method is used to format the date in specific format
	 
	 * @param value :- String representation value of date object
	 * @param format :- format in which the date has to be parsed
	 * @param specificFormat :- format in which the date object has to be formatted
	 * @return :- It returns the resultant string representation format 
	 * @throws ParseException
	 */
	public static String getFormattedDate(String value,String format,String specificFormat) throws ParseException 
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat(format,Locale.ENGLISH);
		
		
		Date date = dateFormat.parse(value);
		System.out.println(date);
		SimpleDateFormat specificDateFormat = new SimpleDateFormat(specificFormat);
		System.out.println(specificDateFormat.format(date));
		return specificDateFormat.format(date);
	}
	
	public static Date getFormattedDate(String value,String format) throws ParseException
	{
        SimpleDateFormat dateFormat = new SimpleDateFormat(format,Locale.ENGLISH);
		Date date = dateFormat.parse(value);
		return date;
	}
	
	public static Date getFormattedDate(String value) throws ParseException
	{
		System.out.println("Inside Format Date");
		    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			Date date = dateFormat.parse(value);
			System.out.println("Time Stamp Response:"+date.toString());
			return date;
		 
	}
	
	
	
	
	public static String getCurrentTimeStamp()
	  {
	    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
	    Date now = new Date();
	    String strDate = date.format(now);
	    return strDate;
	  }
	
	public static String getDate(Date date)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		return sdf.format(date);
	}
	
	public static String getDateTime(Date date)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return sdf.format(date);
	}
	
	public static void main(String a[]) throws ParseException{
		
		System.out.println("formatted date "+getDate(new Date())+" new Date"+new Date());
		
	}
	
}
