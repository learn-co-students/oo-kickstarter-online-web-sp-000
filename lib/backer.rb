require 'pry'
class Backer 
  attr_accessor :backed_projects, :name, :backer
 
def initialize(name)
  @name = name
  #@backer = backer
  @backed_projects = [] 
end

def back_project(project)
  
  @backed_projects << project
 
  #binding.pry
  self.name = project
  name.add_backer(self)
  
  #consider next self.name usage here and self.title usage in Project
end 
end 

	
