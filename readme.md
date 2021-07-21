# Apple Ports Test

Script that tests for Apple services connectivity including APNS, based on info available in [Use Apple products on enterprise networks](https://support.apple.com/en-us/HT210060) as well as additional items as discovered in the real world. This may also be useful to have available in Self Service, where the results of the test can be logged to Jamf. 

## Current Tests Included

* Apple Push Notification Service
* Device Setup
* Device Management
* Apple School Manager
* Software updates
* App Store
* Content caching
* App notarization
* App validation
* Feedback Assistant
* Apple diagnostics
* Domain Name System resolution
* Certificate validation

## Additional Tests Included but not Specified by Apple

* Apple Loops from audiocontentdownload.apple.com