class PagesController < ApplicationController
  def home
   @title ="Home"
  end
  def kontakt
   @title ="Kontakt"
  end
  def ueber
   @title ="Ueber"
  end
  def impressum
   @title ="Impressum"
  end
end
