class Backer
    
    attr_accessor :name

    attr_reader :project


    def initialize(name)
        @name = name
        @backed_projects = []
        end

    def back_project(project)
        @backed_projects << project
        project.backers << self
    end

    def project(project)
        project.add_backer = self unless project.add_backer == self
    end

    def backed_projects
        @backed_projects

    end
end

        #initioalized with a name