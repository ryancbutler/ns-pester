Simple Pester tests to run against Citrix Netscaler

## Tests the following
 - Content Switch UP state
 - Netscaler Gateway UP state
 - Load Balancer UP state
 - SSL Certificate Expiration
 - License Expiration

## Requires the following Modules
 - [Netscaler](https://github.com/devblackops/NetScaler)
 - [Pester](https://github.com/pester/Pester)

## Quick Start
 - Edit start.ps1 with Netscaler information
 - Import [Netscaler](https://github.com/devblackops/NetScaler) and [Pester](https://github.com/pester/Pester) Modules
 - Run `.\start.ps1`