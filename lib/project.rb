class Project
  
  attr_accessor :backer
  attr_reader :backers, :title
  
  def initialize(title)
    @title = title
    @backers = [ ]
  end
  
  def add_backer(backer)
    @backer = backer
    @backers << @backer
    #adding the project to the backer's backed_projects Array
    @backer.backed_projects << self
  end
  
  
end