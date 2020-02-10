
class Scraper
  def scrape_roster
    doc = Nokogiri::HTML(open("https://www.premierleague.com/clubs/4/Chelsea/squad"))
    player_docs = doc.css('a.playerOverviewCard')
    player_docs.each do |player_doc|
      player_hash = {}
      player_hash["name"] = player_doc.css('h4.name').text
      player_hash["position"] = player_doc.css('span.position').text
      player_hash["number"] = player_doc.css('span.number').text
      player_hash["nationality"] = player_doc.css('span.playerCountry').text
      Player.create_from_hash(player_hash)
    end
  end
end