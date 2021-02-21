require 'pry'

class Project 
  attr_accessor :title, :backers   
  
  def initialize(title)
    @title = title 
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer 
    backer.backed_projects << self 
    #self in an instance refers only to the instance
   end 
end 