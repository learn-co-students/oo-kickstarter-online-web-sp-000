require 'pry'

class Backer
    attr_accessor :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end 
    
    def back_project(project)
        backed_projects << project
        # it also adds the backer of the project to the project's backer
        # I have to add the backer instance to the backers array (Project.backers)
        project.backers << self 
    end
end 

# logan = Backer.new("Logan")
# hoverboard = Project.new("Awesome Hoverboard")
# logan.back_project(hoverboard)
# # expect(hoverboard.backers).to include(logan)

