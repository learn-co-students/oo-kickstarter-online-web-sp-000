class Backer
  attr_accessor :name, :backed_projects
  
  def initialize(name) #takes a name on initialization, accessible through an attribute reader
    @name = name
    @backed_projects=[] #initializes with a @backed_projects attribute, an empty array
  end
  
  def back_project(project) #accepts a Project as an argument and stores it in a backed_projects array
    @backed_projects << project
    project.add_backer(self) #also adds the backer to the project's backers array
  end
end