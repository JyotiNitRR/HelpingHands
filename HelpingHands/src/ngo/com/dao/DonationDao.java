package ngo.com.dao;

import java.util.List;

import ngo.com.bo.Donation;

public interface DonationDao {
	//Add Donations
	public abstract boolean addDonation(Donation newDonation);
	
	//get all donations 
	public abstract List<Donation> getAllDonations();
}
