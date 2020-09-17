require "pry"

class Backer
    attr_accessor :name, :backed_projects

    def initialize(name)
        @name = name
        #Backer initializes with a name
        @backed_projects = []
        #Initializes with a backed_projects attribute, an empty array
        #Means put it in the attr accessor and make it = []
    end 

    def back_project(project)
        @backed_projects << project
        #Backing a project puts the project fed into the argument into the backers backed project array
        project.backers << self
        #And puts itself (the Backer) into the array of the project backers
    end 
    #And now project and backer no longer look like words. @.@
end 