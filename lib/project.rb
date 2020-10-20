class Project
  
  attr_accessor :title, :backers
  
  
  def initialize(title)
    @title = title
    @backers= []
  end
  
  def backed_project(project)
    @backed_projects << project
    project.backer << self
  end
  
  def add_backer(name)
    self.backers << name
    name.backed_projects << self
  end
  
end