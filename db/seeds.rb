Company.destroy_all
Job.destroy_all

COMPANIES = ["ESPN", "Aetna", "United Airlines", "Denver Public Schools", "Shopify", "Starbucks", "Pivotal Labs", "Captain U"]
JOBS = ["Engineering", "Development", "Dev Ops", "Quality Assurance", "Teacher", "Product Manager", "Consultant", "Community Manager"]
CITIES = ["Seattle", "Denver", "Portland", "Indianapolis", "Madison", "Orlando", "San Diego", "Austin", "Las Vegas", "Little Rock", "Boise", "Eugene", "Oakland"]
category1 = Category.create(title: "Airplane")
category2 = Category.create(title: "Train")
category3 = Category.create(title: "Hot Air Balloon")
CATEGORIES = [category1.id, category2.id, category3.id, category1.id, category2.id, category3.id, category1.id, category2.id, category3.id, category2.id]

COMPANIES.each do |name|
  company = Company.create!(name: name)
  puts "Created #{company.name}"
  10.times do |num|
    company.jobs.create!(title: JOBS.sample, description: "What a great position!", level_of_interest: num + rand(100), city: CITIES.sample, category_id: CATEGORIES.sample)
    puts "  Created #{company.jobs[num].title}"
  end
end
