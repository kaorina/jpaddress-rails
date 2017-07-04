class  TokyoArea
  class << self
  def all
    [
      {id: 1, name: '都心部', cities:[{id: 13101, name: "千代田区"}, {id: 13102, name: "中央区"}, {id: 13103, name: "港区"}, {id: 13104, name: "新宿区"}, {id: 13105, name: "文京区"}, {id: 13113, name: "渋谷区"}]},
      {id: 2, name: '23区東部', cities:[{id: 13106, name: "台東区"}, {id: 13107, name: "墨田区"}, {id: 13108, name: "江東区"}, {id: 13118, name: "荒川区"}, {id: 13121, name: "足立区"}, {id: 13122, name: "葛飾区"}, {id: 13123, name: "江戸川区"}]}
    ]
  end

  def find(id)
    self.all.find{ |item| item[:id] == id.to_i }
  end

  def find_by_name(name)
    self.all.find{ |item| item[:name] == name }
  end

  def find_by_id(id)
    self.find(id)
  end
  end
end
