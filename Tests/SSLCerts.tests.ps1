Describe 'SSL Cert Checks' {
    #Grabs all SSL Certs and checks validity
    $testCase = Get-NSSSLCertificate -Session $Session|Foreach-Object{@{Cert=$_.CertKey;Status=$_.Status}}           
    
        It "SSL Cert <Cert> should be valid" -TestCases $testCase {
        param($Status) 
            $Status| Should Be "Valid"
        }
}