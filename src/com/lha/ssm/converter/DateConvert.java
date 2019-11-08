package com.lha.ssm.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class DateConvert implements Converter<String, Date>{

	@Override
	public Date convert(String param) {
		SimpleDateFormat df=new SimpleDateFormat("yyyy-mm-dd");
		Date d=null;
		try {
			d=df.parse(param);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return d;
	}

}
