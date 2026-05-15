# =============================================================================
# terraform.tfvars — concrete sandbox values
# =============================================================================

aws_region  = "us-east-1"
name_prefix = "sbx"
owner_tag   = "dkeeno"

vpc_name_tag                = "sbx-vpc"
private_subnet_name_pattern = "sbx-prv-*" # actual cluster-iac convention (not sbx-private-*)
bastion_security_group_name = "sbx-bastion-sg"

cluster_identifier = "sbx-docdb"
engine_version     = "5.0.0"
instance_class     = "db.t3.medium"
instance_count     = 1 # single-AZ for sandbox
master_username    = "docdbadmin"

backup_retention_days = 1
skip_final_snapshot   = true
deletion_protection   = false
