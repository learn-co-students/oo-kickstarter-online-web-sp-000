class Backer
  
  attr_reader :backed_projects, :name
  
  
  def initialize(name)
    @backed_projects = []
    @name = name
end


def back_project(project)
  self.backed_projects << project
  backed_projects
end

end
