

resource "google_compute_instance" "default" {
    name         = "${var.INSTANCE_NAME}"
    machine_type = "${var.MACHINE_TYPE}"
    zone         = "${var.ZONE}"

boot_disk {
    initialize_params {
        image = "${var.OS_IMAGE}"
    }
}

network_interface {
    network = "default"
}

service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}

}

