package ngo.com.factory.dao;

import ngo.com.dao.DonationDao;
import ngo.com.dao.UserDao;
import ngo.com.dao.impl.DonationDaoOracleImpl;
import ngo.com.dao.impl.UserDaoImplOracle;

public final class DaoFactory {

	public DaoFactory() {
		
	}
	
	private static DonationDao donationDao=null;
	public static DonationDao getDonationDao() {
		if(donationDao==null){
			//userDao  =new UserDaoImpFile();
			donationDao  =new DonationDaoOracleImpl();
		}
		return donationDao;
	}
	
	private static UserDao userDao=null;
	public static UserDao getUserDao() {
		if(userDao==null){
			userDao  =new UserDaoImplOracle();
		}
		return userDao;
	}

}
