#!/bin/zsh

# Use Apple products on enterprise networks
# https://support.apple.com/en-us/101555

echo "Starting Apple Network Test!"

# Apple Push Notifications

echo "Testing for Apple Push Notification Service…"
nc -vz 5-courier.push.apple.com 443
nc -vz 5-courier.push.apple.com 2197
nc -vz 5-courier.push.apple.com 5223
echo "Done testing for Apple Push Notification Service!"

## Device Setup

echo "Testing for Device Setup…"
echo "Device activation…"
nc -vz albert.apple.com 443
echo "Internet connectivity validation for networks…"
nc -vz captive.apple.com 80
nc -vz captive.apple.com 443
echo "Operating system configuration…"
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
nc -uvz time-ios.apple.com 123
nc -uvz time.apple.com 123
nc -uvz time-macos.apple.com 123
echo "Done testing for Device Setup!"

## Device Management

echo "Testing for Device Management…"
echo "MDM push notifications…"
nc -vz 5-courier.push.apple.com 443
nc -vz 5-courier.push.apple.com 2197
echo "DEP provisional enrollment…"
nc -vz deviceenrollment.apple.com 443
echo "Device Services (Activation Lock bypass)…"
nc -vz deviceservices-external.apple.com 443
echo "Managed Software Updates…"
nc -vz gdmf.apple.com 443
echo "APNs certificate request portal…"
nc -vz identity.apple.com 443
echo "Enrollment profiles for Automated Device Enrollment…"
nc -vz iprofiles.apple.com 443
echo "Device and account lookup for Automated Device Enrollment…"
nc -vz mdmenrollment.apple.com 443
echo "Managed Apple Account on Shared iPad…"
nc -vz setup.icloud.com 443
echo "MDM operations related to Apps and Books…"
nc -vz vpp.itunes.apple.com 443
echo "Managed device attestation…"
nc -vz data-development.appattest.apple.com 443
echo "Account-driven enrollment service discovery…"
nc -vz axm-servicediscovery.apple.com 443
echo "Done testing for Device Management!"

## Apple Business Manager and Apple School Manager

echo "Testing for Apple Business Manager…"
nc -vz business.apple.com 80
nc -vz business.apple.com 443
echo "Apple School Manager…"
nc -vz school.apple.com 80
nc -vz school.apple.com 443
echo "User lookup service…"
nc -vz ws-ee-maidsvc.icloud.com 80
nc -vz ws-ee-maidsvc.icloud.com 443
echo "Login authentication…"
nc -vz appleid.cdn-apple.com 443
nc -vz idmsa.apple.com 443
echo "Apps and Books content…"
nc -vz buy.itunes.apple.com 80
nc -vz buy.itunes.apple.com 443
echo "ABM API…"
nc -vz api-business.apple.com 443
echo "ASM API…"
nc -vz api-school.apple.com 443
echo "ASM roster service…"
nc -vz ws.school.apple.com 443
echo "Device icons…"
nc -vz statici.icloud.com 443
echo "Done testing for Apple Business Manager and School Manager!"

## Apple Business Essentials

echo "Testing for Apple Business Essentials…"
echo "Device enrollment server…"
nc -vz axm-adm-enroll.apple.com 443
echo "Management server…"
nc -vz axm-adm-mdm.apple.com 443
echo "SCEP certificate server…"
nc -vz axm-adm-scep.apple.com 443
echo "Management console…"
nc -vz axm-app.apple.com 443
echo "Custom package icons…"
nc -vz icons.axm-usercontent-apple.com 443
echo "Done testing for Apple Business Essentials!"

## Classroom and Schoolwork

echo "Testing for Classroom and Schoolwork…"
echo "Device verification…"
nc -vz play.itunes.apple.com 443
echo "Class roster service…"
nc -vz ws-ee-maidsvc.icloud.com 443
nc -vz ws.school.apple.com 443
echo "Handout service…"
nc -vz pg-bootstrap.itunes.apple.com 443
nc -vz cls-iosclient.itunes.apple.com 443
nc -vz cls-ingest.itunes.apple.com 443
echo "Done testing for Classroom and Schoolwork!"

## Software Updates

echo "Testing for Software updates…"
echo "iOS updates…"
nc -vz appldnld.apple.com 80
echo "Rosetta 2 updates…"
nc -vz configuration.apple.com 443
echo "Software update catalogs…"
nc -vz gdmf.apple.com 443
nc -vz gdmf-ados.apple.com 443
nc -vz mesu.apple.com 80
nc -vz mesu.apple.com 443
echo "iOS, tvOS, and macOS updates…"
nc -vz gg.apple.com 80
nc -vz gg.apple.com 443
nc -vz gs.apple.com 80
nc -vz gs.apple.com 443
echo "macOS updates…"
nc -vz ig.apple.com 443
nc -vz skl.apple.com 443
nc -vz swcdn.apple.com 80
nc -vz swdist.apple.com 443
nc -vz swdownload.apple.com 80
nc -vz swdownload.apple.com 443
nc -vz swscan.apple.com 443
echo "macOS Recovery…"
nc -vz oscdn.apple.com 80
nc -vz oscdn.apple.com 443
nc -vz osrecovery.apple.com 80
nc -vz osrecovery.apple.com 443
echo "Software update downloads…"
nc -vz updates-http.cdn-apple.com 80
nc -vz updates.cdn-apple.com 443
echo "Component updates…"
nc -vz gsra.apple.com 443
echo "Attached device installation support…"
nc -vz wkms-public.apple.com 443
nc -vz fcs-keys-pub-prod.cdn-apple.com 443
echo "Done testing for Software updates!"

## App Store

echo "Testing for App Store…"
echo "App Store Catalog…"
nc -vz xp.apple.com 443
echo "Store content such as apps, books, and music…"
nc -vz buy.itunes.apple.com 80
nc -vz buy.itunes.apple.com 443
nc -vz apps.apple.com 443
nc -vz s.mzstatic.com 443
nc -vz store.mzstatic.com 443
nc -vz itunes.apple.com 80
nc -vz itunes.apple.com 443
echo "Enterprise App validation…"
nc -vz ppq.apple.com 443
echo "App notarization…"
nc -vz api.apple-cloudkit.com 443
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
nc -vz xp-cdn.apple.com 443
echo "Content caching locator service…"
nc -vz lcdn-locator.apple.com 443
echo "Content caching client public IP determination…"
nc -vz serverstatus.apple.com 443
echo "Done testing for Content caching!"

## Apple Developer
### App validation

echo "Testing for App validation…"
echo "App validation, Touch ID and Face ID authentication for websites…"
nc -vz data-development.appattest.apple.com 443
echo "Done testing for App validation!"

## Beta updates / Feedback Assistant

echo "Testing for Beta updates and Feedback Assistant…"
echo "Beta software updates…"
nc -vz bpapi.apple.com 443
echo "Feedback Assistant content…"
nc -vz fba.apple.com 443
echo "Feedback Assistant file upload…"
nc -vz cssubmissions.apple.com 443
echo "Done testing for Beta updates and Feedback Assistant!"

## Apple diagnostics

echo "Testing for Apple diagnostics…"
echo "Hardware diagnostic services…"
nc -vz diagassets.apple.com 443
echo "Done testing for Apple diagnostics!"

## Domain Name System resolution

echo "Testing for Domain Name System resolution…"
echo "DNS over HTTPS (DoH)…"
nc -vz doh.dns.apple.com 443
echo "Done testing for Domain Name System resolution!"

## Certificate validation

echo "Testing for Certificate validation…"
nc -vz certs.apple.com 80
nc -vz certs.apple.com 443
nc -vz crl.apple.com 80
nc -vz crl3.digicert.com 80
nc -vz crl4.digicert.com 80
nc -vz ocsp.apple.com 80
nc -vz ocsp.digicert.com 80
nc -vz ocsp2.apple.com 443
nc -vz valid.apple.com 443
echo "Done testing for Certificate validation!"

## Apple Account

echo "Testing for Apple Account…"
echo "Apple Account authentication in Settings…"
nc -vz account.apple.com 443
nc -vz appleid.cdn-apple.com 443
echo "Apple Account authentication…"
nc -vz idmsa.apple.com 443
nc -vz gsa.apple.com 443
echo "Done testing for Apple Account!"

## iCloud

echo "Testing for iCloud…"
echo "iCloud services…"
nc -vz cdn.apple-cloudkit.com 443
nc -vz cdn.apple-livephotoskit.com 443
nc -vz mediaservices.cdn-apple.com 443
nc -vz match.gc.apple.com 443
nc -vz icloud.com 443
nc -vz setup.icloud.apple.com 443
nc -vz cvws.icloud-content.com 443
echo "iWork documents…"
nc -vz exportws.iwork.apple.com 443
echo "iCloud Private Relay…"
nc -vz mask.icloud.com 443
nc -vz mask-h2.icloud.com 443
nc -vz mask-api.icloud.com 443
echo "iCloud connection testing…"
nc -vz probe.icloud.com 443
nc -vz pong.icloud.com 443
echo "iCloud diagnostics…"
nc -vz metrics.icloud.com 443
echo "Done testing for iCloud!"

## Apple Intelligence, Siri, and Search

echo "Testing for Siri and Apple Intelligence…"
echo "Siri and dictation…"
nc -vz guzzoni.apple.com 443
echo "Search services…"
nc -vz smoot.apple.com 443
echo "Private Cloud Compute…"
nc -vz apple-relay.cloudflare.com 443
nc -vz apple-relay.fastly-edge.com 443
echo "Apple Intelligence Extensions…"
nc -vz apple-relay.apple.com 443
echo "Done testing for Siri and Apple Intelligence!"

## Tap to Pay on iPhone

echo "Testing for Apple Pay and Tap to Pay…"
nc -vz pos-device.apple.com 443
nc -vz humb.apple.com 443
nc -vz iphonesubmissions.apple.com 443
echo "Done testing for Apple Pay and Tap to Pay!"

## ID Verifier on iPhone

echo "Testing for ID Verifier…"
nc -vz smp-device-content.apple.com 443
nc -vz idv.cdn-apple.com 443
nc -vz idv-prod1.apple.com 443
echo "Done testing for ID Verifier!"

## Associated Domains

echo "Testing for Associated Domains…"
nc -vz app-site-association.cdn-apple.com 443
nc -vz app-site-association.networking.apple 443
echo "Done testing for Associated Domains!"

## Additional Content

echo "Testing for Additional Content…"
echo "GarageBand downloadable content…"
nc -vz audiocontentdownload.apple.com 80
nc -vz audiocontentdownload.apple.com 443
echo "Xcode downloadable components…"
nc -vz devimages-cdn.apple.com 80
nc -vz devimages-cdn.apple.com 443
nc -vz download.developer.apple.com 80
nc -vz download.developer.apple.com 443
echo "Swift Playgrounds…"
nc -vz playgrounds-assets-cdn.apple.com 443
nc -vz playgrounds-cdn.apple.com 443
echo "Apple TV screen savers…"
nc -vz sylvan.apple.com 80
nc -vz sylvan.apple.com 443
echo "Done testing for Additional Content!"

echo "All tests completed!"