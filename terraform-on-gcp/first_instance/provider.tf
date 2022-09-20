# VARIABLES
variable "PROJECT_NAME" {
    type = string
    description = "The name of your project on GCP"
}
variable "REGION" {
    type = string
    description = "The region of your project on GCP"
}
variable "ZONE" {
    type = string
    description = "The zone of your project on GCP"
}
variable "CREDENTIALS_PATH" {
    type = string
    description = "The path on your local computer where you stored all your credentials"
}
variable "INSTANCE_NAME" {
    type = string
    description = "The instance name of your vm on GCP"
}
variable "MACHINE_TYPE" {
    type = string
    description = "The machine type of your vm on GCP"
}
variable "OS_IMAGE" {
    type = string
    description = "The os image type of your vm on GCP"
}




# Setup 
provider "google" {
    project = "${var.PROJECT_NAME}"
    region = "${var.ZONE}"
    credentials = "${file("${var.CREDENTIALS_PATH}")}"
}
