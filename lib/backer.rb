class Backer
  attr_accessor :name
  attr_reader :backed_projects 
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  
  def back_project(proyect)
    @backed_projects << proyect
    proyect.backers << self
  end
  
end