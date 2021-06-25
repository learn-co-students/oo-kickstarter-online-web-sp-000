class Project
  attr_reader :title , :backers
  
  def initialize(title) #takes a title on initialization, accessible through an attribute reader
    @title = title
    @backers = [] #initializes with a @backers attribute, an empty array
  end
  
  def add_backer(backer) #accepts a Backer as an argument and stores it in a backers array
    @backers << backer
   backer.back_project(self) unless backer.backed_projects.include?(self) # add project to backer's backedc projects array
  end
  
end