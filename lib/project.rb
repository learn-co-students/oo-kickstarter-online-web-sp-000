require 'pry'

class Project

attr_accessor :backers, :title


def initialize(title)
  @title = title
  @backers = []
end

def add_backer(new_backer)
  @backers << new_backer
  # binding.pry
  new_backer.backed_projects << self


end


end
