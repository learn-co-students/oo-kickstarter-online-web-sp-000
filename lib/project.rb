class Project
  attr_reader :backers, :title, :backer
  
  def initialize(title)
    @title = title
    @backers = []
    @backed_projects = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self 
  end
end