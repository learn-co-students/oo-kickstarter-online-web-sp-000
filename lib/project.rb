class Project
  @@all = []
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer_oi)
    self.backers << backer_oi
    backer_oi.backed_projects << self
  end
    
end