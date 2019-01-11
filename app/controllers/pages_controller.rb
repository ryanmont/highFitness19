class PagesController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "Kristen15", except: [:congratulations, :faq]
  def atv
  end


  def congratulations
  end
end
