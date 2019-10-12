class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

#accepts a Backer as an argument and stores it in a backers array
#also adds the project to the backer\'s backed_projects array
def add_backer(backer)
  #intiliaze backer object and push to array
  @backers << backer

  #add project to Backers backed project
  backer.backed_projects << self
end
  #end of class
end

#       +[#<Project:0x000000000203ead8 @title=#<Project:0x000000000203ee20 @title="Magic The Gathering Thing", @backers=[]>, @backers=[]>]
