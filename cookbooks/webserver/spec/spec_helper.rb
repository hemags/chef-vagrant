require 'chefspec'

describe 'webserver::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }

  it 'installs a package with an ngnix' do
    expect(chef_run).to install_package('ngnix')
  end

  it 'Starts ngnix server' do
    expect(chef_run).to start_service('ngnix')
  end

  it 'Do not disable ngnix server' do
    expect(chef_run).to_not disable_service('ngnix')
  end
end
