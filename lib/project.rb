class Project
  
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    self.backers = []
  end
  
  def backers
    @backers
  end
  
  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
  
end