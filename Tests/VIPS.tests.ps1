Describe 'Load Balancing VIP Validation Tests' {
        #Grabs load balancer vips
        $testCase = get-nslbvirtualserver -Session $Session|Foreach-Object{@{vip=$_.name;curstate=$_.curstate}}           
        
        if($testCase)
        {
            It "LB <vip> should be up on $nsip" -TestCases $testCase {
            param($curstate) 
                $curstate| Should be "Up"
            }
        }      
}

Describe 'Content Switch VIP Validation Tests' {
        #Grabs Content Switch VIPS
        $testCase = Get-NSCSVirtualServer -Session $Session|Foreach-Object{@{vip=$_.name;curstate=$_.curstate}}     
    
        if($testCase)
        {
            It "CSW <vip> should be up on $nsip" -TestCases $testCase {
            param($curstate) 
                $curstate| Should be "Up"
            }
        }
}

Describe 'Netscaler Gateway VIP Validation Tests' {
        #Grabs Netscaler Gateway VIPS
        $testCase = Get-NSVPNVirtualServer -Session $Session|Foreach-Object{@{vip=$_.name;curstate=$_.curstate}}     
    
        if($testCase)
        {
            It "NG <vip> should be up on $nsip" -TestCases $testCase {
            param($curstate) 
                $curstate| Should be "Up"
            }
        }
}