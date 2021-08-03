terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">1.0.4"
    }
  }
}


provider "intersight" {
  apikey    = "5f7cbc8e7564612d33e386d5/606dd1507564612d30712c26/60b95cf37564612d30b41ddb"
  secretkey = "SecretKey.txt"
  endpoint  = "www.intersight.com"
}
