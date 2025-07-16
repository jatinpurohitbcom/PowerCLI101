#Before You Begin
#Check PowerShell Version
$PSVersionTable.PSVersion

#Check the VCF 9.0 Realease note about deprecation on Windows PowerShell
#https://techdocs.broadcom.com/us/en/vmware-cis/vcf/vcf-9-0-and-later/9-0/release-notes/vmware-cloud-foundation-90-release-notes/platform-product-support-notes/vcf-sdks-apis-and-clis-product-support-notes.html#:~:text=Copy-,VMware%20Cloud%20Foundation%20PowerCLI,PowerShell%205.1%20is,-deprecated%20in%20VCF

#Validate if VMware.PowerCLI is installed
Get-Module VMware.PowerCLI -ListAvailable

#The module is now renamed to VCF.PowerCLI
#install VCF.PowerCLI from PSGallery
Install-Module VCF.PowerCLI

#Check if VCF.PowerCLI is installed
Get-Module VCF.PowerCLI -ListAvailable

#Get PowerShell Script Execution Policy
Get-ExecutionPolicy -List

#Get Help About Execution Policies
Get-Help about_Execution_Policies

#Setup PowerShell to all scripts to run
Set-ExecutionPolicy RemoteSigned 

#Setup PowerCLI Configuration to all invalid certificate to be ignored
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

#Create a Test.ps1 script to test the PowerCLI Script Execution
./test.ps1  