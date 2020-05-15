class Backer
    attr_reader :backed_projects, :name

    def initialize(name)
        @backed_projects = []
        @name = name
    end

    def back_project(project)
        if (self.backed_projects.include?(project) == false)
            self.backed_projects << project
            project.add_backer(self)
        end    
    end
end

#nick = Backer.new("Nick")
#coding = Project.new("Coding")

#stu = Backer.new("Stu")