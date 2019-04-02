class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    project = Project.new(title)
    @backed_projects << project.title
    title.backers << self
  end

end
