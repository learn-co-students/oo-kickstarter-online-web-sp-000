class Project
  attr_accessor :projects, :title
  @backed_projects = []

  def initialize(title)
    @title = title
    @backers = []
  end


end
