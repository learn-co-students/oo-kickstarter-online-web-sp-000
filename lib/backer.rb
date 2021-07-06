require 'pry'

class Backer
  attr_reader :name
  attr_accessor :backed_projects
  
  @@backers = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
 #   @@backers << self 
    

  end
  
 # def self.backers
 #   @@backers
 # end 
  
  def back_project(project)
    @backed_projects << project  ##
    project.backers << self  ##adds the backer object passed to the instance method to the project backer array 

  end 
end 


=begin ######################################





=end ######################################