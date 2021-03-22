class Project
  attr_reader :title, :backers
  def initialize(title)
    @title = title
    @backers = []
    # takes a title on initialization, accessible through an attribute reader
    # initializes with a @backers attribute, an empty array
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  # accepts a Backer as an argument and stores it in a backers array
  # also adds the project to the backer's backed_projects array
  end

end
