class Project
  attr_reader :title, :backers
  attr_accessor :project, :backer
  
  def initialize(title)
    @title = title
    @backers = []
    @backer = backer
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
  
end