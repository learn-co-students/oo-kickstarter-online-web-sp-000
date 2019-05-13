class Backer
  
  attr_accessor :backer, :backed_projects, :name
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end