resorts = { :'Янгантау' => 23000.5, :'Сочи' => 53432.4, :'Солилецк' =>
            14523.5, :'Байкал' => 21534.5, :'Крым' => 16234.3, :'Абзаково' =>
            26234.6, :'Алтай' => 32534.8, :'Амарант' => 42534.8 }

resorts.select { |key, value| key =~ (/А/) && value < 40000 }
