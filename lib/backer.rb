class Backer

  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  # takes in a Project instance and adds the project to its @backed_projects attribute.
  # also adds the backer to the project's backers array
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
