class Backer
  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_title)
    new_project = Project.new(project_title)
    self.backed_projects << new_project.title
    new_project.backers << self
  end
end
