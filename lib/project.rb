class Project 
  attr_accessor :backers, :title
  
  def initialize(title) 
    @title = title
    @backers = []
  end 
  
  def add_backer(backer) 
     
    @backers << backer
    
    
    #causes inf loop
    # self.title = backer 
    # title.back_project(self)
  
    backer.backed_projects << self
  
  end
  
  
end 