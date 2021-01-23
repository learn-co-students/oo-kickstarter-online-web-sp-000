
class Project
  attr_reader :title, :backers

  def initialize(title) #hoverboard
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if @backers.detect { |current_backer| current_backer == backer }.nil?
      @backers << backer
      backer.back_project(self)
      # also update backed_projects list with project name
    end 
  end


end #class end
