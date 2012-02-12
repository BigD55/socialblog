require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
     it "sollte einen Titel haben" do
        get 'home'
        response.should have_selector( "title", 
                     :content => "zum Blog abgewandelte 'sample_app' | Home") 
    end
  end

  describe "GET 'kontakt'" do
    it "should be successful" do
      get 'kontakt'
      response.should be_success
    end
    it "sollte einen Titel haben" do
         get 'kontakt'
         response.should have_selector( "title",
                     :content => "zum Blog abgewandelte 'sample_app' | Kontakt") 
     end
  
  end
  describe "GET 'ueber'" do
    it "should be successful" do
      get 'ueber'
      response.should be_success
    end
    it "sollte einen Titel haben" do
         get 'ueber'
         response.should have_selector( "title",
                     :content => "zum Blog abgewandelte 'sample_app' | Ueber") 
     end

  end
  describe "GET 'impressum'" do
    it "should be successful" do
      get 'impressum'
      response.should be_success
    end
    it "sollte einen Titel haben" do
         get 'impressum'
         response.should have_selector( "title",
                   :content => "zum Blog abgewandelte 'sample_app' | Impressum") 
     end

  end

end
