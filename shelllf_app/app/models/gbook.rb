

class Gbook

  def self.search_by_title(book_title)
    search_url = 'https://www.googleapis.com/books/v1/volumes?q='
    key = '&key=AIzaSyCsOxGmZoknlGgsE0Vgi7zS8hx8zSKMqk4'
    api_response = HTTParty.get(URI.escape(search_url + book_title + key))
    search_results = api_response['items']

    result = search_results.map do |result|
      {
        :gbook_id_number => result['id'],
        :title => result['volumeInfo']['title'],
        :author => result['volumeInfo']['authors'].nil? ? "What's an author?" : result['volumeInfo']['authors'].join(', '),
        :year_published => result['volumeInfo']['publishedDate'],
        :publisher => result['volumeInfo']['publisher']
      }

    end
  end
end
