class Manager < Employee
    def initialize
        super(name, "manager", salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        counter = 0

        @employees.each do |el|
            if el.title == "manager"

            end
            counter += el.salary
        end
        counter*multiplier
    end
end