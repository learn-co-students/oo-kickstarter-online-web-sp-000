class project
  attr_accessor :title, :backers
  
  def initalize(title)
    @title = title 
    @backers = []
  end 
  
  def add_backer(backer)
    @backers<< backer 
    backer.project(self) unless backer.backed_projects.include?(self)
  end
end