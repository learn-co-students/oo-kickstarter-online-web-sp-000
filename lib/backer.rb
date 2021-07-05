class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self               #back_project adds the Backer (self) to the @backers array in Project class
  end
end
