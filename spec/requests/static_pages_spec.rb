require 'spec_helper'

describe "Static Pages" do
  subject { page }
  let(:pre_title) { "Ruby on Rails Tutorial Sample App | " }
  shared_examples_for "static page" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(title) }
  end
  describe "Home page" do
    before { visit root_path }
    let(:heading) { "Sample App" }
    let(:title) { pre_title + 'Home' }
    it_should_behave_like "static page"
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
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(pre_title + 'About Us')
    click_link "Contact"
    expect(page).to have_title(pre_title + 'Contact')
    click_link "Home"
    expect(page).to have_title(pre_title + 'Home')
    click_link "Sign up now!"
    expect(page).to have_title(pre_title + 'Sign up')
  end
end
