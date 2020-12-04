class Backer 
  attr_accessor :name
  attr_accessor :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end 
  
  def back_project(project)
    back_project_internal(project)
    project.add_backer_internal(self)
  end
  
  def back_project_internal(project)
    @backed_projects << (project)
  end

  
end 
