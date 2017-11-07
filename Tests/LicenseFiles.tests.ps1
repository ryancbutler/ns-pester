Describe 'License File Checks' {
    #Grabs all license files and checks expiration
    $testCase = Get-NSLicenseExpiration -Session $Session|Foreach-Object{@{Feature=$_.Feature;DaysLeft=$_.DaysLeft;LicenseFile=$_.LicenseFile}}           
    
        It "Feature <Feature> in Licensefile <LicenseFile> should not be expired" -TestCases $testCase {
        param($DaysLeft) 
            $DaysLeft| Should BeGreaterThan 0
        }
}