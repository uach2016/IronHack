class Task
    attr_reader :content, :id, :create_at, :update_at
    @@current_id = 1
    def initialize content
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @create_at = Time.now
        @update_at = nil
    end

    def complete
    @content = content
    
    end

    def complete?    
    	@complete
    end

    def complete!
		@complete = true
	end

	def make_incomplete!
		@complete = !complete!
	end

	def update_content! our_content
		@content = our_content
		@update_at = Time.now
	end

end







