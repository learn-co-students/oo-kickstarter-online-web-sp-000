require "pry"
class Project

    attr_reader :title
    attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def title
    @title
  end

  def add_backer(backer)
    backer.backed_projects << self
    @backers << backer
    binding.pry
  end
end
