class Project
  attr_reader :backers, :title
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    @backers << backer
#project isn't already in backers backed_projects
    if !backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end
end
