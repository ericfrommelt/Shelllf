

class Gbook

  def self.search_by_title(book_title)
    search_url = 'https://www.googleapis.com/books/v1/volumes?q='
    key = 'AIzaSyCn2V7OKOdfbnRbEgCuogxt-53tjQr-7go'
    api_response = HTTParty.get(URI.escape(search_url + book_title + '&key=' + key))
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
