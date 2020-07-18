%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "lastName": "Smith",
  "name": "John",
  "timeZone": "GST",
  "offSet": "+04:00",
  "fullName": "John Smith",
  "temperatureCelcius": 43,
  "dateTime": "2020-07-18T23:00:00",
  "city": "Dubai",
  "location": "25.26, 55.3"
})