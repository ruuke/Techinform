salary_employee = [45000, 7500000, 56000, 7500000, 35000, 3453453]
salary_employee.each_with_index.collect{ |value, index| index if value == salary_employee.max }.compact.last
