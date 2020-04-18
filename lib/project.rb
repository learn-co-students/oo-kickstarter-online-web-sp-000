class Project
  
  attr_accessor :backers, :title
  
  
  
  def initialize(title)
    @backers = []
    @title = title
  end
  
  def add_backer(backer)
     
     if !@backers.include?(backer)
       @backers << backer
        backer.back_project(self)
     end
  end
  
  
  
end