class Backer
  
  attr_accessor :backed_projects, :name
  
  def initialize(backer_name)
    @backed_projects = []  
    @name = backer_name
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self 
  end
  
  
end