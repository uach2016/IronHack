class TodoList
    attr_accessor :tasks
    def initialize 
        @tasks = []
    end

	def add_task task
	@tasks.push(task)
	
	#show_task

	end

	def delete_task id
    id = id.to_i
    @tasks.delete_if {|task| task.id == id }
  
  

	end

	def find_task_by_id id
	id = id.to_i
		@tasks.index do |task| 
			if task.id == id 
			task.content
			else 
				nil
			end
		end
	end

	def sorted_by_created
	@array_sorted = @tasks.sort_by! { |task| task.create_at}
		
	end

	def complete_task
		@tasks.each do |task|
			task.complete!
		end

	end
	def show_task
		@tasks.each do |task|
			task.content
		end
	end

end

