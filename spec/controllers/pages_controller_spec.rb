require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
        #noinspection RubyResolve
      response.should be_success

    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
          :content => "RoR Tutorial sample app | Home")
    end

    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
        #noinspection RubyResolve
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
           :content => "RoR Tutorial sample app | Contact")
    end
  end


  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
        #noinspection RubyResolve
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
           :content => "RoR Tutorial sample app | About")
    end
  end

end
