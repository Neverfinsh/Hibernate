package test1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test1 {
	public static void main(String[] args)
	{
		 SimpleDateFormat sdf =   new SimpleDateFormat( " yyyy-MM-dd HH:mm:ss " );
		 try {
			Date date = sdf.parse( " 2008-07-10 19:20:00 " );
			  System.out.println(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	   
	}

}
