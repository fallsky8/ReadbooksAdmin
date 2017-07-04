package com.readbooks.agreementdao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.agreementvo.AgreementVO;

@Repository
@Transactional
public class AgreementDAOImpl implements AgreementDAO {

	@Autowired
	private SqlSession session;

	

	@Override
	public int AgreementUpdate(AgreementVO agreement) {
		return session.update("agreementupdate", agreement);
	}



	@Override
	public AgreementVO AgreementSelect(AgreementVO agreement) {
		return session.selectOne("agreementlist", agreement);
	}

	
}