package dig

import (
	"os"
	"testing"
)

const domain_a_ns = "google.com"

func TestRecordTypeNSOutput(t *testing.T) {
	os.Args = []string{"binary", domain_a_ns, "ns"}
	current := DnsChecker()
	if current == nil {
		t.Error("expected google nameservers record type but got nil")
	}
}

func TestRecordTypeAOutput(t *testing.T) {
	os.Args = []string{"binary", domain_a_ns, "a"}
	current := DnsChecker()
	if current == nil {
		t.Error("expected google A record type but got nil")
	}
}
