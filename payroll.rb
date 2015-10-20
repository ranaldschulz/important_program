class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      # puts "Josh's salary is $#{payment}"
      payment = @hourly_rate * @hours_worked
      
    end
end

class SalariedEmployee < Employee
	def initialize (name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		# puts "Nizar's salary is $#{payment}"
		payment = 1000000
	end
end

class MultiPaymentEmployee < Employee
	def initialize (name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		# puts "Ted's salary is $#{payment}" 
		payment = @salary + (@hours_worked - 40) * @hourly_rate
		
	end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end



  	def pay_employees
  	# Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
    total = 0
    @employees.each { | emps |
    	puts "#{emps.name} makes $#{(emps.calculate_salary * 0.82).to_i}"
    	total += emps.calculate_salary
    }
    puts "Total amount paid: $#{(total * 0.82).to_i}"
    notify_employee
    end

    def notify_employee
        @employees.each { | emps |
    	puts "#{emps.name} you have been paid $#{(emps.calculate_salary * 0.82).to_i}"
    }
    	
    end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
randy = HourlyEmployee.new("Randy", "ranalds@gmail.com", 15, 40)
juan = HourlyEmployee.new("Juan", "juan@gmail.com", 15, 40)

employees = [josh, nizar, ted, randy, juan]
payroll = Payroll.new(employees)
payroll.pay_employees

# josh.calculate_salary
# nizar.calculate_salary
# ted.calculate_salary





