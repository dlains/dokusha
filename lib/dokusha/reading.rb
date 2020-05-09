module Dokusha
  class Reading
    attr_reader :text, :type

    def initialize(text, type = "on")
      @text = text
      @type = type
    end

    def self.find(text)
      query = "MATCH (r:reading {text: '#{text}'}) RETURN r"
      response = Dokusha.graph.query(query)
      return Reading.new(response.resultset[0][0][0]["text"], response.resultset[0][0][1]["type"])
    end

    def create
      query = "CREATE (:reading {text: '#{@text}', type: '#{@type}'})"
      Dokusha.graph.query(query)
    end

    def delete
      query = "MATCH(r:reading {text: '#{@text}'}) DELETE r"
      Dokusha.graph.query(query)
    end
  end
end
