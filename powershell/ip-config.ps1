﻿get-ciminstance win32_networkadapterconfiguration  | where ipenabled -eq true | format-table -autosize description, index, ipaddress, DNSdomain, ipsubnet, dnsserver