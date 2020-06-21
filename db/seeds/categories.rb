Category.create(name: "Smartphones")
Category.create(name: "Shoes")
Category.create(name: "Accesories")

root = Category.create name: 'sport'
# Sport subcategories
basketball_cat = root.children.create name: 'basketball'
fitness_cat = root.children.create name: 'fitness'
# Basketball categories
basketball_cat.children.create name: 'clothing'
basketball_cat.children.create name: 'basketballs'
basketball_cat.children.create name: 'footwear'
# Fitness subcategories
fitness_cat.children.create name: 'dumbbells'
fitness_cat.children.create name: 'benches'
fitness_cat.children.create name: 'kettlebells'
