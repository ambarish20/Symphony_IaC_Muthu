region = "us-west-1"
vpc_name = "AHS_Prod_Data_VPC"
subnet_name = "AHS_Prod_Data_AZ-A"
subnet_cidr = "10.126.192.0/27"
subnet_az = "us-west-1a"

tag_name = "AHS_Prod_Data_AZ-A"
tag_project = "Symphony"
tag_organization = "Advantasure Inc."
tag_clietn = "AHS"

tfstate_backend = "symphony-ahs-backend-tfstate-us-west-1"
tfstate_path = "tfstate/Networking/AHS_Prod_Data_VPC/AHS_Prod_Data_AZ-A/AHS_Prod_Data_AZ-A.tfstate"
