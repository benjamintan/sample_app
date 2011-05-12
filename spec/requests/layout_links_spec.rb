require 'spec_helper'

describe "LayoutLinks" do
  it "should have a home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a contact page at '/contact'" do 
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have an about page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have an help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have an sign up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  it "should have an sign in page at '/signup'" do
    get '/signin'
    response.should have_selector('title', :content => "Sign in")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Sign up now"
    response.should have_selector('title', :content => "Sign up")
    
  end
  
  
end
