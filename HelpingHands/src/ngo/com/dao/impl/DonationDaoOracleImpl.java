package ngo.com.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ngo.com.bo.Donation;
import ngo.com.dao.DonationDao;
import ngo.com.util.database.OracleDatabaseConnection;

public class DonationDaoOracleImpl implements DonationDao {

	@Override
	public boolean addDonation(Donation newDonation) {

		Connection con = null;
		PreparedStatement pstmt = null;
		boolean isAdded = false;
		try {
			con = OracleDatabaseConnection.getConnection();
			String sql = "insert into NGO_donation(id, category, dob, firstName, lastName, email, phone_number, address, item_details, whencreated) values(donationId_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, newDonation.getCategory());
			pstmt.setDate(2, new Date(newDonation.getDob().getTime()));
			pstmt.setString(3, newDonation.getFirstName());
			pstmt.setString(4, newDonation.getLastName());
			pstmt.setString(5, newDonation.getEmail());
			pstmt.setLong(6, newDonation.getPhoneNumber());
			pstmt.setString(7, newDonation.getAddress());
			pstmt.setString(8, newDonation.getItemDetails());

			if (pstmt.executeUpdate() == 1) {
				isAdded = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				OracleDatabaseConnection.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isAdded;
	}
	
	@Override
	public List<Donation> getAllDonations() {
		
		List<Donation> list = new ArrayList<Donation>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = OracleDatabaseConnection.getConnection();
			String sql = "select * from NGO_donation";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				long id = rs.getInt("id");
				String category = rs.getString("category");
				Date dob = rs.getDate("dob");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String email = rs.getString("email");
				long phoneNumber = rs.getLong("phone_number");
				String address = rs.getString("address");
				String item_details = rs.getString("item_details");
				Date created_at = rs.getDate("whencreated");
				
				Donation donation = new Donation(id, category, dob, firstName, lastName, email, phoneNumber, address, item_details, created_at);
				list.add(donation);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				OracleDatabaseConnection.closeConnection(con);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}


}
