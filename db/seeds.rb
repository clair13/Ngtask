15.times do
  citation = Citation.new
  citation.description = Faker::GreekPhilosophers.quote[1..199]
  citation.name = Faker::GreekPhilosophers.name
  citation.save
  5.times do 
    comment = Comment.new
    comment.body = Faker::Lorem.word
    comment.citation = citation
    comment.save
  end
end