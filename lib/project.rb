class Project 
  attr_accessor :backers, :title, :project 
  
  def initialize(title) 
    @title = title
    @backers = []
  end 
  
  def add_backer(backer) 
     
    @backers << backer
    
    
    
    # self.title = backer 
    # title.back_project(self)
  
  
  end 
end 