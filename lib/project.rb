class Project

  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    @backers << backer
    backer.add_project(self)
    # if @backed_projects.include?(self) == false
    #   backer.add_backer(self)
    # end

    # if (!backer.backedProjects.contains(self)) {
    #   backer.back_project(self)
    # }
  end



end
