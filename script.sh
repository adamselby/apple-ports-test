#!/bin/zsh

# Use Apple products on enterprise networks
# https://support.apple.com/en-us/HT210060

echo "Starting Apple Ports test!"

# Apple Push Notifications

echo "Testing for Apple Push Notification Service…"
nc -vz 5-courier.push.apple.com 443
nc -vz 5-courier.push.apple.com 5223

## Device Setup

echo "Testing for Device Setup…"
echo "Device activation…"
nc -vz albert.apple.com 443
echo "Internet connectivity validation for networks…"
nc -vz captive.apple.com 80
nc -vz captive.apple.com 443
echo "Internet Recovery…"
nc -vz gs.apple.com 443
echo "Device Enrollment…"
nc -vz humb.apple.com 443
echo "Static IP Lookup Service…"
nc -vz static.ips.apple.com 80
nc -vz static.ips.apple.com 443
echo "eSIM activation…"
nc -vz sq-device.apple.com 443
echo "BridgeOS Updates…"
nc -vz tbsc.apple.com 443
echo "System date and time…"
nc -uvz time-ios.apple.com 80
nc -uvz time.apple.com 123
nc -uvz time-macos.apple.com 123
echo "Done testing for Device Setup!"

## Device Management

echo "Testing for Device Management…"
echo "Push notifications…"
nc -vz gateway.push.apple.com 2195
nc -vz gateway.sandbox.push.apple.com 2195
nc -vz feedback.push.apple.com 2195
nc -vz gateway.push.apple.com 2196
nc -vz gateway.sandbox.push.apple.com 2196
nc -vz feedback.push.apple.com 2196
echo "DEP provisional enrollment…"
nc -vz deviceenrollment.apple.com 443
echo "Device Services…"
nc -vz deviceservices-external.apple.com 443
echo "Managed Software Updates…"
nc -vz gdmf.apple.com 443
echo "APNs certificate request portal…"
nc -vz identity.apple.com 443
echo "Enrollment profiles for Automated Device Enrollment…"
nc -vz iprofiles.apple.com 443
echo "Device and account lookup for Automated Device Enrollment…"
nc -vz mdmenrollment.apple.com 443
echo "Managed Apple ID on Shared iPad…"
nc -vz setup.icloud.com 443
echo "MDM operations related to Apps and Books…"
nc -vz vpp.itunes.apple.com 443
echo "Done testing for Device Management!"

## Apple School Manager and Apple Business Manager

echo "Testing for Apple Manager…"
echo "Apple Business Manager…"
nc -vz business.apple.com 80
nc -vz business.apple.com 443
echo "Apple School Manager…"
nc -vz school.apple.com 80
nc -vz school.apple.com 443
echo "Schoolwork Roster service…"
nc -vz ws-ee-maidsvc.icloud.com 80
nc -vz ws-ee-maidsvc.icloud.com 443
echo "Done testing for Apple Manager!"

## Software Updates
### macOS, iOS, and tvOS

echo "Testing for Software updates…"
echo "iOS updates…"
nc -vz appldnld.apple.com 80
echo "Rosetta 2 updates…"
nc -vz configuration.apple.com 443
echo "Software update catalogs…"
nc -vz gdmf.apple.com 443
nc -vz mesu.apple.com 80
nc -vz mesu.apple.com 443
echo "iOS, tvOS, and macOS updates…"
nc -vz gg.apple.com 80
nc -vz gg.apple.com 443
nc -vz gs.apple.com 80
nc -vz gs.apple.com 443
echo "macOS updates…"
nc -vz gnf-mdn.apple.com 443
nc -vz gnf-mr.apple.com 443
nc -vz ig.apple.com 443
nc -vz skl.apple.com 443
nc -vz swcdn.apple.com 80
nc -vz swdist.apple.com 443
nc -vz swdownload.apple.com 80
nc -vz swdownload.apple.com 443
nc -vz swpost.apple.com 80
nc -vz swscan.apple.com 443
echo "Now Serving Service…"
nc -vz ns.itunes.apple.com 443
echo "macOS Recovery…"
nc -vz oscdn.apple.com 80
nc -vz oscdn.apple.com 443
nc -vz osrecovery.apple.com 80
nc -vz osrecovery.apple.com 443
echo "Software update downloads…"
nc -vz updates-http.cdn-apple.com 80
nc -vz updates.cdn-apple.com 443
echo "Done testing for Software updates!"

## Software Updates
### App Store

echo "Testing for App Store…"
echo "App Store Catalog Updates…"
nc -vz xp.apple.com 443
echo "Store content such as apps, books, and music…"
nc -vz buy.itunes.apple.com 80
nc -vz buy.itunes.apple.com 443
nc -vz apps.apple.com 443
nc -vz accertify.mzstatic.com 443
nc -vz itc.mzstatic.com 443
nc -vz metrics.mzstatic.com 443
nc -vz s.mzstatic.com 443
nc -vz s1.mzstatic.com 443
nc -vz s2.mzstatic.com 443
nc -vz s3.mzstatic.com 443
nc -vz s4.mzstatic.com 443
nc -vz s5.mzstatic.com 443
nc -vz store.mzstatic.com 443
nc -vz a1.mzstatic.com 443
nc -vz a2.mzstatic.com 443
nc -vz a3.mzstatic.com 443
nc -vz a4.mzstatic.com 443
nc -vz a5.mzstatic.com 443
nc -vz r.mzstatic.com 443
nc -vz itunes.apple.com 80
nc -vz itunes.apple.com 443
echo "Enterprise App validation…"
nc -vz ppq.apple.com 443
echo "Done testing for App Store!"

## Carrier updates

echo "Testing for Carrier updates…"
echo "Cellular carrier bundle updates…"
nc -vz appldnld.apple.com 80
nc -vz appldnld.apple.com.edgesuite.net 80
nc -vz itunes.com 80
nc -vz itunes.com 443
echo "Carrier bundle update discovery…"
nc -vz updates-http.cdn-apple.com 80
nc -vz updates.cdn-apple.com 443
echo "Done testing for Carrier updates!"

## Content caching

echo "Testing for Content caching…"
echo "Content caching server registration…"
nc -vz lcdn-registration.apple.com 443
echo "Content caching server configuration…"
nc -vz suconfig.apple.com 80
echo "Content caching server reporting…"
nc -vz xp-cdn.apple.com 80
echo "Content caching locator service…"
nc -vz lcdn-locator.apple.com 443
echo "Content caching client public IP determination…"
nc -vz serverstatus.apple.com 443
echo "Done testing for Content caching!"

## Apple Developer
### App notarization

# echo "Testing for App notarization…"
# echo "Ticket delivery…"
# 17.248.128.0/18 443
# 17.250.64.0/18 443
# 17.248.192.0/19 443
# echo "Done testing for App notarization!"

## Apple Developer
### App validation

echo "Testing for App validation…"
echo "App validation, Touch ID and Face ID authentication for websites…"
nc -vz data-development.appattest.apple.com 443
echo "Done testing for App validation!"

### Feedback Assistant

echo "Testing for Feedback Assistant…"
echo "Beta software updates…"
nc -vz bpapi.apple.com 443
echo "Feedback Assistant feedback content…"
nc -vz fba.apple.com 443
echo "Feedback Assistant file upload…"
nc -vz cssubmissions.apple.com 443
echo "Done testing for Feedback Assistant!"

### Apple diagnostics

echo "Testing for Apple diagnostics…"
echo "Hardware diagnostic services…"
nc -vz diagassets.apple.com 443
echo "Done testing for Apple diagnostics!"

### Domain Name System resolution

echo "Testing for Domain Name System resolution…"
echo "DNS over HTTPS (DoH)…"
nc -vz doh.dns.apple.com 443
echo "Done testing for Domain Name System resolution!"

### Certificate validation

echo "Testing for Certificate validation…"
echo "Certificate validation…"
nc -vz certs.apple.com 80
nc -vz certs.apple.com 443
nc -vz crl.apple.com 80
nc -vz crl.entrust.net 80
nc -vz crl3.digicert.com 80
nc -vz crl4.digicert.com 80
nc -vz ocsp.apple.com 80
nc -vz ocsp.digicert.com 80
nc -vz ocsp.entrust.net 80
nc -vz ocsp2.apple.com 80
nc -vz valid.apple.com 80
# echo "Certificate validation in China…"
# nc -vz ocsp.digicert.cn 80
echo "Done testing for Certificate validation!"

### Apple ID

echo "Testing for Apple ID…"
echo "Apple ID authentication in Settings and System Preferences…"
nc -vz appleid.apple.com 443
echo "Apple ID authentication in Settings and System Preferences…"
nc -vz appleid.cdn-apple.com 443
echo "Apple ID authentication…"
nc -vz idmsa.apple.com 443
echo "Apple ID authentication…"
nc -vz gsa.apple.com 443
echo "Done testing for Apple ID!"

### iCloud

echo "Testing for iCloud…"
echo "iCloud services…"
nc -vz cdn.apple-cloudkit.com 443
nc -vz cdn.apple-livephotoskit.com 443
nc -vz mediaservices.cdn-apple.com 443
nc -vz match.gc.apple.com 443
nc -vz icloud.com 443
nc -vz setup.icloud.apple.com 443
nc -vz cvws.icloud-content.com 443
# echo "iCloud services in China…"
# nc -vz apzones.com 443
# nc -vz icloud.com.cn 443
echo "iWork documents"
nc -vz exportws.iwork.apple.com 443
echo "Done testing for iCloud!"

### Additional Content

echo "Testing for Additional Content…"
echo "GarageBand/Logic downloadable content…"
nc -vz audiocontentdownload.apple.com 80
nc -vz audiocontentdownload.apple.com 443
echo "Xcode downloadable components…"
nc -vz devimages-cdn.apple.com 80
nc -vz devimages-cdn.apple.com 443
nc -vz download.developer.apple.com 80
nc -vz download.developer.apple.com 443
echo "Swift Playgrounds…"
nc -vz playgrounds-assets-cdn.apple.com 443
nc -vz playgrounds-assets-cdn.apple.com 443
nc -vz playgrounds-cdn.apple.com 443
nc -vz playgrounds-cdn.apple.com 443
echo "Apple TV screen savers…"
nc -vz sylvan.apple.com 80
nc -vz sylvan.apple.com 443
echo "Done testing for Additional Content!"

echo "All tests completed!"
