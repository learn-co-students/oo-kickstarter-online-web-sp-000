class Backer
  
  attr_reader :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(a_project)
    @backed_projects << a_project
    a_project.backers << self
  end
  
end




=begin

class Project
  
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
end


=end