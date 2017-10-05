class StaticController < ApplicationController 
  def home
    @list = List.all 
    render template: "lists/index"
  end   
end   
