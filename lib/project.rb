require 'pry'
class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def backer=(backer)
    @backer = backer
    backer.back_project(self)
  end


  def add_backer(backer)
    backer.backed_projects << self
    @backers << backer
  end
end
