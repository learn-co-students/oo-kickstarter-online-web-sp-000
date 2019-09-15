class  Project
  attr_reader :title, :project, :backers

  def initialize (title)
    @title = title
    @project
    @backers = []
  end

  def add_backer(backers)
    @backers << backers
  end

end
