#!/bin/zsh

# Use Apple products on enterprise networks
# https://support.apple.com/en-us/HT210060

echo "Starting Apple Ports test!"

# Apple Push Notifications

echo "Testing for basic Apple Push Notification Service connectivity…"
nc -vz 5-courier.push.apple.com 443
nc -vz 5-courier.push.apple.com 5223

## Device Setup

echo "Testing for Device Setup…"
echo "Device activation…"
nc -vz albert.apple.com 443
echo "Internet connectivity validation…"
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
echo "bridgeOS Updates…"
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
echo "Managed Software Updates Lookup Service…"
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
echo "Login authentication…"
nc -vz appleid.cdn-apple.com 443
nc -vz idmsa.apple.com 443
echo "Apps and Books…"
nc -vz api.ent.apple.com 443
nc -vz api.edu.apple.com 443
echo "Device icons…"
nc -vz statici.icloud.com 443
echo "Fonts for certain languages…"
nc -vz www.apple.com 443
echo "SFTP uploads…"
nc -vz upload.appleschoolcontent.com 22
echo "User lookup service…"
nc -vz ws-ee-maidsvc.icloud.com 80
nc -vz ws-ee-maidsvc.icloud.com 443
echo "Done testing for Apple Manager!"

## Apple Business Essentials device management

echo "Testing for Apple Business Essentials…"
echo "ABE DEP server…"
nc -vz axm-adm-enroll.apple.com 443
echo "ABE MDM server…"
nc -vz axm-adm-mdm.apple.com 443
echo "ABE SCEP server…"
nc -vz axm-adm-scep.apple.com 443
echo "Manage Apps and Devices…"
nc -vz axm-app.apple.com 443
echo "Managed Lost Mode…"
nc -vz api.apple-mapkit.com 443
echo "Custom Package icons…"
nc -vz icons.axm-usercontent-apple.com 443
echo "Done testing for Apple Business Essentials!"

## Classroom and Schoolwork

echo "Testing for Classroom and Schoolwork…"
echo "Classroom and Schoolwork device verification…"
nc -vz s.mzstatic.com 443
nc -vz play.itunes.apple.com 443
echo "Classroom and Schoolwork class roster service…"
nc -vz ws-ee-maidsvc.icloud.com 443
nc -vz ws.school.apple.com 443
echo "Schoolwork handout service…"
nc -vz pg-bootstrap.itunes.apple.com 443
nc -vz cls-iosclient.itunes.apple.com 443
nc -vz cls-ingest.itunes.apple.com 443
echo "Done testing for Classroom and Schoolwork!"

## Software Updates
### macOS, iOS, tvOS, and watchOS

echo "Testing for Software updates…"
echo "iOS and watchOS updates…"
nc -vz appldnld.apple.com 80
echo "Rosetta updates…"
nc -vz configuration.apple.com 443
echo "Software update catalogs…"
nc -vz gdmf.apple.com 443
nc -vz mesu.apple.com 80
nc -vz mesu.apple.com 443
echo "iOS, tvOS, watchOS, and macOS updates…"
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
nc -vz swscan.apple.com 443
echo "Apple Now Serving Service…"
nc -vz ns.itunes.apple.com 443
echo "macOS Recovery…"
nc -vz oscdn.apple.com 80
nc -vz oscdn.apple.com 443
nc -vz osrecovery.apple.com 80
nc -vz osrecovery.apple.com 443
echo "Software update downloads…"
nc -vz updates-http.cdn-apple.com 80
nc -vz updates.cdn-apple.com 443
echo "XProtect and XProtectRemediator updates and App Store telemetry…"
nc -vz xp.apple.com 443
echo "Done testing for Software updates!"

## Software Updates
### App Store

echo "Testing for App Store…"
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
echo "Carrier bundle update discovery…"
nc -vz itunes.com 80
nc -vz itunes.com 443
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
### App features

echo "Testing for App features…"
echo "App notarization…"
nc -vz api.apple-cloudkit.com 443
echo "App validation, Touch ID and Face ID authentication for websites…"
nc -vz data-development.appattest.apple.com 443
echo "Done testing for App features!"

### Beta updates and Feedback Assistant

echo "Testing for Beta updates and Feedback Assistant…"
echo "Beta update enrollment…"
nc -vz bpapi.apple.com 443
echo "Feedback Assistant file upload…"
nc -vz cssubmissions.apple.com 443
echo "Feedback Assistant file upload content…"
nc -vz fba.apple.com 443
echo "Done testing for Beta updates!"

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
echo "Apple ID authentication in Settings and System Settings…"
nc -vz appleid.apple.com 443
echo "Apple ID authentication in Settings and System Settings…"
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
echo "iWork documents…"
nc -vz exportws.iwork.apple.com 443
echo "iCloud Private Relay…"
nc -vz mask.icloud.com 443
nc -vz mask-h2.icloud.com 443
nc -vz mask-api.icloud.com 443
echo "Done testing for iCloud!"

### Apple Intelligence, Siri, and Search

echo "Testing for Apple Intelligence, Siri, and Search…"
echo "Siri and dictation requests…"
nc -vz guzzoni.apple.com 443
echo "Search services including Spotlight…"
nc -vz api.smoot.apple.com 443
echo "Private Cloud Compute…"
nc -vz apple-relay.cloudflare.com 443
nc -vz apple-relay.fastly-edge.com 443
nc -vz cp4.cloudflare.com 443
echo "Done testing for Apple Intelligence, Siri, and Search!"

### Apple Pay

echo "Testing for Apple Pay…"
echo "Tap to Pay on iPhone…"
nc -vz pos-device.apple.com 443
echo "Tap to Pay on iPhone setup…"
nc -vz humb.apple.com 443
echo "Tap to Pay analytics sharing…"
nc -vz phonesubmissions.apple.com 443
echo "Done testing for Apple Pay!"

### ID Verifier on iPhone

echo "Testing for ID Verifier on iPhone…"
echo "ID Verifier on iPhone…"
nc -vz smp-device-content.apple.com 443
nc -vz idv.cdn-apple.com 443
nc -vz idv-prod1.apple.com 443
nc -vz humb.apple.com 443
echo "Done testing for ID Verifier on iPhone!"

### Associated Domains

echo "Testing for Associated Domains…"
echo "Associated domains for universal links…"
nc -vz app-site-association.cdn-apple.com 443
nc -vz app-site-association.networking.apple 443
echo "Done testing for Associated Domains!"

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
echo "Aerial screen savers and wallpapers…"
nc -vz sylvan.apple.com 80
nc -vz sylvan.apple.com 443
echo "Voice Control assets"
nc -vz gateway.icloud.com 443
echo "Done testing for Additional Content!"

echo "All tests completed!"
