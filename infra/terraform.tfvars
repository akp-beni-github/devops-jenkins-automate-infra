bucket_name = "dev-proj-1-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-central-1a", "eu-central-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4XDBVLm/XggCz5hmKMOTstZDp1I3VHKH7pp7knCr2ap1ZJNg0bCsXhDup4dRQ3yrq32wu1bFzlhFNYjKhpn0HpHHU3bmQ5lUowB9X/+dPBEu4nhIbmPYbPpD4jo7itvd+FcOnmEuZYrzZtmoutKWcqGkYDXCTsq2XeFtMiYV8QmSGVL6/WDAH+eKCrWwCIxjjww33GmhcU7djDzAyTlHKsL8tBdaKwG+sD5rncGXd2ODFEr5an0WDQ3/Jw1dfKVMxpiuaBYT55iGz7AqrwU5jSGQ+km+KW1XsB+wfmgqFqua0+rtvsQVjyqXAYztNR4JSfDnqB/JvxldA1GC+jonR ben@bens-MacBook-Air.local"
ec2_ami_id = "ami-01e444924a2233b07" # ubuntu linux