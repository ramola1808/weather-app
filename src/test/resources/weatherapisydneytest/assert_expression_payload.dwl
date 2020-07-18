%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "lastName": "Smith",
  "name": "John",
  "timeZone": "AEST",
  "offSet": "+10:00",
  "fullName": "John Smith",
  "temperatureCelcius": 12.3,
  "dateTime": "2020-07-18T05:00:00",
  "city": "Sydney",
  "location": "-33.87, 151.21"
})