class Backer

attr_accessor :name, :backed_projects

def initialize(name) #takes a name on initialization, accessible through an attribute reader, initializes with a @backed_projects attribute, an empty array
  @name = name
  @backed_projects = []
end

#accepts a Project as an argument and stores it in a backed_projects array
def back_project(project)
  @backed_projects << project   #also adds the backer to the project's backers array
  project.backers << self

end
end




#bob = Backer.new("Bob")
#awesome_project = Project.new("This is an Awesome Project")
#bob.back_project(awesome_project)
#bob.backed_projects #=> [@title = "This is an Awesome Project"]
#awesome_project.backers #=> [@name = "Bob"]
