class Project

attr_reader :backers, :title

#takes a title on initialization, accessible through an attribute reader, initializes with a @backers attribute, an empty array
def initialize(title)
  @title = title
  @backers = []
end

def add_backer(backer) # accepts a Backer as an argument and stores it in a backers array
  @backers << backer
  backer.backed_projects << self #also adds the project to the backer's backed_projects array

end
end
