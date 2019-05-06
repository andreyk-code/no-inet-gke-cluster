
#project_id = ""
cluster_region = "us-central1"
cluster_zones = ["us-central1-a"]
network_name = "gke-no-internet-network"

gke_subnet_01 = "priv-cluster-01"
gke_subnet_01_pods = "pods"
gke_subnet_01_services = "services"

fw_rule_deny_all_egress = "deny-egress"
fw_rule_allow_hc_ingress = "allow-healthcheck-ingress"
fw_rule_allow_hc_egress = "allow-healthcheck-egress"
fw_rule_allow_google_apis_egress = "allow-google-apis"
fw_rule_allow_master_node_egress = "allow-master-node-egress"

google_apis_route = "google-apis"

google_apis_zone = "google-apis"
gcr_io_zone = "gcr-io"

gke_cluster = "private-gke-cluster"
gke_master_node_range = "172.16.0.0/28"