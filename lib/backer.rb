require 'pry'
class Backer

attr_accessor :title 
attr_reader :name 
  
 
  
  def initialize(name)
    @name=name 
    @title = title 
    @backed_projects = []
  end 
  
  def backed_projects
    @backed_projects
    
  end 
  
  def back_project(project)

    @backed_projects << project 
    project.backers << self 
    
  end 
  
  
  
  
  
  
end 