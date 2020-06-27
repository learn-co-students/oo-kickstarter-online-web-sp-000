require 'pry'

class Backer

attr_accessor :backed_projects, :name

def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(new_project)
  @backed_projects << new_project
  # binding.pry
  new_project.backers << self

end

end
