class Project
  attr_accessor :title 
  attr_accessor :backers 
  def initialize(title) 
    @title = title 
    @backers = [] 
  end
  
  def add_backer(backer)
    add_backer_internal(backer)
    backer.back_project_internal(self)
  end 

  
  def add_backer_internal(backer)
    @backers << (backer)
  end 
  
end 