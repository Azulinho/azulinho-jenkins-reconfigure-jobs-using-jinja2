require_relative 'spec_helper'

jobs_list = [
  'jinja2_base_template',
  'jinja2_deploy_template',
  'jinja2_deploy_zabbix',
  'jinja2_deploy_zabbix_checks',
  'jinja2_example1',
  'jinja2_example2',
  'jinja2_example3',
  'jinja2_example4',
  'jinja2_example5',
  'jinja2_example6',
  'jinja2_run_ansible',
  'jinja2_run_zabbix_tests'
]

describe command('sudo java -jar /opt/jenkins/jenkins-cli.jar -s http://127.0.0.1:8080/ list-jobs') do
  jobs_list.each do |job|
    its(:stdout) { should include job }
  end
end

