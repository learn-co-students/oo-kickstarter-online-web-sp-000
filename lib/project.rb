class Project
  attr_reader :backers
  
  def initialize
    @backers = []
  end

  def add_backer(backer_instance)
    @backers << backer_instance
  end

end