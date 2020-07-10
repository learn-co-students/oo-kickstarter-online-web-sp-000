class Backer
  attr_reader :backed_projects, :name
  @@all = []

  def initialize (name)
    @name = name
    @backed_projects = []
    @@all << self
  end

  def back_project(project)
     @backed_projects << project
     !project.backers.include?(self) ? project.add_backer(self) : nil

  end
end
