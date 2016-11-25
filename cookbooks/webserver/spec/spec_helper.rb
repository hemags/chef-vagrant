require 'chefspec'

describe 'webserver::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }

  it 'installs a package with an nginx' do
    expect(chef_run).to install_package('httpd')
  end

  it 'Starts nginx server' do
    expect(chef_run).to start_service('httpd')
  end

  it 'Do not disable nginx server' do
    expect(chef_run).to_not disable_service('httpd')
  end
end
