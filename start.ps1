#Netscaler Information
$script:username = "nsroot"
$script:password = "nsroot"
$script:nsip = "192.168.1.50"

##PowerShell 5 PSGallery modules needed
#find-module pester
#install-module pester
#find-module netscaler
#install-module netscaler

#Connect to the Netscaler and create session variable
$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($Username, $SecurePassword)
$script:Session =  Connect-Netscaler -Hostname $nsip -PassThru -Credential $Credential

#Run Pester Tests
Invoke-Pester
