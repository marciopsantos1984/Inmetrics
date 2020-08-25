module Api
    include HTTParty
    base_uri 'https://inm-api-test.herokuapp.com/'
    format :json
end
