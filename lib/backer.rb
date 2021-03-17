class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_instance)
    @backed_projects << project_instance
    project_instance.backers << self
  end



# How do I access the @backers Project instance variable from the Backer class?


end
