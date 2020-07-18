%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "lastName": "Smith",
  "name": "John",
  "timeZone": "AEST",
  "offSet": "+10:00",
  "fullName": "John Smith",
  "temperatureCelcius": 6.68,
  "dateTime": "2020-07-19T05:00:00",
  "city": "Melbourne",
  "location": "-37.81, 144.96"
})