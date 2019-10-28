class Backer
  
  attr_accessor :name
  attr_reader :backed_projects
  
  def initialize(name)
    @backed_projects = []
    @name = name 
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self #project's backer arrays has to do with specific instance
  end
  
  
  
end