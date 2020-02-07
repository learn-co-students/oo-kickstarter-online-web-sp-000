class Backer 
  
  attr_accessor :backed_projects , :name 
  
  def initialize(backer_name)
    @backed_projects = []
    @name = backer_name
  end 
  
  def back_project(name)
    @backed_projects << name
    name.backers << self 
  end 
end 