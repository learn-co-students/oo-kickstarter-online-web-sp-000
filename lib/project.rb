class Project

  attr_reader :title, :backers # Again, these attributes are accessible through the reader.

  def initialize(title) # We initialize with a 'title' (NOT a 'name') and set our backers equal to an empty array.
    @title = title
    @backers = []
  end

  def add_backer(backer) # Accomplishes the same task as our 'back_project' method under the Backer class, just now for collecting backers.
    @backers << backer
    backer.backed_projects << self # Simply repeat the same logic but this time for the instance of the 'Project' class!
  end



end
