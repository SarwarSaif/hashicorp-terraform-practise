# ISSUES

## Issue - 1
terraform plan -var='CREDENTIALS_PATH="/home/projects/gcp/crdentials/terraform-project.json"'
### Error: Invalid function argument
│ 
│   on provider.tf line 20, in provider "google":
│   20:     credentials = "${file("${var.CREDENTIALS_PATH}")}"
│     ├────────────────
│     │ var.CREDENTIALS_PATH is "\"/home/projects/gcp/crdentials/terraform-project.json\""
│ 
│ Invalid value for "path" parameter: no file exists at
│ "\"/home/projects/gcp/crdentials/terraform-project.json\"/.json"; this function works only with files
│ that are distributed as part of the configuration source code, so if this file will be created by a resource in this
│ configuration you must instead obtain this result from an attribute of that resource.
### Solution:
terraform plan -var="CREDENTIALS_PATH=/home/projects/gcp/crdentials/terraform-project.json"



