class Project
  
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer
    #backer.back_project(self) #testing crashes when both advanced
    #methods operate at the same time
  end
  
end
