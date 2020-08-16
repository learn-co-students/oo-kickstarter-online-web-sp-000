class Backer
    attr_reader :backed_projects, :name

    def initialize(name)
        @backed_projects = []
        @name = name
    end

    def back_project(project)
        #that takes in a Project instance and adds the project to its @backed_projects attribute.
        @backed_projects << project
        #Whenever back_project() is called to update @backed_projects, the project should alsoupdate its @backers list.
        project.backers << self
    end
end