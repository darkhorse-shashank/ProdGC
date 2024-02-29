package sca.component.mediation.java;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
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
 *  Flow: RetrieveGCMediationCmpt Interface: RetrieveAccessGC Operation: findPolicyDetails Type: response Custom Mediation: Response Transformation
 */
public class Custom1579510292900 extends ESBMediationPrimitive {

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
			Date date = null;
			String formattedDate = null;
			String appDate = smo.getString(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/ApplicationDate");
			String policyStartDate = smo.getString(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/PolicyStartDate");
			String policyEndDate = smo.getString(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/PolicyEndDate");
			String conversionDate = smo.getString(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/ConversionDate");
			DateFormat originalFormat = new SimpleDateFormat("dd/MM/yyyy");
			DateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");
			if (appDate != null && appDate != "") {
				date = originalFormat.parse(appDate);
				formattedDate = targetFormat.format(date);
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/ApplicationDate",
						formattedDate);
			} else {
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/ApplicationDate",
						null);
			}
			if (policyStartDate != null && policyStartDate != "") {
				date = originalFormat.parse(policyStartDate);
				formattedDate = targetFormat.format(date);
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/PolicyStartDate",
						formattedDate);
			} else {
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/PolicyStartDate",
						null);
			}
			if (policyEndDate != null && policyEndDate != "") {
				date = originalFormat.parse(policyEndDate);
				formattedDate = targetFormat.format(date);
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/PolicyEndDate",
						formattedDate);
			} else {
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/PolicyEndDate",
						null);
			}
			if (conversionDate != null && conversionDate != "") {
				date = originalFormat.parse(conversionDate);
				formattedDate = targetFormat.format(date);
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/conversionDate",
						formattedDate);
			} else {
				smo.setString(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/conversionDate",
						null);
			}
			int size = smo.getList(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/objInsuredDetails/InsuredDetails")
					.size();
			List InsuredList = new ArrayList();
			int empty = 0;
			for (int i = 1; i <= size; i++) {
				InsuredList.add(smo.getDataObject(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/objInsuredDetails/InsuredDetails["
								+ i + "]"));
			}
			Iterator iterator = InsuredList.iterator();
			while (iterator.hasNext()) {
				DataObject current = (DataObject) iterator.next();
				String name = current.getString("InsuredName");
				String dob = current.getString("InsuredDOB");
				String address = current.getString("InsuredContAdd");
				String cNo = current.getString("InsuredContNo");

				if (!(name == null || name.isEmpty() || "".equalsIgnoreCase(name.trim()))) {
					empty++;
				}

				if (!(dob == null || dob.isEmpty() || "".equalsIgnoreCase(dob.trim()))) {
					empty++;
				}

				if (!(address == null || address.isEmpty() || "".equalsIgnoreCase(address.trim()))) {
					empty++;
				}

				if (!(cNo == null || cNo.isEmpty() || "".equalsIgnoreCase(cNo.trim()))) {
					empty++;
				}

				if (empty == 0) {
					iterator.remove();
				}
			}
			smo.setList(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/objInsuredDetails/InsuredDetails",
					InsuredList);

			int receiptSize = smo.getList(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/objCRSDetails/CRSDetails")
					.size();
			List ReceiptList = new ArrayList();
			for (int i = 1; i <= size; i++) {
				ReceiptList.add(smo.getDataObject(
						"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/objCRSDetails/CRSDetails["
								+ i + "]"));
			}
			Iterator receiptIterator = ReceiptList.iterator();
			Boolean receiptEmpty = false;
			while (receiptIterator.hasNext()) {
				DataObject current = (DataObject) receiptIterator.next();
				String crsNo = current.getString("CRS");
				System.out.println("crsNo " + crsNo);
				if (crsNo == null || crsNo.isEmpty() || "".equalsIgnoreCase(crsNo.trim())) {
					receiptEmpty = true;
				}
				System.out.println(receiptEmpty);
				if (receiptEmpty) {
					receiptIterator.remove();
				}
			}
			smo.setList(
					"/body/policyDetailsResponse/PolicyDetailsResponse/PolicyDetailsResult/PolicyDetails[1]/objCRSDetails/CRSDetails",
					ReceiptList);

			out.fire(smo); // propagate the service message object to the primitive that is wired to the 'out' terminal
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
