require "pry"
class Project
  attr_accessor :title, :backers
  
  @@all = []
  
  
  def initialize(title)
    @title=title
    @backers = []
    @@all << self
  end
  
  def add_backer(backer)
backer.backed_projects << self
    @backers << backer
  end
  
 end