
class Backer
  #takes a name on initialization, accessible through an attribute reader
  #initializes with a @backed_projects attribute, an empty array
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

#accepts a project as an argument and stores it in a backed_projects array
#also adds the backer to the project's backers array
  def back_project(project)
    backed_projects << project
    project.backers << self
  end

end




  