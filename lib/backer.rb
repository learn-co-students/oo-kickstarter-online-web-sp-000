class Backer
  attr_accessor :project, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << self
    project.name = self
  end

end
