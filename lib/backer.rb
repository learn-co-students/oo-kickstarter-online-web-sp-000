
class Backer
  attr_reader :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
    # takes a name on initialization, accessible through an attribute reader
    # initializes with a @backed_projects attribute, an empty array
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    # accepts a Project as an argument and stores it in a backed_projects array
    # also adds the backer to the project's backers array
  end

end
