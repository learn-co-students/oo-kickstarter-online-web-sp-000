class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title=title #or self.title=title
    @backers=[]  #or self.backers=[]
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end
