package sca.component.mediation.java;

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
 *  Flow: MaintainGCMediationCmpt Interface: MaintainAccessGC Operation: cancelPolicy Type: request Custom Mediation: formatDates
 */
public class Custom1537767614607 extends ESBMediationPrimitive {

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
			smo.setInt("/context/correlation/transactionId", smo.getInt("/body/cancelPolicy/transactionId"));
			smo.setInt("/context/correlation/isExecuting", 1);
			smo.setString("/context/correlation/response", "");
			smo.setDate("/context/correlation/lastRequestedOn", new Date());
			if ("Motor".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/LOB"))) {
				if (smo.getString("/body/cancelPolicy/cancPolicyData/cancellationReason")
						.equalsIgnoreCase("Request At Insurer Discretion-Misdeclaration of Facts"))
					smo.setString("/body/cancelPolicy/cancPolicyData/cancellationDescription",
							"Misdeclaration of Facts");
				if (smo.getString("/body/cancelPolicy/cancPolicyData/cancellationReason")
						.equalsIgnoreCase("Request At Insurer Discretion - PL Rule Book"))
					smo.setString("/body/cancelPolicy/cancPolicyData/cancellationDescription", "PL Rule Book");
			}
			if ("Aig Combined".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/LOB"))) {

				smo.setString("/body/cancelPolicy/cancPolicyData/cancellationDescription",
						smo.getString("/body/cancelPolicy/cancPolicyData/cancellationOption"));
				smo.setString("/body/cancelPolicy/cancPolicyData/cancellationReason", "Others");
				if ("".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/agreedPremiumAmount"))
						|| smo.getString("/body/cancelPolicy/cancPolicyData/agreedPremiumAmount") == null)
					smo.setString("/body/cancelPolicy/cancPolicyData/agreedPremiumAmount", "0");
			}

			if ("Property and Energy".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/LOB"))) {
				if ("Others".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/cancellationReason"))) {
					smo.setString("/body/cancelPolicy/cancPolicyData/cancellationDescription",
							smo.getString("/body/cancelPolicy/cancPolicyData/cancellationOption"));
				}
			}

			if ("Liability".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/LOB"))) {
				if ("Others".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/cancellationReason"))) {
					smo.setString("/body/cancelPolicy/cancPolicyData/cancellationDescription",
							smo.getString("/body/cancelPolicy/cancPolicyData/cancellationOption"));
				} else {
					smo.setString("/body/cancelPolicy/cancPolicyData/cancellationDescription",
							smo.getString("/body/cancelPolicy/cancPolicyData/remarks"));
				}
			}
			if ("Trade Credit".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/LOB"))) {

				if ("".equalsIgnoreCase(smo.getString("/body/cancelPolicy/cancPolicyData/retainMinPrem"))
						|| smo.getString("/body/cancelPolicy/cancPolicyData/retainMinPrem") == null)
					smo.setString("/body/cancelPolicy/cancPolicyData/retainMinPrem", "0");
			}

			Date oldDate = null;
			String formattedDate = null;
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

			oldDate = smo.getDate("/body/cancelPolicy/cancPolicyData/policyStartDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/policyStartDate", formattedDate);
			}

			oldDate = smo.getDate("/body/cancelPolicy/cancPolicyData/cancRequestDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/endDateOfRequest", formattedDate);
			}

			SimpleDateFormat getTime = new SimpleDateFormat("HH:mm");
			Date date = new Date();
			smo.setString("/body/cancelPolicy/cancPolicyData/effectiveTime",
					smo.getString("/body/cancelPolicy/cancPolicyData/effectiveTime"));
			out.fire(smo);

			oldDate = smo.getDate("/body/cancelPolicy/cancPolicyData/peroidFromDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/periodFromDate", formattedDate);
			}

			oldDate = smo.getDate("/body/cancelPolicy/cancPolicyData/periodToDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/periodToDate", formattedDate);
			}

			Date ncbDate = smo.getDate("/body/cancelPolicy/cancPolicyData/ncbReservingEffectiveDate");
			if (ncbDate != null) {
				formattedDate = dateFormat.format(ncbDate);
				smo.setString("/context/correlation/ncbReservingDate", formattedDate);
			}
			String lob = smo.getString("/body/cancelPolicy/cancPolicyData/LOB");
			if (lob.equalsIgnoreCase("Health") || lob.equalsIgnoreCase("Personal Accident")
					|| "LTA".equalsIgnoreCase(lob)) {
				smo.setString("/body/cancelPolicy/cancPolicyData/remarks",
						smo.getString("/body/cancelPolicy/cancPolicyData/cancellationReason"));
				smo.setString("/body/cancelPolicy/cancPolicyData/cancellationReason", "");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} // propagate the service message object to the primitive that is wired to the 'out' terminal
	}
}
