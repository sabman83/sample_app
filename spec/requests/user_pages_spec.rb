require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "Signup Page" do
    before { visit signup_path }
      it { should have_content('Sign up') }
      it { should have_selector('h1') }
      it { should have_title('Sign up') }
  end
end

