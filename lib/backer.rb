require 'pry'

class Backer

  attr_reader :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def project=(project)
    @project = project
    project.add_backer(self)
  end


  def back_project(project)
    project.backers << self
    @backed_projects << project
  end
end
