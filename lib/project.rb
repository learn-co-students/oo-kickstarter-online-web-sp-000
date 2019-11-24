class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = title
  end

def add_backer(backer)
  self.backers << backer
end
end
