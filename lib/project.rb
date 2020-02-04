class Project 
  attr_reader :backers, :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
   def add_backer(backers)
    @backers << backers
    backers.back_project(self) unless backers.backed_projects.include?(self)
    
  end
  
end