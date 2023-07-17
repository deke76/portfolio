# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
NavigationLink.create([
  {
    file: "at-solid.svg",
    order: 4,
    description: "Links",
  },
  {
    file: "bars-solid.svg",
    order: 0,
    description: "Settings",
  },
  {
    file: "circle-info-solid.svg",
    order: 1,
    description: "About Me",
  },
  {
    file: "envelope-solid.svg",
    description: "Contact Me",
    order: 3,
  },
  {
    file: "puzzle-piece-solid.svg",
    description: "Projects",
    order: 2,
  }
])