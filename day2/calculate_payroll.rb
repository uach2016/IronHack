module PayEmployees
    def pay_employees()
        @employees.reduce(0) do |sum , employee| 
      	puts "#{employee.name}: #{employee.calculate_salary*0.82}"
       	sum + employee.calculate_salary*0.82
       end
    end
end











class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end



class Hourly_employee < Employee
	attr_reader :name, :email, :hourly_rate, :hours_worked
	def initialize(name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		@hourly_rate * @hours_worked
	end
end 

class Salary_employee < Employee
	attr_reader :name, :email, :salary
	def initialize(name, email, salary)
		super(name, email)
		@salary = salary
	end

	def calculate_salary
		@salary/52
	end
end 

class Multipayment_employee < Employee
	attr_reader :name, :email, :hourly_rate, :hours_worked, :base_salary
	def initialize(name, email, base_salary, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
		@base_salary = base_salary 
	end

	def calculate_salary
		if @hours_worked >= 40
			@base_salary.to_i/52 + (@hours_worked.to_i - 40)* @hourly_rate.to_i
		else 
			(@base_salary)/52
		end
	end
end 

class Payroll
	include PayEmployees
    def initialize(employees)
        @employees = employees
    end

  def notify_employee (employee)
  	puts "Sending email notif to #{employee.name} (email #{employee.email})"
  end
end




josh = Hourly_employee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = Salary_employee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = Multipayment_employee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
employees = [josh, nizar, ted]
payroll = Payroll.new(employees)
puts payroll.pay_employees

payroll.notify_employee(josh)