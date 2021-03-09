output "TFID" {
  description = "TFID describing your tf apply"
  value       = var.TFID
}


output "jinad_ip" {
  description = "IP of JinaD"
  value       = module.jinad.elastic_ip
}


output "jinad_dns" {
  description = "Public DNS of JinaD instance"
  value       = cloudflare_record.jinad_record.hostname
}


output "jinad_private_key" {
  description = "Private key for debugging"
  value       =  module.jinad.private_key_pem
}
