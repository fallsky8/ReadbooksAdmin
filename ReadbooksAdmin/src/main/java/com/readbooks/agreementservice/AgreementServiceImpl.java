package com.readbooks.agreementservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.agreementdao.AgreementDAO;
import com.readbooks.agreementvo.AgreementVO;

@Service
@Transactional
public class AgreementServiceImpl implements AgreementService {

	@Autowired
	private AgreementDAO agreementdao;

	

	@Override
	public int AgreementUpdate(AgreementVO agreement) {
		int result = 0;
		result = agreementdao.AgreementUpdate(agreement);
		return result;
	}



	@Override
	public AgreementVO AgreementSelect(AgreementVO agreement) {
		AgreementVO agreementlist= new AgreementVO();
		agreementlist = agreementdao.AgreementSelect(agreement);
		return agreementlist;
	}
}
