resource "google_compute_firewall" "deny-egress" {
  name    = "${var.fw_rule_deny_all_egress}"
  project = "${var.project_id}"
  network = "${var.network_name}"

  deny {
    protocol = "all"
  }

  direction          = "EGRESS"
  destination_ranges = ["0.0.0.0/0"]
  priority           = "1100"
}

resource "google_compute_firewall" "allow-healthcheck-ingress" {
  name    = "${var.fw_rule_allow_hc_ingress}"
  project = "${var.project_id}"
  network = "${var.network_name}"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  direction     = "INGRESS"
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
}

resource "google_compute_firewall" "allow-healthcheck-egress" {
  name    = "${var.fw_rule_allow_hc_egress}"
  project = "${var.project_id}"
  network = "${var.network_name}"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  direction          = "EGRESS"
  destination_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
}

resource "google_compute_firewall" "allow-google-apis" {
  name    = "${var.fw_rule_allow_google_apis_egress}"
  project = "${var.project_id}"
  network = "${var.network_name}"

  allow {
    protocol = "all"
  }

  direction          = "EGRESS"
  destination_ranges = ["199.36.153.4/30"]
}

resource "google_compute_firewall" "allow-master-node-egress" {
  name    = "${var.fw_rule_allow_master_node_egress}"
  project = "${var.project_id}"
  network = "${var.network_name}"

  allow {
    protocol = "tcp"
    ports    = ["443", "10250"]
  }

  direction          = "EGRESS"
  destination_ranges = ["172.16.0.0/28"]
}
