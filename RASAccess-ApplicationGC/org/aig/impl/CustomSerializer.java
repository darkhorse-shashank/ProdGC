package org.aig.impl;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import com.ibm.websphere.bo.BOXMLSerializer;
import com.ibm.websphere.sca.ServiceManager;

import commonj.sdo.DataObject;

public class CustomSerializer {

	BOXMLSerializer xmlSerializerService
    = (BOXMLSerializer) new ServiceManager()
   .locateService
   ("com/ibm/websphere/bo/BOXMLSerializer");

	public static String transformation(DataObject obj)
	{
		String output=null;
		 try {
		    	ByteArrayOutputStream baos = new ByteArrayOutputStream(1024);
		    	BufferedOutputStream bos = new BufferedOutputStream(baos);
		    	BOXMLSerializer serializer = (BOXMLSerializer)ServiceManager.INSTANCE.locateService("com/ibm/websphere/bo/BOXMLSerializer");
		    	//InputData is the BusinessObject name.
		    	serializer.writeDataObject(obj,obj.getType().getURI(),"",bos);

		    	bos.flush();
		    	bos.close();
		    output = baos.toString("UTF-8");
		    	 System.out.println("serialized----->"+output);
		    	 
		    	
		    	} catch (IOException e) {
		        e.printStackTrace();
		    }
return output;
	}
	
}
