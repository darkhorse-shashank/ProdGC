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
 *  Flow: RetrieveGCMediationCmpt Interface: RetrieveAccessGC Operation: calculateCancellationRefund Type: request Custom Mediation: formatDates
 */
public class Custom1535450843275 extends ESBMediationPrimitive {

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
		System.out.println("Callout error handler in Calculate premium");
		try {
			smo.setInt("/context/correlation/transactionId",
					smo.getInt("/body/calculateCancellationRefund/transactionId"));
			smo.setInt("/context/correlation/isExecuting", 1);
			smo.setString("/context/correlation/response", "");
			smo.setDate("/context/correlation/lastRequestedOn", new Date());
			if ("Motor".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/lob"))) {
				if (smo.getString("/body/calculateCancellationRefund/input/cancellationReason")
						.equalsIgnoreCase("Request At Insurer Discretion - PL Rule Book"))
					smo.setString("/body/calculateCancellationRefund/input/cancellationDescription", "PL Rule Book");
				if (smo.getString("/body/calculateCancellationRefund/input/cancellationReason")
						.equalsIgnoreCase("Request At Insurer Discretion-Misdeclaration of Facts"))
					smo.setString("/body/calculateCancellationRefund/input/cancellationDescription",
							"Misdeclaration of Facts");
			}
			if ("Aig Combined".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/lob"))) {

				smo.setString("/body/calculateCancellationRefund/input/cancellationDescription",
						smo.getString("/body/calculateCancellationRefund/input/cancellationOption"));
				smo.setString("/body/calculateCancellationRefund/input/cancellationReason", "Others");
				if ("".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/agreedPremiumAmount"))
						|| smo.getString("/body/calculateCancellationRefund/input/agreedPremiumAmount") == null)
					smo.setString("/body/calculateCancellationRefund/input/agreedPremiumAmount", "0");
			}

			if ("Property and Energy".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/lob"))) {
				if ("Others".equalsIgnoreCase(
						smo.getString("/body/calculateCancellationRefund/input/cancellationReason"))) {
					smo.setString("/body/calculateCancellationRefund/input/cancellationDescription",
							smo.getString("/body/calculateCancellationRefund/input/cancellationOption"));
				}
			}

			if ("Liability".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/lob"))) {
				if ("Others".equalsIgnoreCase(
						smo.getString("/body/calculateCancellationRefund/input/cancellationReason"))) {
					smo.setString("/body/calculateCancellationRefund/input/cancellationDescription",
							smo.getString("/body/calculateCancellationRefund/input/cancellationOption"));
				} else {
					smo.setString("/body/calculateCancellationRefund/input/cancellationDescription",
							smo.getString("/body/calculateCancellationRefund/input/remarks"));
				}
			}
			if ("Trade Credit".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/lob"))) {
				if ("".equalsIgnoreCase(smo.getString("/body/calculateCancellationRefund/input/retainMinPrem"))
						|| smo.getString("/body/calculateCancellationRefund/input/retainMinPrem") == null)
					smo.setString("/body/calculateCancellationRefund/input/retainMinPrem", "0");
			}

			Date oldDate = null;
			String formattedDate = null;
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

			oldDate = smo.getDate("/body/calculateCancellationRefund/input/policyStartDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/policyStartDate", formattedDate);
			}

			oldDate = smo.getDate("/body/calculateCancellationRefund/input/endDateOfRequest");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/endDateOfRequest", formattedDate);
			}

			oldDate = smo.getDate("/body/calculateCancellationRefund/input/effectiveDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/effectiveDate", formattedDate);
			}
			/* 
			 SimpleDateFormat getTime = new SimpleDateFormat("HH:mm");
			 Date date = new Date();
			 smo.setString("/body/calculateCancellationRefund/input/effectiveTime","23:59");*/

			/*
			String effectiveTime= smo.getString("/body/calculateCancellationRefund/input/effectiveTime");
			
			smo.setString("/body/calculateCancellationRefund/input/effectiveTime",effectiveTime);
			*/

			oldDate = smo.getDate("/body/calculateCancellationRefund/input/periodFromDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/periodFromDate", formattedDate);
			}

			oldDate = smo.getDate("/body/calculateCancellationRefund/input/periodToDate");
			if (oldDate != null) {
				formattedDate = dateFormat.format(oldDate);
				smo.setString("/context/correlation/periodToDate", formattedDate);
			}

			Date ncbDate = smo.getDate("/body/calculateCancellationRefund/input/ncbReservingEffectiveDate");
			if (ncbDate != null) {
				formattedDate = dateFormat.format(ncbDate);
				smo.setString("/context/correlation/ncbReservingDate", formattedDate);
			}
			String lob = smo.getString("/body/calculateCancellationRefund/input/lob");
			if (lob.equalsIgnoreCase("Health") || lob.equalsIgnoreCase("Personal Accident")
					|| "LTA".equalsIgnoreCase(lob)) {
				smo.setString("/body/calculateCancellationRefund/input/remarks",
						smo.getString("/body/calculateCancellationRefund/input/cancellationReason"));
				smo.setString("/body/calculateCancellationRefund/input/cancellationReason", "");
			}

			out.fire(smo);

		} catch (Exception e) {
			e.printStackTrace();
		} // propagate the service message object to the primitive that is wired to the 'out' terminal
	}
}
