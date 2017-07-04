package com.readbooks.agreementdao;

import com.readbooks.agreementvo.AgreementVO;

public interface AgreementDAO {

	public int AgreementUpdate(AgreementVO agreement);

	public AgreementVO AgreementSelect(AgreementVO agreement);

}
