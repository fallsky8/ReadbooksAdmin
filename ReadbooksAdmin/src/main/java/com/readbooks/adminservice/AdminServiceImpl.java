package com.readbooks.adminservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.admindao.AdminDAO;
import com.readbooks.adminvo.AdminVO;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO admindao;

	@Override
	public int login(AdminVO admin) {
		int result = 0;
		result = admindao.login(admin);
		return result;
	}

}
