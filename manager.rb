require_relative "./employee.rb"

class Manager < Employee

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        counter = 0
        @employees.each do |el|
            #if el is a manager
            if el.is_a?(Manager)
                counter += el.salary + el.bonus(1)
            else
                #do this if el is an employee
                counter += el.salary
            end
        end
        counter*multiplier
    end

    def assign_employee(employee)
        @employees << employee
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA", 78000, ned)
david = Employee.new("David", "TA", 10000, darren)
shawna = Employee.new("Shawna", "TA", 12000, darren)

ned.assign_employee(darren)
darren.assign_employee(david)
darren.assign_employee(shawna)

#darren.bonus(4)
#counter = 0
#[david,shawna].each do
#