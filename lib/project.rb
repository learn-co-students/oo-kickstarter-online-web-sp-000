class Project
  attr_accessor :title
  attr_reader :backers 
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backers)
    @backers << backers
    backers.backed_projects << self
  end
  
  
end