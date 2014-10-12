require 'spec_helper'

describe "Static Pages" do
  let(:pre_title) { "Ruby on Rails Tutorial Sample App | " }
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
      expect(page).to have_title(pre_title + 'Home')
    end
  end
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
      expect(page).to have_title(pre_title + 'About Us')
    end
  end
  describe "Contact Page" do
    it 'should have the content about Contacts' do
      visit '/static_pages/contact'
      expect(page).to have_title(pre_title + 'Contact Us')
    end
  end
end
