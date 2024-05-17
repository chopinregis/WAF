locals{
  window_app=[for f in fileset("${path.module}/configs", "[^_]*.yaml") : yamldecode(file("${path.module}/configs/${f}"))]
  waf_list = flatten([
    for app in local.window_app : [
      for windowapps in try(app.listofwafpolicy, []) :{
        name = windowapps.name
        os_type = windowapps.os_type
        sku_name = windowapps.sku_name

      }
    ]
])
}


output "window_app_list" {
  value = local.window_app_list
}

output "yaml_content" {
  value = file("${path.module}/configs/windowsapps.yaml")
}
