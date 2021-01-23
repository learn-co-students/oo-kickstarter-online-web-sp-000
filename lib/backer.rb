
class Backer
  attr_reader :name, :backed_projects

  def initialize(name) #Logan
    @name = name
    @backed_projects = []
  end

  def back_project(project) #hoverboard
    if @backed_projects.detect { |current_project| current_project == project }.nil?
      @backed_projects << project
      project.add_backer(self)
    end
  end

end #class end


# def add_backer(backer)
#   if @backers.detect { |current_backer| current_backer == backer }.nil?
#     @backers << backer
#     backer.back_project(self)
#     # also update backed_projects list with project name
#   end
# end
