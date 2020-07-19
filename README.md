                                                        Steps to run and deploy the weather-app project
                                              *********************************************************************
a. Deploying on local machine and run in AnyPoint Studio
b. CloudHub deployment


a. Steps to import the project in AnyPoint Studio from GitHub:
**************************************************************
1. Go to Github and open "https://github.com/ramola1808/weather-app".
2. Download the zip file of the source code.
3. Unzip the above zip file in any location of local machine. Eg: D:\\User\Github Code
4. Go to AnyPoint Studio and Import the unzipped file in Step 3.
5. AnyPoint Studio --> Import --> AnyPoint Studio from File System --> Browse to the location (D:\\User\Github Code) --> Import.
6. The project gets imported as a Mule application.


Steps to run the project in AnyPoint Studio:
*********************************************
1. This project can be run in different environments like dev, st and uat.
2. The current environment selected is dev. 
3. To change the environment from dev to st or uat:
	a. Go to global.xml file, Line no 25, change the value of dev
	b. Also VM argument can be given when running the project as -Denv=st or -Denv=uat
4. Comment out Line No 37 in global.xml file for API ID or give the VM argument in Run configuration as -Danypoint.platform.gatekeeper=disabled
5. Right click on the project --> Run As --> Mule application
	or Right click on the project --> Run As --> Run configurations --> VM arguments --> -Denv=st -Danypoint.platform.gatekeeper=disabled
6. Go to Postman after the project is deployed in AnyPoint Studio and give the below:
7. URL: http://weather-service.us-e2.cloudhub.io/getWeather
   Method: POST
   Body: 
{
 	 	"Header": ["name", "lastName", "dateTime", "city", "country" ],
 		 "Items":   ["William", "George", "17072020T1900Z", "Melbourne", "Australia"]
}
Authorization: 
•	Type: 		Basic Auth
•	Username: 	muleadminuser
•	Password:  	muleadminpassword

Headers:
•	Content-Type: 	application/json
•	client_id:	9062cd74406f410da348699a9abdfdbb
•	client_secret:	5bc6a894CD284C4494472661557789e7

8. Click on Send.

9. A response is got as below:
{
  		"lastName": 		"George",
 		 "name": 		"William",
  		"timeZone": 		"AEST",
  		"offSet": 		"+10:00",
  		"fullName": 		"William George",
  		"temperatureCelcius": 	14.28,
  		"dateTime": 		"2020-07-19T05:00:00",
  		"city": 			"Melbourne",
  		"location": 		"-37.81, 144.96"
}


**************************************
    Non-Functional Requirements:
**************************************

• Best coding practices
************************
1.	Naming conventions is followed.
2.	Properties file is used to store values rather than hardcoding it in the code.
3.	Secure Properties file is used to secure data.

• Scalability
**************
1.	The deployment is made multiple workers for Horizontal scaling.
2.	The vCores size is increased for vertical scaling.


• Reusability
**************
1.	The mapping of static data country code and country name is stored in a csv file.
2.	Functions created in Dataweave to avoid code repetition.
3.	RAML fragment of Type is defined for request and Response.


• Automation
*************
1.	The CloudHub deployment is automated by following CI/CD through Jenkins.
2.	A pipeline of Jobs is created is to automate Code checkout from GitHub, Build the source code and Deploy the application on CloudHub.


• Security
***********
1.	HTTP Basic Auth policy is applied on the API.
2.	Client ID enforcement policy is applied on the API.


• Versioning
*************
1.	Two versions of the same API is made available on the Developer portal and Exchange.
2.	The first instance mocks the actual service call and expects HTTP basic Auth Policy
3.	The second instance calls the actual API service and expects Client ID enforcement policy on top of HTTP Basic Auth policy.
