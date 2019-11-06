class Project
  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_name)
    new_backer = Backer.new(backer_name)
    self.backers << new_backer.name
    new_backer.backed_projects << self
  end
end
