# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


airlines = Airline.create([
  {
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  },
  {
    name: "Southwest",
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
  },
  {
    name: "Delta",
    image_url: "https://open-flights.s3.amazonaws.com/Delta.png"
  },
  {
    name: "Alaska Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png"
  },
  {
    name: "JetBlue",
    image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png"
  },
  {
    name: "American Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png"
  }
])

  Review.create([
  {
    airline: airlines.first,
    title: "Good Flight",
    score: 5,
    description: "I had a great time with this airline. The staff were very helpful and the plane was very clean and well maintained. I would recommend this airline to anyone who is looking for a great experience."
  },
  {
    airline: airlines.first,
    title: "Good Flight",
    score: 4,
    description: "I had a great time with this airline. The staff were very helpful and the plane was very clean and well maintained. I would recommend this airline to anyone who is looking for a great experience."
  },
  {
    airline: airlines.first,
    title: "Bad Flight",
    score: 3,
    description: "Nice"
  },
  {
    airline: airlines.first,
    title: "Bad Flight",
    score: 2,
    description: "Not good, over all"
  },
  {
    airline: airlines.first,
    title: "Bad Flight",
    score: 1,
    description: "I had a bad time."
  }
])
