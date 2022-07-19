variable "cred_path" {default = "/home/my_vm_instance/terraform/credentials/"}
provider "google" {
    project = "kubernetes-projects-354511"
    region = "asia-southeast1"
    credentials = "${file("${var.cred_path}/kubernetes-projects-secrets.json")}"
}