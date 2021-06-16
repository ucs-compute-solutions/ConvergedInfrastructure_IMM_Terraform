terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">1.0.4"
    }
  }
}


provider "intersight" {
  apikey    = "Your Intersight API Key ID"
  secretkey = "Intersight Secret Key File (SecretKey.txt)"
  endpoint  = "www.intersight.com"
}
