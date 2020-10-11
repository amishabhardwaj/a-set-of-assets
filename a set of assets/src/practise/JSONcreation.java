package practise;

import java.io.FileWriter;
import java.io.IOException;
import org.json.simple.JSONObject;

public class JSONcreation {
	public static void main(String args[]) {
		// Creating a JSONObject object
		JSONObject jsonObject = new JSONObject();
		// Inserting key-value pairs into the json object
		jsonObject.put("ID", "1");
		jsonObject.put("First_Name", "Shikhar");
		jsonObject.put("Last_Name", "Dhawan");
		jsonObject.put("Date_Of_Birth", "1981-12-05");
		jsonObject.put("Place_Of_Birth", "Delhi");
		jsonObject.put("Country", "India");
		try {
			FileWriter file = new FileWriter("D:/HSBC/WS1/a set of assets/src/practise/output.json");
			file.write(jsonObject.toJSONString());
			file.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("JSON file created: " + jsonObject);
	}
}
