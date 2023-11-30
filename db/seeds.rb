5.times do
  Type.create!(
    title: FFaker::Lorem.word
  )
end

types = Type.all

5.times do
  Biblioteka.create!(
    title: FFaker::Lorem.word,
    city: FFaker::Address.city,
    address: FFaker::Address.street_address,
    type: types.sample
  )
end

libraries = Biblioteka.all

5.times do
  Found.create!(
                library: libraries.sample,
                title: FFaker::Lorem.word,
                count_books: rand(100),
                count_journals: rand(50),
                count_newspapers: rand(30),
                count_sbornikov: rand(20),
                count_dissertations: rand(10),
                count_referats: rand(5)
  )
end

founds = Found.all

5.times do
  Employee.create!(
                    library: libraries.sample,
                    name: FFaker::Name.first_name,
                    surname: FFaker::Name.last_name,
                    birthday: FFaker::Time.between(50.years.ago, 20.years.ago).to_date,
                    start_of_work_year: rand(2000..2022),
                    education: FFaker::Education.degree,
                    salary: rand(30000..80000)
  )
end

employees = Employee.all

5.times do
  Replenishment.create!(
    library: libraries.sample,
    employee: employees.sample,
    found: founds.sample,
    date: FFaker::Time.between(5.years.ago, Date.today).to_date,
    literature_source: FFaker::Book.title,
    publishing_house: FFaker::Book.author,
    publication_date: FFaker::Time.between(20.years.ago, Date.today).to_date,
    count_copies: rand(1..100)
  )
end
