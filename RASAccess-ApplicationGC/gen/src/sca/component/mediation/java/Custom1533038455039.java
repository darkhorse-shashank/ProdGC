package sca.component.mediation.java;

import com.ibm.websphere.bo.BOXMLSerializer;
import java.io.ByteArrayOutputStream;
import java.io.BufferedOutputStream;
import com.ibm.websphere.sca.ServiceManager;
import java.io.IOException;
import com.ibm.websphere.bo.BOFactory;
import commonj.sdo.DataObject;
import com.ibm.websphere.sibx.smobo.ServiceMessageObject;
import com.ibm.wsspi.sibx.mediation.InputTerminal;
import com.ibm.wsspi.sibx.mediation.MediationBusinessException;
import com.ibm.wsspi.sibx.mediation.MediationConfigurationException;
import com.ibm.wsspi.sibx.mediation.OutputTerminal;
import com.ibm.wsspi.sibx.mediation.esb.ESBMediationPrimitive;
import com.ibm.wsspi.sibx.mediation.MediationServices;

/**
 * @generated
 *  Flow: RetrieveGCMediationCmpt Interface: RetrieveAccessGC Operation: findRefundStatus Type: request Custom Mediation: CustomMediation1
 */
public class Custom1533038455039 extends ESBMediationPrimitive {

	private InputTerminal in;
	private OutputTerminal out;

	/* state of primitive initialization */
	private boolean __initPassed = false;

	/* primitive display name */
	private String __primitiveDisplayName = null;

	/* 
	 * @generated
	 * (non-Javadoc)
	 * @see com.ibm.wsspi.sibx.mediation.Mediation#init()
	 */
	public void init() throws MediationConfigurationException {
		/* Get the mediation service */
		MediationServices mediationServices = this.getMediationServices();
		if (mediationServices == null)
			throw new MediationConfigurationException(
					"MediationServices object not set.");

		/* Get the primitive display name for use in exception messages */
		__primitiveDisplayName = mediationServices.getMediationDisplayName();

		in = mediationServices.getInputTerminal("in");
		if (in == null) {
			throw new MediationConfigurationException(
					"No terminal named in defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		out = mediationServices.getOutputTerminal("out");
		if (out == null) {
			throw new MediationConfigurationException(
					"No terminal named out defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		/* Initialization completed */
		__initPassed = true;
	}

	/* 
	 * @generated
	 * (non-Javadoc)
	 * @see com.ibm.wsspi.sibx.mediation.Mediation#mediate(com.ibm.wsspi.sibx.mediation.InputTerminal, commonj.sdo.DataObject)
	 */
	public void mediate(InputTerminal inputTerminal, DataObject message)
			throws MediationConfigurationException, MediationBusinessException {
		/* If initialization didn't complete, try again */
		if (!__initPassed) {
			init();
		}

		try {
			doMediate(inputTerminal, (ServiceMessageObject) message);
		} catch (Exception e) {
			if (e instanceof MediationBusinessException) {
				throw (MediationBusinessException) e;
			} else if (e instanceof MediationConfigurationException) {
				throw (MediationConfigurationException) e;
			} else {
				throw new MediationBusinessException(e);
			}
		}
	}

	/**
	 * @generated
	 */
	public void doMediate(InputTerminal inputTerminal, ServiceMessageObject smo)
			throws MediationConfigurationException, MediationBusinessException {
		/**
		 * GENERATED COMMENT - DO NOT MODIFY
		 * Variables:  for output terminals - out (com.ibm.wsspi.sibx.mediation.OutputTerminal)
		 *             for user properties - <No user properties defined>
		 * Inputs:     inputTerminal (com.ibm.wsspi.sibx.mediation.InputTerminal), smo (com.ibm.websphere.sibx.smobo.ServiceMessageObject)
		 * Exceptions: com.ibm.wsspi.sibx.mediation.MediationConfigurationException, com.ibm.wsspi.sibx.mediation.MediationBusinessException
		 */
		/**
		 * GENERATED COMMENT - DO NOT MODIFY
		 * Variables:  for output terminals - out (com.ibm.wsspi.sibx.mediation.OutputTerminal)
		 *             for user properties - <No user properties defined>
		 * Inputs:     inputTerminal (com.ibm.wsspi.sibx.mediation.InputTerminal), smo (com.ibm.websphere.sibx.smobo.ServiceMessageObject)
		 * Exceptions: com.ibm.wsspi.sibx.mediation.MediationConfigurationException, com.ibm.wsspi.sibx.mediation.MediationBusinessException
		 */

		BOXMLSerializer xmlSerializerService = (BOXMLSerializer) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOXMLSerializer");

		DataObject correlation = ((BOFactory) ServiceManager.INSTANCE
				.locateService("com/ibm/websphere/bo/BOFactory")).create(
				"http://Access-ApplicationGC", "correlationBO");

		try {
			ByteArrayOutputStream baos = new ByteArrayOutputStream(1024);
			BufferedOutputStream bos = new BufferedOutputStream(baos);
			BOXMLSerializer serializer = (BOXMLSerializer) ServiceManager.INSTANCE
					.locateService("com/ibm/websphere/bo/BOXMLSerializer");
			//InputData is the BusinessObject name.
			serializer.writeDataObject(smo.getDataObject("/body"), smo
					.getDataObject("/body").getType().getURI(), "", bos);

			bos.flush();
			bos.close();
			String output = baos.toString("UTF-8");
			correlation.set("request", output);
			smo.setDataObject("/context/correlation", correlation);
			System.out.println("serialized----->"
					+ smo.get("/context/correlation/request"));
		} catch (IOException e) {
			e.printStackTrace();
		}

		out.fire(smo); // propagate the service message object to the primitive that is wired to the 'out' terminal
		out.fire(smo); // propagate the service message object to the primitive that is wired to the 'out' terminal
	}
}
