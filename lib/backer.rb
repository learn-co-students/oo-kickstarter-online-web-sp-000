class Backer
  attr_reader :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(title)
    @backed_projects << title
    if !(title.backers.include?(self))
      title.add_backer(self)
    end
  end
end
