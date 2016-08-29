# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name:'Computer Science'); #1
Category.create(name:'Web Application'); #2
Category.create(name:'Desktop Application'); #3
Category.create(name:'Mathematics'); #4
Category.create(name:'Physics'); #5

computer_science_id = Category.find_by_name('Computer Science').id

SubCategory.create(name:'Algorithm',category_id: computer_science_id);
SubCategory.create(name:'Artificial Intelligence',category_id: computer_science_id);
SubCategory.create(name:'Digital Logic',category_id: computer_science_id);
SubCategory.create(name:'Software Development',category_id: computer_science_id);

web_application_id = Category.find_by_name('Web Application').id

SubCategory.create(name:'HTML',category_id: web_application_id);
SubCategory.create(name:'CSS',category_id: web_application_id);
SubCategory.create(name:'JavaScript',category_id: web_application_id);
SubCategory.create(name:'JQuery',category_id: web_application_id);

desktop_application_id = Category.find_by_name('Desktop Application').id

SubCategory.create(name:'Java Application',category_id: desktop_application_id);
SubCategory.create(name:'C# Application',category_id: desktop_application_id);
SubCategory.create(name:'Python Application',category_id: desktop_application_id);
SubCategory.create(name:'C++ Application',category_id: desktop_application_id);

mathematics_id = Category.find_by_name('Mathematics').id

SubCategory.create(name:'Probability',category_id: mathematics_id);
SubCategory.create(name:'Statistics',category_id: mathematics_id);
SubCategory.create(name:'Accounting',category_id: mathematics_id);
SubCategory.create(name:'Calculus',category_id: mathematics_id);

physices_id = Category.find_by_name('Physics').id

SubCategory.create(name:'Light',category_id: physices_id);
SubCategory.create(name:'Heat',category_id: physices_id);
SubCategory.create(name:'Sound',category_id: physices_id);
SubCategory.create(name:'Mechanics',category_id: physices_id);
