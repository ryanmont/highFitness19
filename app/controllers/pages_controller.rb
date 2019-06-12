class PagesController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "Kristen15", except: [:congratulations, :faq, :vote_counted]

  layout 'form'

  def faq
  end


  def congratulations
  end


  def vote_counted
  end


end
