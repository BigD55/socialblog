require 'spec_helper'

describe PagesController do
  render_views
  before(:each) do
    @base_title = "zum Blog abgewandelte 'sample_app'" 
  end
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
     it "sollte einen Titel haben" do
        get 'home'
        response.should have_selector( "title", 
                     :content => @base_title + " | Home") 
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
                     :content => @base_title + " | Kontakt") 
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
                     :content => @base_title + " | Ueber") 
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
                   :content => @base_title + " | Impressum") 
     end

  end

end
