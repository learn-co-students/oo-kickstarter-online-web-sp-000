class Backer
  attr_accessor :backed_projects
  
  def initialize()
    @backed_projects = []
  end
  
  def back_project(project_instance)
    @backed_projects << project_instance
end