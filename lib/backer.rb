require 'pry'

class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
  @name = name
  @backed_projects = []
  end

## Whenever back_project() is called to update @backed_projects, the project should also update its @backers list.

  def back_project(project)
    # binding.pry
    @backed_projects << project
    Project.add_backer(backer)
  end

end