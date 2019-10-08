class Backer

  attr_reader :name, :backed_projects # The 'name' and 'backed_projects' are accessible through the reader.

  def initialize(name) # We initialize 'Backer' with a name.
    @name = name
    @backed_projects = [] # We also initialize our 'backed_projects' by setting it equal to an empty array.
  end

  def back_project(project_name) # This method uses the argument of a 'Project' instance and pushes it into our 'backed_projects' array.
    @backed_projects << project_name
    project_name.backers << self # Since 'project_name' is our instance of the 'Project' class, we can access it's array with '.backers'.
  end # Finally, we push our instance of the 'Backer' class (self) into that array! 

end
