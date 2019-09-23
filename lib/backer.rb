class Backer
  
  @@all = []
  attr_accessor :backed_projects
  attr_reader :name
  
  def initialize(name)
    @name = name
    @backed_projects =[]
  end
  
  def back_project(project_oi)
    self.backed_projects << project_oi
    project_oi.backers << self
  end
  
end
  
  