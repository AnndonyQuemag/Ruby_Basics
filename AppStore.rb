module AppStore

  App = Struct.new(:name, :developer, :version)# symbols are provided as arguments that will function as attributes, instance variables

  APPS = [#is a constant
    App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :twitter, 5.8),
    App.new(:Weather, :yahoo, 10.15)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name }
  end
end
