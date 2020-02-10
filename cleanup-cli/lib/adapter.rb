class Adapter

  def start
    url = "https://pokeapi.co/api/v2/pokemon?offset=0&limit=100"
    #talk with the api
    response = RestClient.get(url)
    #parse the response from the api
    hash = JSON.parse(response, symbolize_names: true)

    Character_Creator.new.(hash)
  end

end