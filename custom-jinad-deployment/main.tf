terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.18.0"
    }
  }
}


terraform {
  backend "s3" {
    encrypt = true
  }
}


provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}



module "jinad" {
  source  = "jina-ai/jinad-aws/jina"
  version = "0.0.2"

  instance_type = var.instance_type
  vpc_cidr      = var.vpc_cidr
  subnet_cidr   = var.subnet_cidr
  additional_tags = {
    "TFID" : var.TFID
  }
}


resource "random_string" "random_record" {
  length  = 7
  special = false
}


resource "cloudflare_record" "jinad_record" {
  zone_id  = var.cloudflare_zone_id
  name     = (var.cloudflare_record_name != "" ? var.cloudflare_record_name : join("-", [random_string.random_record.result, "cloud"]))
  value    = module.jinad.elastic_ip
  type     = "A"
  proxied  = false
  priority = 0
}
