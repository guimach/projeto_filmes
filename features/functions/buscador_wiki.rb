class Wiki < SitePrism::Page
    set_url "https://www.wikipedia.org/"
    element :search_field, '#searchInput'
    element :go_search, '#js-lang-list-button > span'
    element :searched, '#mw-content-text'
    def wiker(text)
        self.search_field.set text
        self.go_search.click 
    end
end