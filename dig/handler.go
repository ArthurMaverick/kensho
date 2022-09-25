package dig

import "fmt"

func DnsFormat() {
	dnsNames := DnsChecker()

	for _, dns := range dnsNames {
		fmt.Printf("%v", dns)
	}
}
