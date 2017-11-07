$nameservers = "8.8.8.8","208.67.222.222"

Describe 'DNS External GSLB ZONE Checks' {
    foreach ($nameserver in $nameservers)
    {
        Context "Checking $nameserver for A records" {
            It "<name> should return <expected>" -TestCases @(
            @{Name = 'discussions.citrix.com'; Expected = '23.29.105.237'}
            @{Name = 'citrix.com'; Expected = '162.221.156.156'}
            @{Name = 'www.mycugc.org'; Expected = '192.237.143.31'}
            ) {
            param ($name, $Expected)
        
            $record = Resolve-DnsName $name -type A -server $nameservers
            $record.IPAddress | Should -Be $Expected
            }

        }
    }
    }
