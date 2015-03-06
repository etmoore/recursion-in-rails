Page.delete_all
User.delete_all

level1 = []

3.times do
  level1 << Page.create!(
    title: Faker::Company.bs.capitalize,
    body: Faker::Lorem.paragraphs(5).join("\n\n"),
  )
end

level2 = level1.flat_map do |page|
  rand(5).times.map do
    Page.create!(
      title: Faker::Company.bs.capitalize,
      body: Faker::Lorem.paragraphs(5).join("\n\n"),
      page: page
    )
  end
end

level3 = level2.flat_map do |page|
  rand(5).times.map do
    Page.create!(
      title: Faker::Company.bs.capitalize,
      body: Faker::Lorem.paragraphs(5).join("\n\n"),
      page: page
    )
  end
end

level3.each do |page|
  rand(5).times.map do
    Page.create!(
      title: Faker::Company.bs.capitalize,
      body: Faker::Lorem.paragraphs(5).join("\n\n"),
      page: page
    )
  end
end

level1 = []

3.times do
  level1 << User.create!(
    name: Faker::Name.name
  )
end

level2 = level1.flat_map do |user|
  rand(5).times.map do
    User.create!(
      name: Faker::Name.name,
      manager: user,
    )
  end
end

level3 = level2.flat_map do |user|
  rand(5).times.map do
    User.create!(
      name: Faker::Name.name,
      manager: user,
    )
  end
end

level3.each  do |user|
  rand(5).times.map do
    User.create!(
      name: Faker::Name.name,
      manager: user,
    )
  end
end
