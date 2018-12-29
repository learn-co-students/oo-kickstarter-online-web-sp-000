class Project 
  attr_accessor :backers, :title, :project 
  
  def initialize(title) 
    @title = title
    @backers = []
  end 
  
  def add_backer(backer) 
     
    backer.add_backer << self
   
    @backers << backer
 

    # self.project = backer 
    # project.back_project(self)
  
  
  end 
end 