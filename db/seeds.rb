10.times do
	Author.create(name: Faker::Name.name, 
								email: Faker::Internet.email)
end


20.times do
	selected_author = Author.all.sample
	status = [true, false].sample
	Article.create(author_id: selected_author.id, 
								 title: Faker::Company.catch_phrase, 
								 body: Faker::Lorem.paragraph(15),
								 current: status)
end

40.times do
	selected_article = Article.all.sample
	Comment.create(article_id: selected_article.id,
								 body: Faker::Lorem.paragraph(2))
end

20.times do
	Product.create(name: Faker::Commerce.product_name,
								 price: Faker::Number.number([4,5,6].sample),
								 image: Faker::Avatar.image)
end
