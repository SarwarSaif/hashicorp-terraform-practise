# Terraform On GCP
This folder will consists of all the details regarding Terraform on GCP.
## Installation
### Gcloud CLI
Go to the following link to install gcloud cli on macos https://cloud.google.com/sdk/docs/install-sdk

Download the package
```
macOS 64-bit
(x86_64)
google-cloud-cli-393.0.0-darwin-x86_64.tar.gz
```
Untar the archived folder and run the following:
```
./google-cloud-sdk/install.sh
```
To initialize the gcloud CLI, run gcloud init:
```
./google-cloud-sdk/bin/gcloud init
```
Go to the following link to install for Ubuntu https://cloud.google.com/sdk/docs/install#deb
```
sudo apt-get install apt-transport-https ca-certificates gnupg
```
```
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg
sudo apt-get update && sudo apt-get install google-cloud-cli
```
Check Version
```
my_vm_instance@instance-1:~/terraform$ gcloud --version
Google Cloud SDK 393.0.0
alpha 2022.07.08
beta 2022.07.08
bq 2.0.75
bundled-python3-unix 3.9.12
core 2022.07.08
gsutil 5.10
```

### Create Service Account Keys
Go to IAM & Admin > Service Accounts > KEYS > ADD KEY
https://console.cloud.google.com/iam-admin/serviceaccounts/

export PATH=$PATH:/opt

Run your terraform instance
```
my_vm_instance@instance-1:~/terraform$ cd hashicorp-terraform-practise/terraform-on-gcp/first_instance/
my_vm_instance@instance-1:~/terraform/hashicorp-terraform-practise/terraform-on-gcp/first_instance$ ls
main.tf  provider.tf
my_vm_instance@instance-1:~/terraform/hashicorp-terraform-practise/terraform-on-gcp/first_instance$ terraform init
```
Try running "terraform plan" to see
any changes that are required for your infrastructure.

To Execute the plan run:
```
terraform apply
```
```
Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_instance.default: Creating...
google_compute_instance.default: Still creating... [10s elapsed]
google_compute_instance.default: Creation complete after 13s [id=projects/kubernetes-projects-354511/zones/asia-southeast1-c/instances/test]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
To Destroy the VM Instance run:
```
terraform destroy
```
```
google_compute_instance.default: Destruction complete after 1m53s

Destroy complete! Resources: 1 destroyed.
```


