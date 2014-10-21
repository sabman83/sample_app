require 'spec_helper'

describe "Static Pages" do
  subject { page }
  let(:pre_title) { "Ruby on Rails Tutorial Sample App | " }
  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(pre_title + 'Home') }
  end
  describe "About page" do
    before { visit about_path }
    it { should have_content('About Us') }
    it { should have_title(pre_title + 'About Us') }
  end
  describe "Contact Page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(pre_title + 'Contact') }
  end
end
