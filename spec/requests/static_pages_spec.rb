require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path}

    it {should have_content('MYNesia')}
    it {should have_title("MYNesia")}
    it {should_not have_title('| Home')}

  end

  describe "Help page" do
    before {visit help_path}
    it { should have_title("MYNesia | Help")}
    it { should have_content('Help')}
  end

  describe "About page" do
    before {visit about_path}

    it {should have_content('About us')}
    it {should have_title("MYNesia | About")}

  end

  describe "Contact page" do
    before {visit contact_path}

    it {should have_title("MYNesia | Contact")}
    it {should have_content('Contact')}
    
  end
  
end


describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
  
  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title("MYNesia | Sign up") }
  end
end