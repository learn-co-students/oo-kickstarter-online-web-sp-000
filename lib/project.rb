class Project
  attr_reader :title 
  attr_accessor :backers
  
#  @@projects = []
  # @@backers = []
  
  def initialize(title)
    @title = title
    @backers = []
    
    # @@backers = @backers 
  end
  
#  def self.backer
#    @backers
#  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  
 # def self.projects
 #   @@projects
 # end 
  
end ## end of Project class 

=begin #########################################################################

describe 'Project - More Advanced #add_backer' do
  it 'also adds the project to the backer\'s backed_projects array' do
    ropes = Project.new("All The Ropes")
    arel = Backer.new("Arel")
    ropes.add_backer(arel)

    # Same thing here. There's only one place we can tell arel about his newly
    # backed project. Where does that need to happen?
    expect(arel.backed_projects).to include(ropes)
  end
end

=end ############################################################################