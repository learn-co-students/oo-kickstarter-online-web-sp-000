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
  project.back_project << self
    
   
  
  # self.backer = project
  # backer.add_backer(self)
  
  
end 
end 