#PowerShell Script for adding PTR
#
Import-CSV c:\newPTR.csv | %{
Add-DNSServerResourceRecordPTR -ZoneName $_."zoneName" -Name $_."octet"-PTRDomainName $_."hostName"
}