class Project
  attr_reader :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(name)
    @backers << name
    if !(name.backed_projects.include?(self))
      name.back_project(self)
    end
  end
end
