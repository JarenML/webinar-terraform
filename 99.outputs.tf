#### outputs ####
output "nginx_dev_ipX" {
    description = "Dirección IP pública de la instancia EC2"
    value = module.nginx_server.server_public_ip
}

output "nginx_dev_dnsX" {
    description = "DNS público de la instancia EC2"
    value = module.nginx_server.server_public_dns
}

#### outputs ####
output "nginx_qa_ipX" {
    description = "Dirección IP pública de la instancia EC2"
    value = module.nginx_server.server_public_ip
}

output "nginx_qa_dnsX" {
    description = "DNS público de la instancia EC2"
    value = module.nginx_server.server_public_dns
}
