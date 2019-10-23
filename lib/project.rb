class Project
  attr_reader :backers, :title
  def initialize(project_name)
    @title = project_name
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self)
  end

end