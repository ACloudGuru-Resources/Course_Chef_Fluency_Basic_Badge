name 'webserver'
description 'A Role for Apache Webservers'
run_list 'recipe[mychef_client]','recipe[apache]'
default_attributes({
  "company" => {
    "name" => "Roles Inc."
  }
})