# Logstash Plugin for Salesforce's Event Log File

Steps to Install
1. Add the below line to to the Gemfile of the Logstah server folder
gem "logstash-input-sfdc_elf", :git => "https://github.com/nvnivas/logstash-input-sfdc_elf.git"

2. run below from commnad prompt
./logstash-plugin install --no-verify