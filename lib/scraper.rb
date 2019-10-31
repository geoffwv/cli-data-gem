class Scraper
  
  def self.scrape_teams
    html = open("https://www.premierleague.com/clubs")
    doc = Nokogiri::HTML(html)
    doc.css("div.nameContainer")[0].("div.rhs-row").each do |team|
      team = Team.new
      team.name = team.css(".title").text.strip
      team.url = team.css("a").attribute("href").value
    end
  end
  
  def self.scrape_team_details
    html = open("https://www.premierleague.com/clubs/#{team.url}")
    doc = Nokogiri::HTML(html)
  end
  
  
  
end