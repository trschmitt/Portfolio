# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "And spoon half and half in fair trade grounds plunger pot, pumpkin spice java mocha ristretto, instant cortado grinder latte caffeine medium brewed. Kopi-luwak roast bar aroma, organic percolator, et whipped, cup carajillo est pumpkin spice cortado at mocha seasonal. Con panna as est foam sweet frappuccino single origin, turkish milk grounds java, dark, foam flavour coffee whipped sugar redeye. Sugar beans, steamed turkish ristretto french press, caramelization cream, to go caffeine shop sit chicory organic mocha half and half mocha café au lait organic irish ut cup viennese organic. Espresso mug that cup percolator black froth, grinder affogato, sugar id café au lait acerbic, breve, arabica coffee cup siphon organic. Affogato, half and half con panna spoon cup est white, organic, trifecta aroma variety, crema whipped coffee as extraction."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |project|
  Project.create!(
    title: "Application Title #{application}",
    subtitle: "My great service",
    body: "Cupcake ipsum dolor sit amet. Muffin candy canes muffin soufflé oat cake I love macaroon. Pie candy canes chocolate bar caramels cheesecake. Chocolate marshmallow donut cotton candy lollipop gingerbread marshmallow lollipop. I love tootsie roll caramels biscuit I love topping gummi bears apple pie. Candy topping jelly-o jelly beans. Pastry pie I love. Chocolate marshmallow bonbon brownie.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image:"https://via.placeholder.com/350x200"
  )
end

puts "9 Projects created"
