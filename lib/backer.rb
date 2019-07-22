require 'pry'
class Backer
  attr_reader :name
  @@backed_projects = []

  def initialize(name)
    @name = name
  end

  def backed_projects
    @@backed_projects
  end

  def back_project(project)
    @@backed_projects << project
    project.add_backer(self)
  end

@@backed_projects.find { |i| i.title == title }
end
