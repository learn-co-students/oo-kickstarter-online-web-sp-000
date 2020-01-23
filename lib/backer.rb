class Backer
    attr_reader :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end 
end 