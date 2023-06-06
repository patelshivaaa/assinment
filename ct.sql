import csv

# Read department data from CSV
departments = {}
with open('department.csv', 'r') as dept_file:
    dept_reader = csv.DictReader(dept_file)
    for row in dept_reader:
        departments[row['DEPT_NAME']] = []

# Read employee data from CSV and calculate average monthly salary per department
with open('employee.csv', 'r') as emp_file:
    emp_reader = csv.DictReader(emp_file)
    for row in emp_reader:
        department = row['DEPT_NAME']
        salary = float(row['MONTHLY_SALARY'])
        departments[department].append(salary)

# Calculate average monthly salary per department and sort by descending order
avg_salaries = [(dept, sum(salaries) / len(salaries)) for dept, salaries in departments.items()]
avg_salaries.sort(key=lambda x: x[1], reverse=True)

# Print top 3 departments with their average monthly salaries
print("DEPT_NAME")
print("AVG_MONTHLY_SALARY (USD)")
for dept, avg_salary in avg_salaries[:3]:
    print(dept)
    print(avg_salary)
    print()
