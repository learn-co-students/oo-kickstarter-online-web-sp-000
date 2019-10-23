class Backer
  attr_reader :backed_projects, :name
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project, also_add_project = true)
    @backed_projects << project
    project.add_backer(self, false) if also_add_project
  end
end