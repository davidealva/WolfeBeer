namespace :db do
  desc "Create 10 buyers"
  task :populate => :environment do
	require 'populator'
	require 'faker'
	  Buyer.populate 10 do |b|
	  b.avatar = Faker::Avatar.image
		b.name = Faker::Name.name
		b.city = Faker::Address.city
		b.country = Faker::Address.country 
		b.quantity = Faker::Number.between(6, 24)
		b.shipped = [true, false].sample
		puts b.name
	  end
	  puts 'All done'
  end
end