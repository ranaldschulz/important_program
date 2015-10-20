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
      payment = @hourly_rate * @hours_worked
      puts payment
    end
end

class SalariedEmployee < Employee
	def initialize (name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		payment = 1000000
		puts payment
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
		payment = @salary + (@hours_worked - 40) * @hourly_rate
		puts payment 
	end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

josh.calculate_salary
nizar.calculate_salary
ted.calculate_salary