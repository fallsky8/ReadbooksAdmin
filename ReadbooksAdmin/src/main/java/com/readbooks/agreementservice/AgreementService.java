package com.readbooks.agreementservice;

import com.readbooks.agreementvo.AgreementVO;

public interface AgreementService {


	public int AgreementUpdate(AgreementVO agreement);

	public AgreementVO AgreementSelect(AgreementVO agreement);


}
