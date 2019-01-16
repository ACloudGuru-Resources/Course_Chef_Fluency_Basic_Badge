name 'webserver'
description 'A Role for Apache Webservers'
run_list 'role[base]','recipe[apache]'
default_attributes({
  "company" => {
    "name" => "Roles Inc."
  }
})