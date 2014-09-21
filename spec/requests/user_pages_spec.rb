require 'spec_helper'

describe "UserPages" do
  subject {page}

  describe "Sign up page" do
  	before {visit signup_path}

  	it {should have_title ("MYNesia | Sign up")}
  	it {should have_content ('Sign up')}
  end

 #describe "after saving the user" do
#
 #       before { click_button submit }
  #      let(:user) { User.find_by(email: 'jokomulyono696@gmail.com') }
#
 #       it { should have_link('Sign out') }
  #      it { should have_title("MYNesia | #{user.name}") }
   #     it { should have_selector('div.alert.alert-success', text: 'Welcome') }
    #  end
end
