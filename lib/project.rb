class Project	
    attr_reader :title, :backers	
  
    def initialize(title)	
      @title = title	
    end	
  
    def backers	
      pb = ProjectBacker.all.select {|pb| pb.project == self}	
      pb.map {|pb| pb.backer}	
    end	
  
    def add_backer(backer)	
      ProjectBacker.new(self, backer)	
    end	
  end