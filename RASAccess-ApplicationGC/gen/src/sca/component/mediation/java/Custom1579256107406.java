package sca.component.mediation.java;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import com.ibm.websphere.sibx.smobo.ServiceMessageObject;
import com.ibm.wsspi.sibx.mediation.InputTerminal;
import com.ibm.wsspi.sibx.mediation.MediationBusinessException;
import com.ibm.wsspi.sibx.mediation.MediationConfigurationException;
import com.ibm.wsspi.sibx.mediation.OutputTerminal;
import com.ibm.wsspi.sibx.mediation.esb.ESBMediationPrimitive;
import commonj.sdo.DataObject;
import com.ibm.wsspi.sibx.mediation.MediationServices;

/**
 * @generated
 *  Flow: RetrieveGCMediationCmpt Interface: RetrieveAccessGC Operation: findMainReceiptDetails Type: response Custom Mediation: Total Amount Calculation
 */
public class Custom1579256107406 extends ESBMediationPrimitive {

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
			throw new MediationConfigurationException("MediationServices object not set.");

		/* Get the primitive display name for use in exception messages */
		__primitiveDisplayName = mediationServices.getMediationDisplayName();

		in = mediationServices.getInputTerminal("in");
		if (in == null) {
			throw new MediationConfigurationException(
					"No terminal named in defined for mediation primitive " + __primitiveDisplayName);
		}

		out = mediationServices.getOutputTerminal("out");
		if (out == null) {
			throw new MediationConfigurationException(
					"No terminal named out defined for mediation primitive " + __primitiveDisplayName);
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
		try {
			Date originalDate = null;
			String formattedDate = null;
			DateFormat receiptDateOriginalFormat = new SimpleDateFormat("dd/MM/yyyy");
			DateFormat instrumentDateDateOriginalFormat = new SimpleDateFormat("dd-MMM-yy");
			DateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");
			String receiptDate = smo
					.getString("/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/receiptDate");
			String instrumentDate = smo
					.getString("/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/instrumentDate");
			if (receiptDate != null && receiptDate != "") {
				originalDate = receiptDateOriginalFormat.parse(receiptDate);
				formattedDate = targetFormat.format(originalDate);
				smo.setString("/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/receiptDate", formattedDate);
			} else {
				smo.setString("/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/receiptDate", null);
			}

			if (instrumentDate != null && instrumentDate != "") {
				originalDate = instrumentDateDateOriginalFormat.parse(instrumentDate);
				formattedDate = targetFormat.format(originalDate);
				smo.setString("/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/instrumentDate",
						formattedDate);
			} else {
				smo.setString("/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/instrumentDate", null);
			}
			String crsAmount = smo.getString(
					"/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/RecieptDtls[1]/instrument_amt");
			String balance = smo.getString(
					"/body/fetchReceiptDetailsResponse/FetchReceiptDetailsResult/RecieptDtls[1]/balance_amt");
			if (crsAmount != null && crsAmount != "" && balance != null && balance != "") {
				double totalAmount = Double.valueOf(crsAmount) - Double.valueOf(balance);
				smo.setDouble("/context/correlation/totalAmount", totalAmount);
			}
			out.fire(smo); // propagate the service message object to the primitive that is wired to the 'out' terminal
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
