A CLI that searches races by zip code and radius:

User inputs zip code and radius

Show a list of first 20 race results by title:

1. Healthy Trails 5K
2. Defeat DIPG Superhero Sprint & 6K
3. 3rd Annual Totally Fun TuTu Run
4. Alex's Run
5. PGRC Running Start 5k Training - Summer 2017
etc...

Which race would you like to learn more about? 
Enter number:

1

Show title, url, location, date, and distance


#Where do these really need to go?
#in gemspec? What if they're already in ...???
#just remember to think about these

spec.add_development_dependency "bundler", "~> 1.11"
spec.add_development_dependency "rake", "~> 10.0"
spec.add_development_dependency "rspec", "~> 3.0"
spec.add_development_dependency "pry"
spec.add_dependency "nokogiri"