class Project
  
  attr_accessor :backers, :title
  
  def initialize(project_title)
    @backers = []  
    @title = project_title
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end