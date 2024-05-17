locals{
  waf_policy = [for f in fileset("${path.module}/configs", "[^_]*.yaml") : yamldecode(file("${path.module}/configs/${f}"))]
  waf_list = flatten([
    for web_firewall in local.waf_policy : [
      for web_firewall_policy in try(app.listofwafpolicy, []) :{
        name = windowapps.name

      }
    ]
])
}


output "waf_list" {
  value = local.waf_list
}

output "yaml_content" {
  value = file("${path.module}/configs/windowsapps.yaml")
}
