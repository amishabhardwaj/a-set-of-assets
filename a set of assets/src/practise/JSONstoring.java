package practise;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JSONstoring {

//	static Connection conn = null;

	public JSONstoring() {
//		conn = DBConnection.getConnection();
	}

	public static void main(String args[]) {

		Connection conn = null;
		try {
			DriverManager.registerDriver(new org.apache.derby.jdbc.ClientDriver());

			conn = DriverManager.getConnection("jdbc:derby://localhost:1527/TestABDB");
			System.out.println("Connection established.");

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		String query = "insert into myplayers values (?, ?, ?, ?, ?, ? )";
		// Creating a JSONParser object
		JSONParser jsonParser = new JSONParser();
		try {
			// Parsing the contents of the JSON file
			JSONObject jsonObject = (JSONObject) jsonParser
					.parse(new FileReader("D:/HSBC/WS1/a set of assets/src/practise/output.json"));

			// Retrieving the array
//			System.out.println(jsonObject.toString());
//			System.out.println("Contents of the JSON are: ");
//			System.out.println("ID: " + jsonObject.get("ID"));
//			System.out.println("First name: " + jsonObject.get("First_Name"));
//			System.out.println("Last name: " + jsonObject.get("Last_Name"));
//			System.out.println("Date of birth: " + jsonObject.get("Date_Of_Birth"));
//			System.out.println("Place of birth: " + jsonObject.get("Place_Of_Birth"));

			JSONArray jsonArray = (JSONArray) jsonObject.get("players_data");
//			System.out.println(jsonArray);

			// Insert a row into the MyPlayers table
			PreparedStatement pstmt = conn.prepareStatement(query);
			for (Object object : jsonArray) {
				JSONObject record = (JSONObject) object;
				int id = Integer.parseInt((String) record.get("ID"));
				String first_name = (String) record.get("First_Name");
				String last_name = (String) record.get("Last_Name");
				String date = (String) record.get("Date_Of_Birth");
				long date_of_birth = Date.valueOf(date).getTime();
				String place_of_birth = (String) record.get("Place_Of_Birth");
				String country = (String) record.get("Country");

				pstmt.setInt(1, id);
				pstmt.setString(2, first_name);
				pstmt.setString(3, last_name);
				pstmt.setDate(4, new Date(date_of_birth));
				pstmt.setString(5, place_of_birth);
				pstmt.setString(6, country);
				pstmt.executeUpdate();
			}
			System.out.println("Records inserted.....");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}