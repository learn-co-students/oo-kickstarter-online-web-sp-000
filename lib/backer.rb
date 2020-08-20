require 'pry'
class Backer
attr_reader :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end


  def back_project(project)
    @backed_projects << project
    #MUST CHECK with if, otherwise infinite loop x tell y to update and y t ell x to update
    if !project.backers.include?(self)
      project.add_backer(self) #self = the backer
    end
  end


end
