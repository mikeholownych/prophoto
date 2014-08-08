require 'spec_helper'

describe 'subdomains' do
  let!(:account) { create(:account_with_schema) }

  it 'redirects invalid accounts' do
    visit "http://random-subdomain.example.com"
    expect(page.current_url).to_not include('random-subdomain')
  end

  it 'allows valid accounts' do
    visit "http://#{account.subdomain}.example.com"
    expect(page.current_url).to include(account.subdomain)
  end

  it 'forces user to login before accessing subdomain content' do
    visit "http://#{account.subdomain}.example.com"
    expect(page).to have_content 'sign in or sign up before continuing.'
  end
end
