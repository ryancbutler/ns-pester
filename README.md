Simple Pester tests to run against Citrix Netscaler.  For further information check out the [blog post](https://www.techdrabble.com/citrix/netscaler/30-running-pester-tests-against-citrix-netscaler)

## Tests the following
 - Content Switch UP state
 - Netscaler Gateway UP state
 - Load Balancer UP state
 - SSL Certificate Expiration
 - License Expiration
 - DNS Resoultion for GSLB

## Requires the following Modules
 - [Netscaler](https://github.com/devblackops/NetScaler)
 - [Pester](https://github.com/pester/Pester)

## Quick Start
 - Edit start.ps1 with Netscaler information
 - Import [Netscaler](https://github.com/devblackops/NetScaler) and [Pester](https://github.com/pester/Pester) Modules
 - Run `.\start.ps1`