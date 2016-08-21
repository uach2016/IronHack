# RSpec.describe "check my conten" do

# 	before :all do
# 		@taski = Task.new("wash the dishes")
# 	end

# 	 it "check content"  do
# 	 	expect(@taski.complete?).to eq (false)
# 	end
# 	 it "content true"  do
# 	 	expect(@taski.complete!).to eq (true)
# 	end
# 	 it "content false"  do
# 	 	expect(@taski.make_incomplete!).to eq (false)
# 	end

# 	it "update_content" do
# 		@taski.update_content!("our_content")
# 		expect(@taski.content).to eq "our_content"
# 	end
# end


# RSpec.describe "TodoList" do

# 	before :all do
# 		@task = Task.new
# 	end

# 	 it "add task"  do
# 	 	expect(@task.add_task("wash the dishes")).to eq (true)
# 	end
# 	 it "delete task"  do
# 	 	expect(@task.delete_task(1)).to eq (true)
# 	end
# 	#  it "content false"  do
# 	#  	expect(@taski.make_incomplete!).to eq (false)
# 	# end

# 	# it "update_content" do
# 	# 	@taski.update_content!("our_content")
# 	# 	expect(@taski.content).to eq "our_content"
# 	# end
# end
