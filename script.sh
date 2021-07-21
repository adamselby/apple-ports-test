#!/bin/zsh
# https://support.apple.com/en-us/HT210060

echo "Starting Apple Ports test!"

echo "Testing for Apple Push Notification Service…"
nc -vz 5-courier.push.apple.com 443
nc -vz 5-courier.push.apple.com 5223

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
echo "BridgeOS Updates…"
nc -vz tbsc.apple.com 443
echo "System date and time…"
# nc -vz time.apple.com 443
# nc -vz time-macos.apple.com 443
echo "Done testing for Device Setup!"

echo "Testing for Device Management…"
echo "Push notifications…"
nc -vz gateway.push.apple.com 2195
nc -vz gateway.sandbox.push.apple.com 2195
nc -vz feedback.push.apple.com 2195
nc -vz gateway.push.apple.com 2196
nc -vz gateway.sandbox.push.apple.com 2196
nc -vz feedback.push.apple.com 2196
echo "Managed Software Updates…"
nc -vz gdmf.apple.com 443
echo "DEP provisional enrollment…"
nc -vz deviceenrollment.apple.com 443
echo "Device Services…"
nc -vz deviceservices-external.apple.com 443
echo "APNs certificate request portal…"
nc -vz identity.apple.com 443
echo "Enrollment profiles for Apple School Manager…"
nc -vz iprofiles.apple.com 443
echo "Device and account lookup for Apple School Manager…"
nc -vz mdmenrollment.apple.com 443
echo "Managed Apple ID on Shared iPad…"
nc -vz setup.icloud.com 443
echo "MDM operations related to Apps and Books licensing…"
nc -vz vpp.itunes.apple.com 443
echo "Done testing for Device Management!"

echo "Testing for Apple School Manager…"
echo "Schoolwork Roster service…"
nc -vz school.apple.com 80
nc -vz school.apple.com 443
nc -vz ws-ee-maidsvc.icloud.com 80
nc -vz ws-ee-maidsvc.icloud.com 443
echo "Software Update Validation…"
nc -vz isu.apple.com 80
nc -vz isu.apple.com 443
echo "Done testing for Apple School Manager!"

echo "Testing for Software updates…"
echo "Software updates…"
nc -vz appldnld.apple.com 80
echo "Rosetta 2 updates…"
nc -vz configuration.apple.com 443
echo "macOS major updates…"
nc -vz gg.apple.com 80
nc -vz gg.apple.com 443
nc -vz gnf-mdn.apple.com 443
nc -vz gnf-mr.apple.com 443
nc -vz gs.apple.com 80
nc -vz gs.apple.com 443
nc -vz ig.apple.com 443
nc -vz skl.apple.com 443
nc -vz swcdn.apple.com 80
nc -vz swdist.apple.com 443
nc -vz swdownload.apple.com 80
nc -vz swdownload.apple.com 443
nc -vz swpost.apple.com 80
nc -vz swscan.apple.com 443
echo "Software update catalogs…"
nc -vz mesu.apple.com 80
nc -vz mesu.apple.com 443
echo "Now Serving Service…"
nc -vz ns.itunes.apple.com 443
echo "macOS Recovery…"
nc -vz oscdn.apple.com 80
nc -vz oscdn.apple.com 443
nc -vz osrecovery.apple.com 80
nc -vz osrecovery.apple.com 443
echo "Software Updates CDN…"
nc -vz updates-http.cdn-apple.com 80
nc -vz updates.cdn-apple.com 443
echo "App Store Catalog Updates…"
nc -vz xp.apple.com 443
echo "Apple Loops…"
nc -vz audiocontentdownload.apple.com 80
echo "Done testing for Software updates!"

echo "Testing for App Store…"
echo "Store content such as apps, books, and music…"
nc -vz itunes.apple.com 80
nc -vz itunes.apple.com 443
nc -vz apps.apple.com 443
nc -vz mzstatic.com 443
nc -vz a3.mzstatic.com 443
nc -vz itunes.apple.com 80
nc -vz itunes.apple.com 443
echo "Enterprise App validation…"
nc -vz ppq.apple.com 443
echo "Done testing for App Store!"

echo "Testing for Content caching…"
echo "Content caching server registration…"
nc -vz lcdn-registration.apple.com 443
echo "Content caching client public IP determination…"
nc -vz serverstatus.apple.com 443
echo "Done testing for Content caching!"

echo "Testing for App notarization…"
echo "Ticket delivery…"
# nc -vz 17.248.128.0/18 443
# nc -vz 17.250.64.0/18 443
# nc -vz 17.248.192.0/19 443
#nc -vz 17.250.64.1 443
#nc -vz 17.248.128.1 443
#nc -vz 17.248.191.1 443
#nc -vz 17.248.223.1 443
echo "Done testing for App notarization!"

echo "Testing for App validation…"
echo "App validation, Touch ID and Face ID authentication for websites…"
nc -vz appattest.apple.com 443
echo "Done testing for App validation!"

echo "Testing for Feedback Assistant…"
echo "Used by Feedback Assistant to file and view feedback…"
nc -vz fba.apple.com 443
echo "Used by Feedback Assistant to upload files…"
nc -vz cssubmissions.apple.com 443
echo "Provides beta software updates…"
nc -vz bpapi.apple.com 443
echo "Done testing for Feedback Assistant!"

echo "Testing for Apple diagnostics…"
echo "Used by Apple devices to help detect possible hardware issues…"
nc -vz diagassets.apple.com 443
echo "Done testing for Apple diagnostics!"

echo "Testing for Domain Name System resolution…"
echo "Used for DNS over HTTPS (DoH)…"
nc -vz doh.dns.apple.com 443
echo "Done testing for Domain Name System resolution!"

echo "Testing for Certificate validation…"
echo "Certificate validation…"
nc -vz crl.apple.com 80
echo "Certificate validation…"
nc -vz crl.entrust.net 80
echo "Certificate validation…"
nc -vz crl3.digicert.com 80
echo "Certificate validation…"
nc -vz crl4.digicert.com 80
echo "Certificate validation…"
nc -vz ocsp.apple.com 80
echo "Certificate validation…"
nc -vz ocsp.digicert.com 80
echo "Certificate validation…"
nc -vz ocsp.entrust.net 80
echo "Certificate validation…"
nc -vz ocsp.verisign.net 80
echo "Certificate validation…"
nc -vz valid.apple.com 80
echo "Done testing for Certificate validation!"

echo "All tests completed!"