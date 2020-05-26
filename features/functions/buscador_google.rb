class Google < SitePrism::Page
    set_url "https://www.google.com.br/"
    element :search_field, '#tsf > div:nth-child(2) > div.A8SBwf > div.RNNXgb > div > div.a4bIc > input'
    element :go_search, '#tsf > div:nth-child(2) > div.A8SBwf.emcav > div.UUbT9 > div.aajZCb > div.tfB0Bf > center > input.gNO89b'
    element :searched, '#rhs > div'
    element :results_stats, '#result-stats'
    def googler(text)
        self.search_field.set text
        self.go_search.click 
    end
end