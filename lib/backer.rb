class Backer
attr_accessor :name, :backed_projects

def initialize(name)
  @name = name
  @backed_projects = []
end

#accepts a Project as an argument and stores it in a backed_projects array
#also adds the backer to the project\'s backers array
def back_project(project)
  #stores new project object in object variable @backed_projects
  @backed_projects << project

  #add project to Backers backed project
  project.backers << self
end
end
