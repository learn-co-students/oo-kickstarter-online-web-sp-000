class Backer
  
  attr_accessor :name, :project, :backers
  attr_reader :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = [ ]
  end

  def back_project(project)
    @project = project
    
    @backed_projects << @project
    #adding the backer to the project's backer array
    @project.backers << self
   
  end
end