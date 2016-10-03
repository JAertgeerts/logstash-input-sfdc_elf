Gem::Specification.new do |s|
  s.name            = 'logstash-input-sfdc_elf'
  s.version         = '1.0.2'
  s.licenses        = ['Salesforce EULA']
  s.summary         = 'A Logstash plugin the receives events from Salesforce EventLogFile'
  s.description     = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline
                       using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program'
  s.authors         = ['Abhishek Sreenivasa', 'Mohammed Islam']
  s.email           = %w(asreenivasa@salesforce.com mislam@salesforce.com)
  s.homepage        = 'http://www.salesforce.com'
  s.require_paths   = ['lib']

  # Files
  #s.files = `git ls-files`.split($ORS) + ::Dir.glob('vendor/*')
  s.files = Dir['.gitignore','.rubocop.yml','Gemfile','LICENSE.md','README.md','Rakefile','lib/logstash/inputs/sfdc_elf.rb','lib/logstash/inputs/sfdc_elf/client_with_streaming_support.rb','lib/logstash/inputs/sfdc_elf/queue_util.rb','lib/logstash/inputs/sfdc_elf/scheduler.rb','lib/logstash/inputs/sfdc_elf/state_persistor.rb','logstash-input-sfdc_elf.gemspec','spec/fixtures/auth_success_response.json','spec/fixtures/describe.json','spec/fixtures/org_query_response.json','spec/fixtures/queue_util/create_event_ELF_list1.json','spec/fixtures/queue_util/create_event_ELF_list2.json','spec/fixtures/queue_util/create_event_ELF_list3.json','spec/fixtures/queue_util/create_event_sampledata1.csv','spec/fixtures/queue_util/create_event_sampledata2.csv','spec/fixtures/queue_util/create_event_sampledata3.csv','spec/fixtures/queue_util/eventlogfile_describe.json','spec/fixtures/queue_util/eventlogfile_list.json','spec/fixtures/queue_util/sample_data1.csv','spec/fixtures/queue_util/sample_data2.csv','spec/fixtures/queue_util/sample_data3.csv','spec/fixtures/queue_util/sample_data4.csv','spec/fixtures/queue_util/sample_data5.csv','spec/inputs/sfdc_elf/queue_util_spec.rb','spec/inputs/sfdc_elf/scheduler_spec.rb','spec/inputs/sfdc_elf/state_persistor_spec.rb','spec/inputs/sfdc_elf_spec.rb','spec/spec_helper.rb']
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0', '<= 2.5.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'activesupport'
  s.add_runtime_dependency 'databasedotcom'

  s.add_development_dependency 'logstash-devutils'
end
