class User < ApplicationRecord
	has_many :tasks, dependent: :destroy

	def as_json(options={})
		super(only: [:id, :name, :email]
			methods: [:tasks_counts])
	end

	def tasks_count
		self.tasks.count
	end
end
