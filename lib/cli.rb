class CLI
  def run
    puts ""
    puts ""
    puts ":=========================:"
    puts "Welcome to the English Premier League!"
    puts "This is a repository of all things EPL!"
    puts ":=========================:"
    puts " "
  
    Scraper.scrape_teams
    menu
    print_teams
  end
  
  def menu
  end
  
  def print_teams
    Team.all.each.with_index(1) do |team, index|
      puts "#{index}. #{team.name}"
  
end