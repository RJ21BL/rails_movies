load File.expand_path("setup.rb", __dir__)

# Task 1:
# I you to look up in the array and hashes and find the person
# that is age greater than or equal to a given value provided in the argument
# group by location and print them as....
# display_profiles(hr_profile, holiday_list, age: 65, date: Date.parse("30 Dec 2021"))
# London:
#   Peter Wu age 65 is not working on the 30 Dec 2021
# NCC:
#   Scary Clown age 99 is working on the 30 Dec 2021

hr_profile = {
  pwu: { employee_id: 111, age: 65, firstname: 'Peter', lastname: 'Wu', location: 'London'},
  rlawrence: { employee_id: 222, age: 18, firstname: 'Richard', lastname: 'Lawrence', location: 'NCC'},
  jsmith: { employee_id: 333, age: 24, firstname: 'John', lastname: 'Smith', location: 'Boston'},
  jwatson: { employee_id: 456, age: 27, firstname: 'John', lastname: 'Watson', location: 'London'},
  sholmes: { employee_id: 342, age: 21, firstname: 'Sherlock', lastname: 'Holmes', location: 'London'},
  sclown: { employee_id: 564, age: 99, firstname: 'Scary', lastname: 'Clown', location: 'NCC'},
}

holiday_list = [
  [employee_id: 111, date: "2021-12-30"],
  [employee_id: 111, date: "2021-12-31"],
  [employee_id: 111, date: "2021-12-28"],
  [employee_id: 111, date: "2021-12-29"],
  [employee_id: 333, date: "2021-12-29"],
  [employee_id: 333, date: "2021-12-30"],
  [employee_id: 564, date: "2021-12-27"],
  [employee_id: 222, date: "2021-12-28"],
  [employee_id: 222, date: "2021-12-30"],
]

def display_profiles(hr_profile, holiday_list, age, date)
  # fill me
end

# display_profiles(hr_profile, holiday_list, age: 65, date: Date.parse("30 Dec 2021"))
# London:
#   Peter Wu age 65 is not working on the 30 Dec 2021
# NCC:
#   Scary Clown age 99 is working on the 30 Dec 2021

# display_profiles(hr_profile, holiday_list, age: 22, date: Date.parse("29 Dec 2021"))
# London:
#   Peter Wu age 65 is not working on the 30 Dec 2021
#   John Watson age 27 is working on the 30 Dec 2021
# Boston:
#   John Smith age 24 is not working on the 30 Dec 2021
# NCC:
#   Scary Clown age 99 is working on the 30 Dec 2021
