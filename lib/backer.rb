class Backer

    @backed_projects = []
    attr_reader :projects

  def initialize(projects)
    @projects = projects
  end

  def projects
    @projects
  end

  def back_project(backer)
    @backed_projects << backer
  end



end
