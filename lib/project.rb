require 'pry'
class Project
  attr_reader :backers, :title
    def initialize(title)
      @backers = []
      @title = title
    end

  def add_backer(back)
    @backers << back
    back.backed_projects << self
    # binding.pry
  end
end
