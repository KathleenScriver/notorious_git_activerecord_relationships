# file to create test data

#  old non-activerecord way
# Cat.new('Fluffy', 'long-hair', 5)

# activeRecord way
#.new + .save = .create
CatOwner.destroy_all
Cat.destroy_all
Owner.destroy_all


cat1 = Cat.create(
    name: 'Fluffy',
    breed: 'long-hair',
    age: 4
)

cat2 = Cat.create(
    name: 'Journey',
    breed: 'Siamese',
    age: 19
)

cat3 = Cat.create(
    name: 'Dante',
    breed: 'Tabby',
    age: 3
)

owner1 = Owner.create(name: "Bob")
owner2 = Owner.create(name: "Joey")
owner3 = Owner.create(name: "Phoebe")

CatOwner.create(cat: cat1, owner: owner1)
CatOwner.create(cat: cat1, owner: owner2)
CatOwner.create(cat: cat2, owner: owner1)
CatOwner.create(cat: cat2, owner: owner3)
CatOwner.create(cat: cat3, owner: owner3)

