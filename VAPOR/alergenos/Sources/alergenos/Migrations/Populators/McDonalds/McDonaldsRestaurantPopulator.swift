import Foundation

struct McDonaldsRestaurantPopulator {
    static func getRestaurants(mcdonalds: Restaurant) -> [RestaurantVariant] {
        do { return [
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcalá",
                address: "Calle de Alcalá, 396, 28027, Madrid, Madrid",
                latitude: 40.4367,
                longitude: -3.64027,
                phoneNumber: 913771464,
                mail: "alcala.2@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Montera",
                address: "Calle de la Montera, 47, 28013, Madrid, Madrid",
                latitude: 40.4199,
                longitude: -3.70164,
                phoneNumber: 915313711,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pelayo",
                address: "Carrer de Pelai, 62, 08001, Barcelona, Barcelona",
                latitude: 41.3854,
                longitude: 2.16975,
                phoneNumber: 933182990,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Esparteros",
                address: "Calle de Esparteros, 1, 28012, Madrid, Madrid",
                latitude: 40.4165,
                longitude: -3.70483,
                phoneNumber: 626489052,
                mail: "esparteros.7@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "C.C. La Vaguada",
                address: "Avenida de Monforte de Lemos, 36, 32, 28029, Madrid, Madrid",
                latitude: 40.4798,
                longitude: -3.70705,
                phoneNumber: 917300234,
                mail: "lavaguada.10@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ramblas",
                address: "Rambla dels Caputxins, 60, 08002, Barcelona, Barcelona",
                latitude: 41.3805,
                longitude: 2.1742,
                phoneNumber: 933179887,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alicante Explanada",
                address: "Passeig Esplanada d'Espanya, 8, 03002, Alicante, Alicante/Alacant",
                latitude: 38.3437,
                longitude: -0.482519,
                phoneNumber: 687566799,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Nova",
                address: "Passeig Mar, 7, 07181, Calviá, Islas Baleares",
                latitude: 39.5215,
                longitude: 2.53755,
                phoneNumber: 971682951,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia Novo Centro",
                address: "Centro Comercial Novo Centro Avda. Pío XII, 2 Locales 52, 53, 54, 46009, Valencia, Valencia/València",
                latitude: 39.4799,
                longitude: -0.390252,
                phoneNumber: 963482784,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Malaga Los Patios",
                address: "Avenida de Velázquez, 241, 29004, Málaga, Málaga",
                latitude: 36.6865,
                longitude: -4.45805,
                phoneNumber: 952620796,
                mail: "malagapryca.17@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Isaac Peral",
                address: "Calle de Isaac Peral, 4, 28015, Madrid, Madrid",
                latitude: 40.435,
                longitude: -3.71812,
                phoneNumber: 915443812,
                mail: "isaacperal.clientes.mcd@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carrefour Alcobendas",
                address: "A-1, 14.500, 28100, Alcobendas, Madrid",
                latitude: 40.526,
                longitude: -3.65192,
                phoneNumber: 916620438,
                mail: "continente.19@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Oviedo",
                address: "Calle Uria, 26 bajo, 33003, Oviedo, Asturias",
                latitude: 43.3636,
                longitude: -5.85041,
                phoneNumber: 985210353,
                mail: "oviedo.20@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Baricentro",
                address: "Carretera Nacional 150 km 6,7 Centro Comercial Baricentro Local 41, Carretera Sabadell, Salida 7, 08210, Barberá del Vallés, Barcelona",
                latitude: 41.5083,
                longitude: 2.13985,
                phoneNumber: 937185522,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Pío Xii",
                address: "Plaça Rei, Joan Carles I, 7, 07012, Palma de Mallorca, Islas Baleares",
                latitude: 39.5712,
                longitude: 2.64731,
                phoneNumber: 626502323,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Benidorm",
                address: "Plaza de la Hispanidad, 3, 03503, Benidorm, Alicante/Alacant",
                latitude: 38.5376,
                longitude: -0.126336,
                phoneNumber: 965867513,
                mail: "benidorm.28@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Malaga Plaza De La Marina",
                address: "Plaza de la Marina, 2, 29015, Málaga, Málaga",
                latitude: 36.7185,
                longitude: -4.42076,
                phoneNumber: 952214761,
                mail: "malagacentro.29@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Playa De Las Américas",
                address: "Centro Comercial Gala, Avda. Litoral, s/n, 38640, Arona, Santa Cruz de Tenerife",
                latitude: 28.0666,
                longitude: -16.7318,
                phoneNumber: 922752144,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Salou",
                address: "Pº Jaime I, 22, 43840, Salou, Tarragona",
                latitude: 41.0748,
                longitude: 1.13959,
                phoneNumber: 977350200,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Juan Playa",
                address: "Avenida de Niza, 12, 03540, Playa de San Juan, Alicante/Alacant",
                latitude: 38.3704,
                longitude: -0.410576,
                phoneNumber: 965151944,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Albacete",
                address: "Centro Comercial, Avenida Primero de Mayo, s/n, 02006, Albacete, Albacete",
                latitude: 38.9845,
                longitude: -1.86788,
                phoneNumber: 967502812,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Campana",
                address: "Calle Campana, 5, 41004, Sevilla, Sevilla",
                latitude: 37.3925,
                longitude: -5.99502,
                phoneNumber: 644085014,
                mail: "sevillalacampana.36@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sedaví",
                address: "Avinguda de la Albufera, 101, Centro Comercial Sedavi, 46910, Sedaví, Valencia/València",
                latitude: 39.4207,
                longitude: -0.377224,
                phoneNumber: 963940522,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zocodover",
                address: "Plaza Zocodover, 13, 45001, Toledo, Toledo",
                latitude: 39.8592,
                longitude: -4.02133,
                phoneNumber: 925252655,
                mail: "toledo.40@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plaza Candelaria",
                address: "Plaza de la Candelaria Esquina, Calle de Cruz Verde, 7, 38003, Santa Cruz de Tenerife, Santa Cruz de Tenerife",
                latitude: 28.46678,
                longitude: -16.249031,
                phoneNumber: 922240371,
                mail: "candelaria.41@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cuatro Caminos",
                address: "Glorieta de Cuatro Caminos, 5, 28020, Madrid, Madrid",
                latitude: 40.4475,
                longitude: -3.704,
                phoneNumber: 915539979,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Montigalà",
                address: "Passeig Olof Palme, 28-36, a1, 08917, Badalona, Barcelona",
                latitude: 41.4555,
                longitude: 2.22737,
                phoneNumber: 934653238,
                mail: "montigala.44@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Joaquin",
                address: "Carrer de Mar, 1, 3, 08911, Badalona, Barcelona",
                latitude: 41.447,
                longitude: 2.25032,
                phoneNumber: 934640828,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Delicias",
                address: "Paseo de las Delicias, 5, 41001, Sevilla, Sevilla",
                latitude: 37.3816,
                longitude: -5.99514,
                phoneNumber: 695130241,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mayor De Gracia",
                address: "C, Carrer Gran de Gràcia, 113, 08012, Barcelona, Barcelona",
                latitude: 41.4014,
                longitude: 2.1535,
                phoneNumber: 932178432,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Puerto De La Cruz",
                address: "Hotel Las Vegas, Avenida de Cristobal Colón, 5, Bajos, 38400, Puerto de la Cruz, Santa Cruz de Tenerife",
                latitude: 28.4173,
                longitude: -16.5449,
                phoneNumber: 922374701,
                mail: "puertodelacruz.49@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Majadahonda",
                address: "Avenida de España, s/n, 28220, Majadahonda, Madrid",
                latitude: 40.4654,
                longitude: -3.86649,
                phoneNumber: 916340402,
                mail: "Majadahonda.50@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Bilbondo",
                address: "Zabalandi Auzoa, S/N, 48970, Basauri, Vizcaya",
                latitude: 43.229293,
                longitude: -2.875398,
                phoneNumber: 944401807,
                mail: "bilbao.52@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Laguna (Cc Alcampo)",
                address: "Centro Comercial Alcampo, Alcampo, 38205, La Laguna, Santa Cruz de Tenerife",
                latitude: 28.4608,
                longitude: -16.306,
                phoneNumber: 922311415,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcalá De Henares",
                address: "Plaza de Cervantes, 17, 28801, Alcalá de Henares, Madrid",
                latitude: 40.4824,
                longitude: -3.36456,
                phoneNumber: 918834211,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villa Olímpica",
                address: "Villa Olímpica - Parc de Mar | C/ Jaime Vicens Vives, nº 2, 08005, Barcelona, Barcelona",
                latitude: 41.3927,
                longitude: 2.20365,
                phoneNumber: 932212435,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Sabadell Paddock",
                address: "Centro Comercial Paddock Boulevard, Avda. FranÇés Macia, 46, 08206, Sabadell, Barcelona",
                latitude: 41.5535,
                longitude: 2.09823,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puerto De Santa María",
                address: "N-IV, Km 653, 11500, Puerto de Santa María, Cádiz",
                latitude: 36.616,
                longitude: -6.2113,
                phoneNumber: 956855033,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Gran Turia",
                address: "Centro Comercial Gran Turia Plaza de Europa, Avenida Tres Forques, s/n, 46014, Xirivella, Valencia/València",
                latitude: 39.4648,
                longitude: -0.414015,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Las Arenas",
                address: "Centro Comercial Las Arenas C/ Pavia, 18 Local T 7, 35010, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.1288,
                longitude: -15.4488,
                phoneNumber: 689363883,
                mail: "lasarenas@mcdlaspalmas.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S La Ballena",
                address: "Carretera Del Norte, 112, 35013, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.101078,
                longitude: -15.442465,
                phoneNumber: 683182481,
                mail: "laballena@mcdlaspalmas.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga - La Rosaleda",
                address: "Centro Comercial Rosaleda, Avenida de Luis Buñuel, S/N, Local 42B, 29011, Málaga, Málaga",
                latitude: 36.7342,
                longitude: -4.4314,
                phoneNumber: 952393738,
                mail: "malagalarosaleda.67@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcorcón",
                address: "Parque Oeste, Avenida de Europa, 10, 28922, Alcorcón, Madrid",
                latitude: 40.3487,
                longitude: -3.85119,
                phoneNumber: 916890148,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santa Faz",
                address: "Avinguda de Dénia, 173, 03559, Alicante, Alicante/Alacant",
                latitude: 38.383,
                longitude: -0.451681,
                phoneNumber: 636022165,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zamora",
                address: "Centro Comercial Valderaduey, Avenida del Cardenal Cisneros, s/n, 49023, Zamora, Zamora",
                latitude: 41.5145,
                longitude: -5.74641,
                phoneNumber: 663084712,
                mail: "zamora.73@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S La Dehesa",
                address: "Centro Comercial La Dehesa |, Carretera Nacional II, Km. 34, 28805, Alcalá de Henares, Madrid",
                latitude: 40.5042,
                longitude: -3.32988,
                phoneNumber: 918812959,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Gerona",
                address: "Centro Comercial Mas Gri Parcela 4, Calle Barcelona, s/n, 17003, Gerona, Gerona",
                latitude: 41.9604,
                longitude: 2.81153,
                phoneNumber: 972908209,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Arcángel",
                address: "Locales B-21, MA-05 Centro Comercial, Avenida del Arcángel, s/n, 14010, Córdoba, Córdoba",
                latitude: 37.8772,
                longitude: -4.7665,
                phoneNumber: 957750032,
                mail: "cordoba.78@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valladolid - El Palero",
                address: "Calle de Puerto Rico, 8, 47014, Valladolid, Valladolid",
                latitude: 41.6368,
                longitude: -4.74642,
                phoneNumber: 983221388,
                mail: "valladolidelpalero.82@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Sector 3",
                address: "Avenida Juan Carlos I, s/n, Local 3, 28905, Getafe, Madrid",
                latitude: 40.2965,
                longitude: -3.74538,
                phoneNumber: 910440601,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Porto Pi",
                address: "Avinguda de Gabriel Roca, 155, 07015, Palma de Mallorca, Islas Baleares",
                latitude: 39.5517,
                longitude: 2.62087,
                phoneNumber: 647402834,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mijas",
                address: "esq, Calle San Cristóbal, 27, 29651, Mijas, Málaga",
                latitude: 36.5403448,
                longitude: -4.6346316,
                phoneNumber: 952472117,
                mail: "mijas.89@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Gavà",
                address: "Centro Comercial Barnasud, Calle Progrés, 69, 08850, Gavá, Barcelona",
                latitude: 41.2944,
                longitude: 2.00782,
                phoneNumber: 671600051,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Princesa",
                address: "Calle de la Princesa, 3, 28008, Madrid, Madrid",
                latitude: 40.425,
                longitude: -3.71266,
                phoneNumber: 911997065,
                mail: "es-0091.princesa@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sestao",
                address: "Centro Comercial Carrefour | Cruce Ctra. Valle de Trápaga-Ctra.Sestao 48910, Avenida Principal, 1 rotonda La Noria, 48910, Sestao, Vizcaya",
                latitude: 43.3006,
                longitude: -3.00184,
                phoneNumber: 689899555,
                mail: "sestao.93@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Reus",
                address: "Avinguda de Marià Fortuny, 59, 43203, Reus, Tarragona",
                latitude: 41.1587,
                longitude: 1.11761,
                phoneNumber: 977772101,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Mesa Y López",
                address: "Plaza de la Victoria, nº 8 Esquina, Avenida José Mesa y López, 35006, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.134319,
                longitude: -15.434779,
                phoneNumber: 609785578,
                mail: "mesaylopez@mcdlaspalmas.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Terrassa Parc Vallés",
                address: "Poligono Santa Margarita, 2, Avinguda Tèxtil, 51, 08223, Tarrasa, Barcelona",
                latitude: 41.5457,
                longitude: 2.02654,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Telde",
                address: "GC-1, Km. 8,, Parque Comercial La Mareta, 35200, Telde, Las Palmas",
                latitude: 28.009773,
                longitude: -15.388433,
                phoneNumber: 928131226,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Cádiz",
                address: "Avenida Cayetano del Toro, 24, 11010, Cádiz, Cádiz",
                latitude: 36.5062,
                longitude: -6.27691,
                phoneNumber: 956275000,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Saler",
                address: "Centro Comercial El Saler, Avinguda del Professor López Piñero, 16, Local 7 y 81, 46013, Valencia, Valencia/València",
                latitude: 39.4535,
                longitude: -0.354767,
                phoneNumber: 963950821,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aljarafe",
                address: "Centro Comercial Aljarafe Ctra. SE 617 Polígono Industrial El Manchón, 41940, Tomares, Sevilla",
                latitude: 37.3739,
                longitude: -6.03125,
                phoneNumber: 671323495,
                mail: "aljarafe.102@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Burgos Hipercor",
                address: "Centro Comercial Hipercor Burgos Ctra. Nacional I, Km. 236, 09001, Burgos, Burgos",
                latitude: 42.319294,
                longitude: -3.7027,
                phoneNumber: 947279012,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Diagonal",
                address: "Avinguda Diagonal, 466, 08006, Barcelona, Barcelona",
                latitude: 41.3961,
                longitude: 2.15669,
                phoneNumber: 932173005,
                mail: "diagonal.106@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrejón",
                address: "Centro Comercial Corredor Ctra. De, 28850, Torrejón de Ardoz, Madrid",
                latitude: 40.4764,
                longitude: -3.47897,
                phoneNumber: 638049958,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Castellón",
                address: "Manzana 12, Ciudad del Transporte, 12006, Castellón de la Plana, Castellón/Castelló",
                latitude: 39.9783,
                longitude: -0.067977,
                phoneNumber: 964253501,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Atocha",
                address: "Calle de Atocha, 127, 28012, Madrid, Madrid",
                latitude: 40.4096,
                longitude: -3.69257,
                phoneNumber: 913693569,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Salamanca",
                address: "Pza. del Corrillo, 21, 37002, Salamanca, Salamanca",
                latitude: 40.9645,
                longitude: -5.6648,
                phoneNumber: 923215588,
                mail: "salamanca.112@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Huelva Puente Del Odiel",
                address: "Avenida Molino de la Vega, s/n, 21002, Huelva, Huelva",
                latitude: 37.2666,
                longitude: -6.95831,
                phoneNumber: 959252435,
                mail: "HUELVA.116@ES.MCD.COM"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Arenys De Mar",
                address: "Ctra. Nacional II, Cruce, Antigua Fábrica Muvisa , Carrer Rial Llarg, 08350, Arenys de Mar, Barcelona",
                latitude: 41.5746,
                longitude: 2.54,
                phoneNumber: 645117986,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Hortaleza",
                address: "Campo de las Naciones, Avenida de los Andes, 46, 28042, Madrid, Madrid",
                latitude: 40.4554959242699,
                longitude: -3.61863775496052,
                phoneNumber: 913209196,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Playa De Aro",
                address: "Avenida Agaró, 1, 17250, Playa de Aro, Gerona",
                latitude: 41.8176,
                longitude: 3.06697,
                phoneNumber: 972817263,
                mail: "playadearo.120@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Marbella-Ojén",
                address: "Calle de Ojen, s/n, 29600, Marbella, Málaga",
                latitude: 36.5199,
                longitude: -4.88059,
                phoneNumber: 952865463,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sant Cugat",
                address: "Centro Comercial Sant Cugat, Avda. Via Augusta, 214, 08174, Sant Cugat del Vallés, Barcelona",
                latitude: 41.4836,
                longitude: 2.05402,
                phoneNumber: 610268695,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Tres Cantos",
                address: "Ronda de Poniente, s/n, 28760, Tres Cantos, Madrid",
                latitude: 40.6053,
                longitude: -3.71816,
                phoneNumber: 915777234,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Granollers",
                address: "Carrer Matagalls, 9, 08402, Granollers, Barcelona",
                latitude: 41.6118,
                longitude: 2.30299,
                phoneNumber: 692235240,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Chiclana",
                address: "Polígono Industrial El Torno II, Avenida de los Descubrimientos, Km 340, 11130, Chiclana de la Frontera, Cádiz",
                latitude: 36.4302222,
                longitude: -6.14458333,
                phoneNumber: 956532753,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sagrada Familia",
                address: "Carrer de Provença, 427, 431, 08025, Barcelona, Barcelona",
                latitude: 41.4039,
                longitude: 2.17345,
                phoneNumber: 608854223,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Cambrils",
                address: "Avinguda Diputació, 8, 43850, Cambrils, Tarragona",
                latitude: 41.0666,
                longitude: 1.06684,
                phoneNumber: 977369084,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrevieja",
                address: "Carretera Crevillente, s/n, 03184, Torrevieja, Alicante/Alacant",
                latitude: 37.9931,
                longitude: -0.688831,
                phoneNumber: 966708854,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia Centro",
                address: "Carrer de Xàtiva, 21, 46002, Valencia, Valencia/València",
                latitude: 39.4673,
                longitude: -0.375776,
                phoneNumber: 963526762,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pozuelo Centro Comercial",
                address: "Calle Rafael Botí, 4, 28023, Madrid, Madrid",
                latitude: 40.4633,
                longitude: -3.80342,
                phoneNumber: 913728471,
                mail: "atencionalcliente.pozuelo@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sevilla Nervion",
                address: "Calle Luis de Morales, s/n, 41018, Sevilla, Sevilla",
                latitude: 37.3838,
                longitude: -5.97255,
                phoneNumber: 954420431,
                mail: "sevillanervion.142@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ibiza",
                address: "Avinguda Sant Josep de sa Talaia esq, Avinguda de Sant Jordi, 07800, Ibiza, Islas Baleares",
                latitude: 38.9059,
                longitude: 1.41978,
                phoneNumber: 971301454,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia El Osito",
                address: "Carretera Valencia Ademuz, Km. 16, 46183, L'Eliana, Valencia/València",
                latitude: 39.5791,
                longitude: -0.528751,
                phoneNumber: 962750780,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Fuenlabrada",
                address: "C/ Leganés, 55, 28945, Fuenlabrada, Madrid",
                latitude: 40.2938,
                longitude: -3.79102,
                phoneNumber: 916067766,
                mail: "at.cliente.mcd.fuenlabrada@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aldaia",
                address: "Centro Comercial \"Bonaire\" |, Calle N' III, salida 345, 46960, Aldaya, Valencia/València",
                latitude: 39.4717,
                longitude: -0.487051,
                phoneNumber: 961920429,
                mail: "Aldaya.146@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Irun",
                address: "Centro Comercial Txingudi, s/n | Pol. Industrial Araxo - 20305 - Irún -, Guipúzco, 20305, Irún, Guipúzcoa",
                latitude: 43.3222,
                longitude: -1.83573,
                phoneNumber: 943635452,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carabanchel",
                address: "C/ La Oca, Glorieta Ejército, 105, 28025, Madrid, Madrid",
                latitude: 40.3879,
                longitude: -3.7443,
                phoneNumber: 915251720,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puerto Rico",
                address: "Avda. Tomás Roca Bosch Parcela C-51, Urbanización Puerto Rico, 35140, Mogán, Las Palmas",
                latitude: 27.7899959608226,
                longitude: -15.7087201570445,
                phoneNumber: 928560343,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Enlaces",
                address: "Vía Hispanidad, 87, 50011, Zaragoza, Zaragoza",
                latitude: 41.6504,
                longitude: -0.919136,
                phoneNumber: 976328446,
                mail: "Zaragozaenlaces.156@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sant Boi",
                address: "Centre Comercial Alcampo Sant Boi, Carrer dels Feixars, s/n, 08830, Sant Boi de Llobregat, Barcelona",
                latitude: 41.3296,
                longitude: 2.05191,
                phoneNumber: 936524206,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Marbella-Cañada",
                address: "Centro Comercial La Cañada Circunvalación de Marbella - Ctra. Ojén, s/n, 29603, Marbella, Málaga",
                latitude: 36.5214,
                longitude: -4.8739,
                phoneNumber: 952866180,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ceuta",
                address: "Pueblo Marinero de s/n, Carretera Circunvalación, 51001, Ceuta, Ceuta",
                latitude: 35.8889,
                longitude: -5.31213,
                phoneNumber: 956514619,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Mirador",
                address: "Carretera Santander, 09006, Burgos, Burgos",
                latitude: 42.359759,
                longitude: -3.69452,
                phoneNumber: 676868624,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Brillante",
                address: "Avenida del Brillante, 20, 14006, Córdoba, Córdoba",
                latitude: 37.8976,
                longitude: -4.78513,
                phoneNumber: 957082222,
                mail: "cordobabrillante.166@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Las Gavarras",
                address: "Parque Comercial Las Gavarras, Carrer de Joan Amades i Gelats, 6, 43006, Tarragona, Tarragona",
                latitude: 41.1317,
                longitude: 1.20518,
                phoneNumber: 977552212,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santander",
                address: "Calle Alday, s/n, 39600, Maliaño, Cantabria",
                latitude: 43.4254,
                longitude: -3.83739,
                phoneNumber: 650059120,
                mail: "santander.172@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Triana",
                address: "C/ Mayor de, Calle Triana, nº103, 35016, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.1078,
                longitude: -15.4173,
                phoneNumber: 928366608,
                mail: "triana@mcdlaspalmas.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Jerez Norte",
                address: "Avenida de Europa, s/n, 11405, Jerez de la Frontera, Cádiz",
                latitude: 36.6957,
                longitude: -6.11366,
                phoneNumber: 956303315,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pinar De Las Rozas",
                address: "Centro Comercial Pinar | Ctra. Nacional VI, Km. 22 - 28232 Bajos Hotel, 28232, Las Rozas, Madrid",
                latitude: 40.5232,
                longitude: -3.88431,
                phoneNumber: 916373657,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Lugones",
                address: "Ctra. N-630, Km. 451, Centro Comercial Azabache |, 33420, Lugones, Asturias",
                latitude: 43.413,
                longitude: -5.79746,
                phoneNumber: 985262036,
                mail: "-"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S  Leioa",
                address: "Peruri Auzoa, 33, 48940, Lejona, Vizcaya",
                latitude: 43.3412,
                longitude: -2.98995,
                phoneNumber: 663808229,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Dos Hermanas",
                address: "Calle Doctor Fleming, s/n, 41700, Dos Hermanas, Sevilla",
                latitude: 37.2825,
                longitude: -5.93624,
                phoneNumber: 955678798,
                mail: "doshermanas.184@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Paseo De Gracia",
                address: "Paseo de Gracia, 48, 08007, Barcelona, Barcelona",
                latitude: 41.3919,
                longitude: 2.16582,
                phoneNumber: 934874460,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Carrefour Montserrat",
                address: "Carrer Extremadura, s/n, 08226, Tarrasa, Barcelona",
                latitude: 41.5654,
                longitude: 2.03648,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Blas",
                address: "Avenida de Guadalajara, 2, 28032, Madrid, Madrid",
                latitude: 40.4179,
                longitude: -3.62193,
                phoneNumber: 913134427,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Algete",
                address: "M-100, Km 0, 400, 28700, San Sebastián de los Reyes, Madrid",
                latitude: 40.5827,
                longitude: -3.57572,
                phoneNumber: 916239231,
                mail: "Algete.189@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Denia",
                address: "Partida Negrals, 13, 03700, Denia, Alicante/Alacant",
                latitude: 38.839,
                longitude: 0.095204,
                phoneNumber: 966433374,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Calafell",
                address: "Ctra. Comarcal 246, km. 56, Urbanización, 43820, Calafell, Tarragona",
                latitude: 41.1917,
                longitude: 1.59214,
                phoneNumber: 977690034,
                mail: "calafell.192@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Badajoz",
                address: "Avenida de Elvas, s/n, 06006, Badajoz, Badajoz",
                latitude: 38.8824,
                longitude: -6.99611,
                phoneNumber: 924272563,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Pedro De Alcántara",
                address: "Centro Comercial La Colonia, 29670, San Pedro de Alcántara, Málaga",
                latitude: 36.4795,
                longitude: -4.99442,
                phoneNumber: 952788217,
                mail: "sanpedrobanus2020@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Petrer",
                address: "Avinguda el Guirnei, 8, 03610, Petrer, Alicante/Alacant",
                latitude: 38.4891,
                longitude: -0.777316,
                phoneNumber: 966951864,
                mail: "."
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Leganes Bp",
                address: "Carretera Villaverde, 9999A, 28915, Leganés, Madrid",
                latitude: 40.331,
                longitude: -3.742,
                phoneNumber: 916801306,
                mail: "leganesbp.198@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Madrid Sur",
                address: "Centro Comercial MadridSur, Avenida Pablo Neruda, 91, 28018, Madrid, Madrid",
                latitude: 40.3816,
                longitude: -3.66378,
                phoneNumber: 917850340,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Paz",
                address: "Paseo de la Castellana, 261, 28046, Madrid, Madrid",
                latitude: 40.4802,
                longitude: -3.68714,
                phoneNumber: 913581394,
                mail: "lapaz.201@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Getafe Hospital",
                address: "Calle Einstein, 1, 28905, Getafe, Madrid",
                latitude: 40.3165,
                longitude: -3.74382,
                phoneNumber: 910468943,
                mail: "getafehospital.202@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald`S Plaza De Armas",
                address: "Centro Comercial \"Plaza de Armas\" | Local C-44 - 41001, 41001, Sevilla, Sevilla",
                latitude: 37.3913,
                longitude: -6.00218,
                phoneNumber: 611321949,
                mail: "plazadearmas.203@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Montcada I Reixach",
                address: "Setor Industrial \"Can Milans\" Ctra. C s/n, C-17, 08110, Montcada i Reixach, Barcelona",
                latitude: 41.5086,
                longitude: 2.18893,
                phoneNumber: 935642098,
                mail: "montcadaireixach.204@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Puerto Banus",
                address: "Complejo Residencial \"Marina Banús\" | Local 6 - 29660 - Marbella - Málaga, Hotel Nacional, 29660, Marbella, Málaga",
                latitude: 36.4888,
                longitude: -4.95218,
                phoneNumber: 952815929,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plaza Castilla",
                address: "C/ San Aquilino, 4 Local 1A, 28029, Madrid, Madrid",
                latitude: 40.4675,
                longitude: -3.68984,
                phoneNumber: 913234781,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Los Barrios",
                address: "Polígono Industrial, 11379, Los Barrios, Cádiz",
                latitude: 36.1822,
                longitude: -5.43982,
                phoneNumber: 956677758,
                mail: "losbarrios.208@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pinto",
                address: "Ctra. de Andalucía N-IV, Km.20,2 - 28320, 28320, Pinto, Madrid",
                latitude: 40.2462,
                longitude: -3.6901,
                phoneNumber: 916926305,
                mail: "pinto.210@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Andújar",
                address: "Avenida de Londres, 3, 23740, Andújar, Jaén",
                latitude: 38.0381,
                longitude: -4.03772,
                phoneNumber: 676437515,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Línea",
                address: "C.C. Gran Sur | Avda. de las Colonias, nº9 Local 30 - 11300 - La Línea de, la Con, 11300, La Línea de la Concepción, Cádiz",
                latitude: 36.1746,
                longitude: -5.36222,
                phoneNumber: 673168705,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gibraltar",
                address: "Europort Road, GX11 1AA, Gibraltar, Gibraltar",
                latitude: 36.14403,
                longitude: -5.35856,
                phoneNumber: 670434366,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "El Ensanche",
                address: "Plaza José de Espronceda, s/n, 28806, Alcalá de Henares, Madrid",
                latitude: 40.5025,
                longitude: -3.36631,
                phoneNumber: 918021727,
                mail: "alcalaensanche.214@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Pryca",
                address: "Centro Comercial Carrefour, Avenida María Zambrano, 71, 50018, Zaragoza, Zaragoza",
                latitude: 41.6762,
                longitude: -0.889524,
                phoneNumber: 976744198,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alzira",
                address: "Centro Comercial Carrefour, Avenida de la Llibertat, s/n, 46600, Alzira, Valencia/València",
                latitude: 39.1619,
                longitude: -0.430071,
                phoneNumber: 962180055,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alicante Universidad",
                address: "Avda. Universidad s/n Polígono Industrial, 03009, Alicante, Alicante/Alacant",
                latitude: 38.3746,
                longitude: -0.507475,
                phoneNumber: 965170923,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Collblanc",
                address: "Carretera de Collblanc, 22, 08902, L'Hospitalet de Llobregat, Barcelona",
                latitude: 41.3759,
                longitude: 2.12031,
                phoneNumber: 934482505,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Camas",
                address: "Carrefour Shopping Center, A-49, 41900, Camas, Sevilla",
                latitude: 37.3909,
                longitude: -6.02972,
                phoneNumber: 671323464,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Opera",
                address: "Plaza de Isabel II, 1, 28013, Madrid, Madrid",
                latitude: 40.4178,
                longitude: -3.70915,
                phoneNumber: 919552762,
                mail: "opera.228@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gorbeia",
                address: "Etxabarri Ibiña Entitatea, 01138, Vitoria, Araba/Álava",
                latitude: 42.9104,
                longitude: -2.71424,
                phoneNumber: 945460936,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Pamplona",
                address: "Parque Comercial Galaria Calle U, s/n, 31191, Cordovilla, Navarra",
                latitude: 42.7866,
                longitude: -1.63174,
                phoneNumber: 948291516,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sevilla Este",
                address: "Avda. Alcalde Luis Uruñuela, s/n, | (Frente al Palacio de Congresos) - 41020  , Se Carrer del Migjorn, 14-15, 41020, Sevilla, Sevilla",
                latitude: 37.4057,
                longitude: -5.93379,
                phoneNumber: 954518228,
                mail: "sevillaeste.233@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cas Capiscol",
                address: "C/Leocadia Togores s/n Parcela F, 07010, Palma de Mallorca, Islas Baleares",
                latitude: 39.5956,
                longitude: 2.65053,
                phoneNumber: 971755751,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Bretxa",
                address: "Alameda del Boulevard, s/n Centro Comercial \"La Bretxa, 20003, San Sebastián, Guipúzcoa",
                latitude: 43.3229,
                longitude: -1.98263,
                phoneNumber: 943458369,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Parque Bulevar",
                address: "C. C. \"Parque Bulevar Santa Cruz \" | C, Puerto Escondido, s/n, 38001, Santa Cruz de Tenerife, Santa Cruz de Tenerife",
                latitude: 28.4703,
                longitude: -16.2514,
                phoneNumber: 922275925,
                mail: "bulevar@mcdcanarias.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Santa Susanna",
                address: "Ctra. N-II, Km. 671,5, 08398, Santa Susana, Barcelona",
                latitude: 41.6334,
                longitude: 2.70499,
                phoneNumber: 937677026,
                mail: "santasusana.238@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Almuñecar",
                address: "Avenida Fenicia, s/n, 18690, Almuñécar, Granada",
                latitude: 36.7361,
                longitude: -3.68811,
                phoneNumber: 958635975,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Parque Astur",
                address: "Campo del Tiro, s/n, 33416, Corvera, Asturias",
                latitude: 43.5454,
                longitude: -5.86962,
                phoneNumber: 985514114,
                mail: "parqueastur.242@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sants Estación",
                address: "Plaça dels Països Catalans, s/n, 08014, Barcelona, Barcelona",
                latitude: 41.3784,
                longitude: 2.13989,
                phoneNumber: 933303095,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pozuelo Kinépolis",
                address: "frente a Cines, Calle Edgar Neville, s/n, 28223, Pozuelo de Alarcón, Madrid",
                latitude: 40.3945,
                longitude: -3.79823,
                phoneNumber: 915120864,
                mail: "kinepolis.249@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "El Masnou",
                address: "Sector Voramar II, Carrer del Migjorn, 14, 15, 08320, Masnou, Barcelona",
                latitude: 41.4843,
                longitude: 2.34018,
                phoneNumber: 935550267,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ciudad Real",
                address: "Avenida de Europa, s/n, 13005, Ciudad Real, Ciudad Real",
                latitude: 38.9841,
                longitude: -3.91403,
                phoneNumber: 926274308,
                mail: "ciudadreal.252@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Avilés Fs",
                address: "Camino de Heros, s/n, 33400, Avilés, Asturias",
                latitude: 43.5526,
                longitude: -5.93234,
                phoneNumber: 985934838,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds  Carrefour Zaidin",
                address: "Centro Comercial Continente, Carretera de Armilla, s/n, 18006, Granada, Granada",
                latitude: 37.1547,
                longitude: -3.60773,
                phoneNumber: 958815055,
                mail: "granadacontinente.256@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gijón La Calzada",
                address: "c/v C/Industrias, Centro Comercial , C. Maestro Amado Moran, 33213, Gijón, Asturias",
                latitude: 43.5366,
                longitude: -5.69444,
                phoneNumber: 985309005,
                mail: "gijonlacalzada.257@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Papalaguinda",
                address: "Paseo de Papalaguinda, s/n, 24004, León, León",
                latitude: 42.5924,
                longitude: -5.57653,
                phoneNumber: 987252096,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Caletillas",
                address: "Avda. Maritima, 202, 38530, Candelaria, Santa Cruz de Tenerife",
                latitude: 28.3824,
                longitude: -16.3623,
                phoneNumber: 922506908,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Manresa",
                address: "Els Trullols Parc, s/n, 08240, Manresa, Barcelona",
                latitude: 41.7236,
                longitude: 1.84755,
                phoneNumber: 938743551,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Javea",
                address: "Carrer José de Espronceda, 2, 03730, Jávea, Alicante/Alacant",
                latitude: 38.7883,
                longitude: 0.172565,
                phoneNumber: 966462705,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Almeda",
                address: "Ctra. de Hospitalet, 10 Polígono Industrial Almeda, 08940, Cornellá de Llobregat, Barcelona",
                latitude: 41.3528,
                longitude: 2.07692,
                phoneNumber: 630747654,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Salamanca Fs",
                address: "C.C. \"Los Cipreses\", Avenida de los Cipreses, s/n, 37004, Salamanca, Salamanca",
                latitude: 40.9782,
                longitude: -5.64941,
                phoneNumber: 923282396,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vecindario Mall",
                address: "Centro Comercial Atlántico, Calle Insular, 9-45, 35110, Santa Lucia de Tirajana, Las Palmas",
                latitude: 27.842418,
                longitude: -15.441257,
                phoneNumber: 928793442,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vecindario Fs",
                address: "Avenida del Atlántico, 359, 35110, Santa Lucia de Tirajana, Las Palmas",
                latitude: 27.842,
                longitude: -15.4405,
                phoneNumber: 928758580,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Calahonda",
                address: "Ctra. Nacional A-7, Km 196,5 | Urbanización Royal Beach, 29649, Mijas, Málaga",
                latitude: 36.4881,
                longitude: -4.72422,
                phoneNumber: 952939127,
                mail: "0"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mataró Parc",
                address: "Carrer Estrasburg, 5, Locales 96 - 97, 08304, Mataró, Barcelona",
                latitude: 41.5552,
                longitude: 2.43366,
                phoneNumber: 937411158,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Vinaròs",
                address: "C.C. Portal Del Mediterraneo, C. a Pp-1, 6,, N-340a, km 1049, 12500, Vinaroz, Castellón/Castelló",
                latitude: 40.4552,
                longitude: 0.45404,
                phoneNumber: 964418441,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mislata",
                address: "Carrer Sant Antoni, s/n, 46920, Mislata, Valencia/València",
                latitude: 39.4787,
                longitude: -0.426144,
                phoneNumber: 963135176,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Parque Guadalquivir",
                address: "Centro Comercial \"Parque Guadalquivir\" parcela 46, 14013, Córdoba, Córdoba",
                latitude: 37.8585,
                longitude: -4.78734,
                phoneNumber: 957201399,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sevilla San Pablo",
                address: "C.C. Carrefour San Pablo, Calle José Jesús García Díaz, 1, Local 48, 41020, Sevilla, Sevilla",
                latitude: 37.4081,
                longitude: -5.93985,
                phoneNumber: 954109051,
                mail: "sevillasanpablo.273@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Avila",
                address: "Centro Comercial \"El Bulevar\", Avda. Juan Carlos I, 45, 05004, Ávila, Ávila",
                latitude: 40.6688,
                longitude: -4.65979,
                phoneNumber: 920219003,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cáceres",
                address: "Ctra. de Valencia a Alcántara s/n C.C. Carrefour, 10005, Cáceres, Cáceres",
                latitude: 39.4685,
                longitude: -6.395,
                phoneNumber: 927629116,
                mail: "caceres.276@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Mcauto Armilla",
                address: "Centro Comercial \"Parque Albán\" | Ctra. de, Avenida Fernando de los Ríos, 6, s/n, 18100, Armilla, Granada",
                latitude: 37.1522,
                longitude: -3.61394,
                phoneNumber: 958131598,
                mail: "parquealban.277@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Playa Del Inglés",
                address: "Centro Comercial Anexo II, Avenida 8 de Marzo, 35100, Playa del Inglés, Las Palmas",
                latitude: 27.7536,
                longitude: -15.569,
                phoneNumber: 928771960,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Salamanca Deico",
                address: "Centro Comercial \"El Tormes\", Local 112 Buzón 11, Avenida Salamanca, s/n, 37900, Santa Marta de Tormes, Salamanca",
                latitude: 40.9509,
                longitude: -5.64956,
                phoneNumber: 923131331,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Benidorm Playa",
                address: "Avda. Madrid, 33 Edificio Almadraba Local 1, 03503, Benidorm, Alicante/Alacant",
                latitude: 38.5331,
                longitude: -0.107433,
                phoneNumber: 966831547,
                mail: "benidormplaya.283@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alfaz Del Pí",
                address: "Ctra, N-332, 03580, Alfaz del Pí, Alicante/Alacant",
                latitude: 38.5753,
                longitude: -0.078688,
                phoneNumber: 966868045,
                mail: "alfazdelpi.284@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcobendas Bp",
                address: "Calle del Marqués de la Valdavia, 140, 28100, Alcobendas, Madrid",
                latitude: 40.5473,
                longitude: -3.65584,
                phoneNumber: 914901362,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Figueras",
                address: "Avinguda de Salvador Dalí i Domènech, 31, 17600, Figueras, Gerona",
                latitude: 42.2587,
                longitude: 2.961,
                phoneNumber: 972513574,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Valdelagrana - Bahia Mar",
                address: "Parque Comercial Bahía Mar, Calle Río Guadarranque, 15, 11500, Puerto de Santa María, Cádiz",
                latitude: 36.5937,
                longitude: -6.22138,
                phoneNumber: 956560392,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Martorell",
                address: "Polígono Industrial \"El Congost\" Ctra. Nacional II, 08760, Martorell, Barcelona",
                latitude: 41.465,
                longitude: 1.94744,
                phoneNumber: 937735333,
                mail: "martorell.289@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mairena",
                address: "Poligono Pisa, Calle Tomares, s/n, 41927, Mairena de Aljarafe, Sevilla",
                latitude: 37.3518,
                longitude: -6.05708,
                phoneNumber: 671323435,
                mail: "mairena.290@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Nassica",
                address: "Avda. Rio Guadalquivir, 18 Centro Comercial Nassica, 28906, Getafe, Madrid",
                latitude: 40.2708,
                longitude: -3.69634,
                phoneNumber: 916213145,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Maquinista",
                address: "Centro Cívico Comercial La Maquinista, Pont del Potosí, 2, 08030, Barcelona, Barcelona",
                latitude: 41.4401,
                longitude: 2.19843,
                phoneNumber: 679125969,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Blanes",
                address: "Carretera Accés Costa Brava, 148, 17300, Blanes, Gerona",
                latitude: 41.6785,
                longitude: 2.77401,
                phoneNumber: 972352895,
                mail: "blanes.297@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Diagonal Mar",
                address: "Centro Comercial Diagonal Mar | Avda. Diagonal, 3-Local 3370, 3ª Plta 08019, 08019, Barcelona, Barcelona",
                latitude: 41.4095,
                longitude: 2.21663,
                phoneNumber: 933560410,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Parque Principado",
                address: "Centro Comercial Parque Principado, Autovía A-66, Km. 4,5 Acceso Santander, 33429, Sieros, Asturias",
                latitude: 43.3898,
                longitude: -5.80489,
                phoneNumber: 985261858,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mc Donalds Santa Ponsa",
                address: "Avenida, Via Puig de Galatzo, 12, 07181, Santa Ponça, Islas Baleares",
                latitude: 39.5177,
                longitude: 2.48144,
                phoneNumber: 971699651,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Moratalaz",
                address: "C/ Manuel Machado, Calle Alcalde Luis Marichalar, 6, y C, 28030, Madrid, Madrid",
                latitude: 40.4116,
                longitude: -3.6592,
                phoneNumber: 914399250,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrent",
                address: "Polígono Industrial \"El Molí, 46900, Torrente, Valencia/València",
                latitude: 39.4402,
                longitude: -0.456282,
                phoneNumber: 961589628,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Son Rapinya",
                address: "Centro Comercial Centro Parc | Camí de Son Rapinya, s/n, Avinguda Juan Carlos I, 45, 07013, Palma de Mallorca, Islas Baleares",
                latitude: 39.5799,
                longitude: 2.62457,
                phoneNumber: 971222003,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Calella",
                address: "Avda. Capaspre, 14, 08370, Calella, Barcelona",
                latitude: 41.6119,
                longitude: 2.65504,
                phoneNumber: 937664067,
                mail: "calella.308@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Sanlucar",
                address: "Centro Comercial \"Cobreros Ctra. de Sanlúcar a, Carretera de Chipiona, Km 1, 11540, Sanlúcar de Barrameda, Cádiz",
                latitude: 36.7706,
                longitude: -6.35717,
                phoneNumber: 956369224,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Inca",
                address: "C/ Sencelles, 73-74 - 07300 - Inca - Islas Baleares, 07300, Inca, Islas Baleares",
                latitude: 39.7112,
                longitude: 2.90885,
                phoneNumber: 971507454,
                mail: "inca.3102es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Magalluf",
                address: "Blanca Olivera, 1, 07181, Magalluf, Islas Baleares",
                latitude: 39.5074,
                longitude: 2.53243,
                phoneNumber: 971132699,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Benalmadena",
                address: "Avenida Antonio Machado, 60, 29630, Benalmádena Costa, Málaga",
                latitude: 36.5884,
                longitude: -4.53055,
                phoneNumber: 952021154,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torremolinos-Los Alamos",
                address: "Avenida de Manuel Fraga Iribarne, 10, 29620, Torremolinos, Málaga",
                latitude: 36.6431,
                longitude: -4.49148,
                phoneNumber: 952058416,
                mail: "torremolinoslosalamos314@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Badajoz Valdepasillas",
                address: "Plaza De la Autonomía, s/n, 06010, Badajoz, Badajoz",
                latitude: 38.8667,
                longitude: -6.98176,
                phoneNumber: 924207710,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Adeje",
                address: "Avenida Barranco las Torres, 38670, Adeje, Santa Cruz de Tenerife",
                latitude: 28.124,
                longitude: -16.7404,
                phoneNumber: 922781580,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Maremagnum",
                address: "Moll d'Espanya, s/n, 08039, Barcelona, Barcelona",
                latitude: 41.3751,
                longitude: 2.18255,
                phoneNumber: 932258195,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Alcampo",
                address: "Centro Comercial \"Utrillas Plaza, Plaza de Utrillas, 6, 50013, Zaragoza, Zaragoza",
                latitude: 41.6409,
                longitude: -0.867367,
                phoneNumber: 976480025,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Herrería",
                address: "Avenida de los Escritores, s/n, 24400, Ponferrada, León",
                latitude: 42.549,
                longitude: -6.60688,
                phoneNumber: 987409385,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Cuenca",
                address: "Pol. Ind. El Cantorral Ctra. de Valencia N-320, Km 136,5, 16004, Cuenca, Cuenca",
                latitude: 40.0547,
                longitude: -2.12559,
                phoneNumber: 969241033,
                mail: "cuenca.320@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Reus Sur",
                address: "Avinguda Salou, 114, 43205, Reus, Tarragona",
                latitude: 41.1414,
                longitude: 1.11665,
                phoneNumber: 977300939,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Cullera",
                address: "PRM 3ª, Galeria Comercial Sabeco, 46400, Cullera, Valencia/València",
                latitude: 39.1792,
                longitude: -0.262077,
                phoneNumber: 961738091,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S República Argentina",
                address: "Avenida de la República Argentina, 25, 41011, Sevilla, Sevilla",
                latitude: 37.3778,
                longitude: -6.00176,
                phoneNumber: 684726892,
                mail: "republicaargentina.324@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carralero",
                address: "Polígono Industrial el Carralero, C/ De la Fresa, s/n, 28220, Majadahonda, Madrid",
                latitude: 40.4556,
                longitude: -3.87334,
                phoneNumber: 916397064,
                mail: "cumples.mcdcarralero@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Viladecans",
                address: "Polígono Can Calderón | Ctra. Comarcal 245 - 08840, Can Calderón, 245, 08840, Viladecans, Barcelona",
                latitude: 41.3216,
                longitude: 2.02842,
                phoneNumber: 686313299,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Talavera De La Reina",
                address: "Calle Pablo Picasso, s/n, 45600, Talavera de la Reina, Toledo",
                latitude: 39.9636,
                longitude: -4.8113,
                phoneNumber: 925815130,
                mail: "talavera.328@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aguadulce",
                address: "Avenida el Parador, S/N, 04720, Roquetas de Mar, Almería",
                latitude: 36.8098,
                longitude: -2.59769,
                phoneNumber: 950349096,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrejón Ii",
                address: "Avenida de la Constitución, 108, 28850, Torrejón de Ardoz, Madrid",
                latitude: 40.4586,
                longitude: -3.4664,
                phoneNumber: 695773291,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carlota",
                address: "Centro Comercial \"Carlota\", Playa de las Américas, 38660, Arona, Santa Cruz de Tenerife",
                latitude: 28.06,
                longitude: -16.7352,
                phoneNumber: 922797955,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santiago",
                address: "Praza de España, 15703, Santiago de Compostela, La Coruña",
                latitude: 42.8918,
                longitude: -8.53285,
                phoneNumber: 618967492,
                mail: "santiagofs.332@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Orense Pontevella",
                address: "Rúa Ribeira Sacra, 50 Ponte Vella Centro Comercial y Ocio, 32003, Orense, Orense",
                latitude: 42.3448,
                longitude: -7.86512,
                phoneNumber: 988209879,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Festival Park",
                address: "C.C. Festival Park | Autopista Palma-Inca, Km 7.100 - 07141 - Marratxí, Islas B Paseo de la Florida, 2 Local G53,F6, 07141, Marratxí, Islas Baleares",
                latitude: 39.633,
                longitude: 2.73239,
                phoneNumber: 971226636,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Som Multiespai",
                address: "Centro de Ocio Heron City Avda. Río de Janeiro, 42 Local 1/18, 08016, Barcelona, Barcelona",
                latitude: 41.4353,
                longitude: 2.18086,
                phoneNumber: 933505846,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Fernando",
                address: "Club Las Salinas | Centro Comercial \"Bahía Sur, 11100, San Fernando, Cádiz",
                latitude: 36.4694,
                longitude: -6.20981,
                phoneNumber: 956802232,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lalinea Ii",
                address: "Avenida Veinte de Abril, s/n, 11300, La Línea de la Concepción, Cádiz",
                latitude: 36.1569,
                longitude: -5.34758,
                phoneNumber: 628662263,
                mail: "LaLinea2.341@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ronda",
                address: "Plaza España, 7, 29400, Ronda, Málaga",
                latitude: 36.7414,
                longitude: -5.16648,
                phoneNumber: 952161182,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gandia",
                address: "Avinguda de Blasco Ibáñez, 4, 46701, Gandía, Valencia/València",
                latitude: 38.9718,
                longitude: -0.169562,
                phoneNumber: 962876063,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sant Vicenç Del Horts",
                address: "C.C. Mercat Central | Ctra. de Sant Boi, 63-67 | La Vailet - 08620 - Sant, Vicenç, 08620, Sant Vicenç dels Horts, Barcelona",
                latitude: 41.3967,
                longitude: 2.01123,
                phoneNumber: 936566041,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Ferrol",
                address: "Polígono Industrial Gándara, 0, 15407, Ferrol, La Coruña",
                latitude: 43.488,
                longitude: -8.20214,
                phoneNumber: 650837341,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Vilafranca",
                address: "Polígon Industrial Mercaderias, 340 S/N, 08720, Vilafranca del Penedés, Barcelona",
                latitude: 41.3327,
                longitude: 1.67985,
                phoneNumber: 647779901,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Vilanova",
                address: "C, Ronda d'Europa, 64, 08800, Vilanova i la Geltrú, Barcelona",
                latitude: 41.2314,
                longitude: 1.73716,
                phoneNumber: 938115110,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Siete Palmas",
                address: "C.C. y de Ocio Siete Palmas | Local 2-23, 2ª Planta | Avda. Pintor Felo, Monzón Centro Comercial Llobregat Centre, 35019, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.096779,
                longitude: -15.456202,
                phoneNumber: 928424540,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sagunto",
                address: "Ctra. Sagunto a Puerto Sagunto, Km 2 | (frente a Carrefour), 46500, Sagunto, Valencia/València",
                latitude: 39.6721,
                longitude: -0.251529,
                phoneNumber: 962650173,
                mail: "sagunto.356@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Playa Fañabé",
                address: "CC \"Costa Playa\", Local 80 | Playa Torviscas, Fañabe, 38670, Adeje, Santa Cruz de Tenerife",
                latitude: 28.082879,
                longitude: -16.735516,
                phoneNumber: 922715578,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ripollet",
                address: "C/ Tarragona, 24, 08291, Ripollet, Barcelona",
                latitude: 41.4947,
                longitude: 2.15505,
                phoneNumber: 937154044,
                mail: "ripollet.360@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villalba Planetocio",
                address: "Centro Comercial \"Planetocio, Calle Central, 46, 28400, Alpedrete, Madrid",
                latitude: 40.6377,
                longitude: -4.01893,
                phoneNumber: 918559777,
                mail: "cumples.mcdplanetocio@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plasencia",
                address: "Edificio Céntrica 3, Calle Bravo Murillo, 10600, Plasencia, Cáceres",
                latitude: 40.0378,
                longitude: -6.0795,
                phoneNumber: 927422702,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plaza De La Reina",
                address: "Plaça de la Reina, 15, 46001, Valencia, Valencia/València",
                latitude: 39.4749,
                longitude: -0.375716,
                phoneNumber: 963923591,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Rincon De La Victoria",
                address: "Centro Comercial Rincón de la Victoria C, Calle Arroyo Totalán, 36, 29720, Málaga, Málaga",
                latitude: 36.723,
                longitude: -4.31285,
                phoneNumber: 952978673,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Linares",
                address: "C.C. Alcampo, Avenida San Cristóbal, s/n, 23700, Linares, Jaén",
                latitude: 38.0902,
                longitude: -3.64685,
                phoneNumber: 953658444,
                mail: "linares.366@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Samil",
                address: "Avenida Samil, nº 31, 36212, Vigo, Pontevedra",
                latitude: 42.2107,
                longitude: -8.7734,
                phoneNumber: 986247743,
                mail: "vigosamil.367@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Villagarcia",
                address: "Avenida Rivero Aguilar, s/n, 36600, Villagarcía de Arousa, Pontevedra",
                latitude: 42.5983,
                longitude: -8.76774,
                phoneNumber: 986500042,
                mail: "villagarcia.368@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mérida",
                address: "Avenida Reina Sofia, Local, 06800, Mérida, Badajoz",
                latitude: 38.9051,
                longitude: -6.36049,
                phoneNumber: 924371567,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Huesca",
                address: "Centro Comercial Coso Real Avda. de, Avenida del Doctor Artero, 31, 22004, Huesca, Huesca",
                latitude: 42.1481,
                longitude: -0.425797,
                phoneNumber: 974218482,
                mail: "huesca.372@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palacio De Hielo",
                address: "Centro Comercial Palacio de Hielo, Calle de Silvano, 77, 28043, Madrid, Madrid",
                latitude: 40.4628,
                longitude: -3.63667,
                phoneNumber: 913883668,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Kinepolis Paterna",
                address: "Centro Comercial Heron City Plan Parcial Sector 14 Parcela P.2, Kinepolis, 46980, Paterna, Valencia/València",
                latitude: 39.531,
                longitude: -0.442815,
                phoneNumber: 963903268,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Playa De Las Vistas",
                address: "Calle Nordica, 4, Local 6, 38650, Arona, Santa Cruz de Tenerife",
                latitude: 28.0537,
                longitude: -16.7257,
                phoneNumber: 922777847,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga Plaza Mayor",
                address: "C.C. Plaza Mayor Parque de Ocio Ctra. p.k. 331, N-340, 29004, Málaga, Málaga",
                latitude: 36.6565,
                longitude: -4.47842,
                phoneNumber: 952172666,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Rivas Urbanizaciones",
                address: "Calle Industria, 28529, Rivas Vaciamadrid, Madrid",
                latitude: 40.3542,
                longitude: -3.55028,
                phoneNumber: 914991615,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mc Donald´S Orotava",
                address: "Centro Comercial Alcampo La Villa | Poligono San Jerónimo, Local nº 6 -, 38300, 38300, La Orotava, Santa Cruz de Tenerife",
                latitude: 28.39572,
                longitude: -16.546486,
                phoneNumber: 922326048,
                mail: "orotava.395@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Los Prados",
                address: "Centro Comercial Los Prados |, Calle Joaquín Costa, s/n, 33011, Oviedo, Asturias",
                latitude: 43.3705,
                longitude: -5.83068,
                phoneNumber: 985283684,
                mail: "oviedocarrefour.397@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puerto De Ibiza",
                address: "Avinguda de Santa Eulària des Riu, 3, 07800, Ibiza, Islas Baleares",
                latitude: 38.9109,
                longitude: 1.43449,
                phoneNumber: 971194804,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Elche Norte",
                address: "Ctra. N340 Alicante a Murcia Sector E 25, Poligono Industrial d'Altabix, 03203, Elche, Alicante/Alacant",
                latitude: 38.2728,
                longitude: -0.668774,
                phoneNumber: 966614414,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alfarfar - Cerrado Por Temporal",
                address: "Area Comercial Alfafar s/n, Calle Alcalde José Puertes, 46910, Alfafar, Valencia/València",
                latitude: 39.4117,
                longitude: -0.38194,
                phoneNumber: 963509695,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Avenidas",
                address: "Carrer Nuredduna, 1, Bajos, 07006, Palma de Mallorca, Islas Baleares",
                latitude: 39.5729,
                longitude: 2.65732,
                phoneNumber: 971468398,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Logroño",
                address: "Calle Clavijo, 65, 26007, Logroño, La Rioja",
                latitude: 42.4535,
                longitude: -2.46481,
                phoneNumber: 941511303,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vic",
                address: "Pol. Ind. Sot dels Pradals, Carretera Sant Hipòlit, 43, 08500, Vic, Barcelona",
                latitude: 41.942,
                longitude: 2.25299,
                phoneNumber: 935909359,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santa Pola",
                address: "Carretera Elche-Santa Pola, 9, 03130, Santa Pola, Alicante/Alacant",
                latitude: 38.1971,
                longitude: -0.563201,
                phoneNumber: 965411864,
                mail: "NURIA.MARTINEZ.SANTACREU@ES.MCD.COM"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Xanadú",
                address: "Intu Xanadú, Autovía de Extremadura, km. 23, 500, 28939, Arroyomolinos, Madrid",
                latitude: 40.2996,
                longitude: -3.92398,
                phoneNumber: 916482611,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Molina De Segura",
                address: "Centro Comercial Eroski, Ctra. Madrid Cartagena, s/n , Pol. Ind. \"El Tapiado\", 30500, Molina de Segura, Murcia",
                latitude: 38.0644,
                longitude: -1.21961,
                phoneNumber: 968645870,
                mail: "molinadesegura.413@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alisal",
                address: "C/ Julio Jaurena, nº 6 (El Alisal), 39011, Santander, Cantabria",
                latitude: 43.4578,
                longitude: -3.85883,
                phoneNumber: 650100916,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Eroski",
                address: "Calle Jacarilla, 7, 03205, Elche, Alicante/Alacant",
                latitude: 38.2639837,
                longitude: -0.7203199,
                phoneNumber: 965460512,
                mail: "elcheeroski.415@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Estepona",
                address: "Avenida Litoral, s/n, 29680, Estepona, Málaga",
                latitude: 36.4316,
                longitude: -5.1228,
                phoneNumber: 952807008,
                mail: "estepona.416@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S El Castillo",
                address: "Ctra. De Jandía km. 11 Urb. Golf Club El, 35610, Antigua, Las Palmas",
                latitude: 28.3859289,
                longitude: -13.866174,
                phoneNumber: 928547669,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga Universidad",
                address: "Avenida de María Zambrano, 7, 29006, Málaga, Málaga",
                latitude: 36.7118,
                longitude: -4.46689,
                phoneNumber: 952315691,
                mail: "malagauniversidad.420@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Castellón",
                address: "Avinguda del Mar, s/n, 12003, Castellón de la Plana, Castellón/Castelló",
                latitude: 39.9825,
                longitude: -0.022844,
                phoneNumber: 677050407,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Salle",
                address: "Avenida Manuel Hermoso Rojas, 16, 38005, Santa Cruz de Tenerife, Santa Cruz de Tenerife",
                latitude: 28.456501,
                longitude: -16.258731,
                phoneNumber: 922235063,
                mail: "lasalle.422@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Chafiras",
                address: "Centro Comercial El Paso, TF-655, s/n, 38620, San Miguel de Abona, Santa Cruz de Tenerife",
                latitude: 28.0508,
                longitude: -16.6141,
                phoneNumber: 922703989,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Boadilla",
                address: "Calle de Santillana del Mar, 2, 28660, Boadilla del Monte, Madrid",
                latitude: 40.4011,
                longitude: -3.8816,
                phoneNumber: 916327275,
                mail: "cumples.mcdboadilla@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plaza Norte 2",
                address: "Centro Comercial Plaza Norte 2, Plaza del Comercio, 11, 12, 28700, San Sebastián de los Reyes, Madrid",
                latitude: 40.5406,
                longitude: -3.61429,
                phoneNumber: 916238365,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S  Príncipe Pio",
                address: "Centro Comercial Príncipe Pío Paseo de la Florida, 2 Local G53, F6, 28008, Madrid, Madrid",
                latitude: 40.4214,
                longitude: -3.7202,
                phoneNumber: 918268035,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Murcia Infante",
                address: "Centro Comercial Eroski Lope de Vega, Avenida de la Región Murciana, s/n, 30011, Murcia, Murcia",
                latitude: 37.9816,
                longitude: -1.11288,
                phoneNumber: 968254233,
                mail: "murciainfantes.430@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Luz Del Tajo",
                address: "Centro Comercial Luz del Tajo | Avda. Río Boladiez, s/n - 45007 - Toledo, Toled Plaza del Comercio, 11-12 , Avenida del Río Boladiez, s/n, 45007, Toledo, Toledo",
                latitude: 39.8633,
                longitude: -3.97622,
                phoneNumber: 925231789,
                mail: "luzdeltajo.432@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Zubiarte",
                address: "C.C. Zubiarte, Avenida Abandoibarra, local 1, 2, 48011, Bilbao, Vizcaya",
                latitude: 43.2675,
                longitude: -2.9401,
                phoneNumber: 944397627,
                mail: "bilbaozubiarte.433@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Granada Estacion",
                address: "Avenida de Juan Pablo II, 53, 18014, Granada, Granada",
                latitude: 37.202,
                longitude: -3.61538,
                phoneNumber: 958116360,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Motril",
                address: "Avda. Salobreña, s/n, | (Junto a Alcampo Plaza de Utrillas, 6), 18600, Motril, Granada",
                latitude: 36.7433,
                longitude: -3.52681,
                phoneNumber: 958834867,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Salt",
                address: "Centro Comercial Espai Gironés Local 202203, Camí dels Carlins, 10, 17190, Salt, Gerona",
                latitude: 41.9661,
                longitude: 2.78068,
                phoneNumber: 972963214,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga Vialia",
                address: "Centro Comercial Vialia | Estación de Málaga | Estacion Maria Zambrano,, Local A1 Garbera Bidea, s/n, 29002, Málaga, Málaga",
                latitude: 36.7124,
                longitude: -4.43276,
                phoneNumber: 952313890,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gandia Playa",
                address: "Passeig Marítim de Neptú, 39, Gandía, 46730, Playa de Gandía, Valencia/València",
                latitude: 39.0016,
                longitude: -0.160588,
                phoneNumber: 962846544,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcalá De Guadaíra",
                address: "A-92, Km. 7,5, 41500, Alcalá de Guadaíra, Sevilla",
                latitude: 37.3532,
                longitude: -5.85886,
                phoneNumber: 955628700,
                mail: "alcaladeguadaira.442@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Albacete Fs",
                address: "Avenida Emilia Pardo Bazán, s/n, 02007, Albacete, Albacete",
                latitude: 39.007,
                longitude: -1.87827,
                phoneNumber: 967216496,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plenilunio",
                address: "Calle Aracne, s/n, 28022, Madrid, Madrid",
                latitude: 40.4471,
                longitude: -3.58717,
                phoneNumber: 917477386,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lugo As Termas",
                address: "Avenida Infanta Elena, s/n, 27003, Lugo, Lugo",
                latitude: 43.038187,
                longitude: -7.568421,
                phoneNumber: 982219990,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Gran Casa",
                address: "Centro Comercial \"Gran Casa local 202, Calle de María Zambrano, 35, 50018, Zaragoza, Zaragoza",
                latitude: 41.669,
                longitude: -0.889658,
                phoneNumber: 976512255,
                mail: "grancasa.448@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aqua",
                address: "C.C. y Ocio Aqua Multiespacio C/ Menorca, 19 2ª Planta Locales 213, 46023, Valencia, Valencia/València",
                latitude: 39.4567,
                longitude: -0.34567,
                phoneNumber: 963311269,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vigo Gran Vía",
                address: "Centro Comercial Gran Vía, Rúa do Miradoiro, 2, 36210, Vigo, Pontevedra",
                latitude: 42.2206,
                longitude: -8.72441,
                phoneNumber: 986547477,
                mail: "vigogranvia.453@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Nueva Condomina",
                address: "Poligono, Avenida Nueva Condomina, 30110, Cabezo de Torres, Murcia",
                latitude: 38.0408,
                longitude: -1.1489,
                phoneNumber: 968813450,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Parc Central",
                address: "C.C. Parc Central, Carrer del Cardenal Vidal i Barraquer, 15, 43005, Tarragona, Tarragona",
                latitude: 41.1174,
                longitude: 1.23903,
                phoneNumber: 977221076,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Roquetas",
                address: "Centro Comercial Gran Plaza | Ctra. Alicún, s/n | Local 1-2 - 04740, Avenida Roquetas, 04740, Roquetas de Mar, Almería",
                latitude: 36.7748,
                longitude: -2.61325,
                phoneNumber: 950171031,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Magic Badalona",
                address: "Centro Comercial Magic, Carrer de la Concòrdia, 15, Local A, 08917, Badalona, Barcelona",
                latitude: 41.4429,
                longitude: 2.23007,
                phoneNumber: 932245549,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Centro Comercial Plaza Mar 2",
                address: "Avinguda de Dénia, s/n, Centro comercial Plaza Mar 2, 03016, Alicante, Alicante/Alacant",
                latitude: 38.3546,
                longitude: -0.471576,
                phoneNumber: 965269226,
                mail: "."
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cartagena Espacio",
                address: "Calle Londres, s/n, Local 2 . 03, 30395, Cartagena, Murcia",
                latitude: 37.6263,
                longitude: -0.950353,
                phoneNumber: 968608005,
                mail: "N/A "
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrelodones",
                address: "Espacio Torrelodones Shopping Center |, Avenida de la Fontanilla, s / n, 28250, Torrelodones, Madrid",
                latitude: 40.5681,
                longitude: -3.91952,
                phoneNumber: 918545053,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrelavega",
                address: "Avenida de Bilbao, s/n, 39300, Torrelavega, Cantabria",
                latitude: 43.3439,
                longitude: -4.03329,
                phoneNumber: 650111169,
                mail: "Torrelavega.466@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plaza Imperial",
                address: "Avenida Diagonal Plaza, 50197, Zaragoza, Zaragoza",
                latitude: 41.6311,
                longitude: -0.991344,
                phoneNumber: 876768736,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torviscas",
                address: "Avda. Lisboa, S/N, 38670, Adeje, Santa Cruz de Tenerife",
                latitude: 28.0887,
                longitude: -16.7282,
                phoneNumber: 922716435,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Colmenar El Ventanal",
                address: "Avenida de la Tejera, S/N, 28770, Colmenar Viejo, Madrid",
                latitude: 40.6596,
                longitude: -3.75711,
                phoneNumber: 914250878,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S El Ferial",
                address: "Centro Comercial El Ferial Avda. de, Avenida Eduardo Guitián, 1319, 19002, Guadalajara, Guadalajara",
                latitude: 40.6217,
                longitude: -3.16533,
                phoneNumber: 949314712,
                mail: "guadalajaraelferial.471@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ondara",
                address: "Avenida Costa Blanca, 2, 03760, Ondara, Alicante/Alacant",
                latitude: 38.8182,
                longitude: 0.023706,
                phoneNumber: 966459670,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Jarama",
                address: "A.S. Cepsa \"Las Pueblas Ctra. de Burgos (N-I, Km. 29, 28770, Colmenar Viejo, Madrid",
                latitude: 40.6349,
                longitude: -3.59182,
                phoneNumber: 910591481,
                mail: "madridjarama.475@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Igualada",
                address: "Avinguda d Andorra, 33, 08700, Igualada, Barcelona",
                latitude: 41.5907,
                longitude: 1.61825,
                phoneNumber: 608966611,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Las Terrazas",
                address: "Paseo Marítimo, 35220, Telde, Las Palmas",
                latitude: 28.028735,
                longitude: -15.393914,
                phoneNumber: 928285397,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "El Manar",
                address: "Parque Comercial El Manar | Parcela AC-2-1 | Autovia V-21, Salida 9, 46560, Massalfassar, Valencia/València",
                latitude: 39.5527,
                longitude: -0.303383,
                phoneNumber: 961401359,
                mail: "elmanar.478@es.mcd,com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Parla Ermita",
                address: "C/ Viario de Ronda, 1- 28981 - Parla - Madrid Avda. Diagonal, 3Local 3370, 3ª Plta, 28981, Parla, Madrid",
                latitude: 40.2277,
                longitude: -3.77906,
                phoneNumber: 916056923,
                mail: "parlalaermita.479@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Las Tablas Shell",
                address: "Avenida de Santo Domingo de la Calzada, 10, 28050, Madrid, Madrid",
                latitude: 40.5084,
                longitude: -3.67844,
                phoneNumber: 913446383,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Las Tablas Repsol",
                address: "Calle del Abetal, 8, 28050, Madrid, Madrid",
                latitude: 40.5019,
                longitude: -3.6628,
                phoneNumber: 917188448,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carabanchel Repsol",
                address: "Avenida de la Peseta, 6, 28054, Madrid, Madrid",
                latitude: 40.3692,
                longitude: -3.76597,
                phoneNumber: 915082431,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vallecas Santa Eugenia",
                address: "C/ Real de Argenda, 74 esq, 28031, Madrid, Madrid",
                latitude: 40.3761,
                longitude: -3.60469,
                phoneNumber: 913852450,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vallecas La Gavia",
                address: "Centro Comercial La Gavia Alto del Retiro, Ensanche de Vallecas, 33, Local 20, 28051, Madrid, Madrid",
                latitude: 40.3685,
                longitude: -3.59814,
                phoneNumber: 914255383,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Ponferrada El Rosal",
                address: "Centro Comercial El Rosal, Avenida de la Constitución, Local 221, Avenida de la Constitución, Local 221, 24400, Ponferrada, León",
                latitude: 42.5565,
                longitude: -6.60211,
                phoneNumber: 987407726,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Rubí",
                address: "Carretera de Tarrasa, Carrer del Conflent, 143, 08191, Rubí, Barcelona",
                latitude: 41.5072,
                longitude: 2.03527,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Huércal",
                address: "Ctra. N-340, Km. 446 Polígono Industrial Parcela VI, Sector, SI-6, 04230, Huércal de Almería, Almería",
                latitude: 36.8733,
                longitude: -2.44541,
                phoneNumber: 950143842,
                mail: "cumplehuercal@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Barakaldo",
                address: "Avenida de la Ribera, nº1-B,, 48903, Barakaldo, Vizcaya",
                latitude: 43.28593,
                longitude: -2.996147,
                phoneNumber: 690779755,
                mail: "barakaldo.489@es.mcd.com; arine.garrido@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrent A7",
                address: "Polígono Industrial El Toll-L´Alberca Parcela 84, Manzana, 6, 46900, Torrente, Valencia/València",
                latitude: 39.4201,
                longitude: -0.50552,
                phoneNumber: 961577007,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Puerto Venecia",
                address: "Centro Comercial Puerto Venecia, Avenida Isla de Murano, s/n, 50021, Zaragoza, Zaragoza",
                latitude: 41.6087,
                longitude: -0.881996,
                phoneNumber: 976930248,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Arenal Playa",
                address: "C/ Cartago, 40, 07600, Palma de Mallorca, Islas Baleares",
                latitude: 39.5064,
                longitude: 2.75169,
                phoneNumber: 971441852,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcantarilla",
                address: "Avenida Río Seco- Polígono Comercial Oeste, 30835, Sangonera La Seca, Murcia",
                latitude: 37.9565,
                longitude: -1.217,
                phoneNumber: 968818194,
                mail: "alcantarilla.494@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Huelva Norte",
                address: "Avenida de las Fuerzas Armadas, S/N, 21007, Huelva, Huelva",
                latitude: 37.269192,
                longitude: -6.918146,
                phoneNumber: 959224288,
                mail: "huelvanorte.496@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Parque Comercial Abadia",
                address: "Centro Comercial La Abadia | Autovia Madrid-Toledo A-42 | Sal.65 Ctra CM403, Dir, 45005, Toledo, Toledo",
                latitude: 39.9053509945346,
                longitude: -4.01690699913224,
                phoneNumber: 925237388,
                mail: "toledonorte.498@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Roda De Bara",
                address: "C/ Hispano Suiza, nº 33-35 | Urbanizacion El Francaset | Parcela 405, Ctra., N-34, 43883, Roda de Bara, Tarragona",
                latitude: 41.1783,
                longitude: 1.4884,
                phoneNumber: 977802783,
                mail: "rodadebara.499@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gamarra",
                address: "Gamarrako Atea, 38A, 01013, Vitoria, Araba/Álava",
                latitude: 42.8641,
                longitude: -2.6608,
                phoneNumber: 945273056,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gelves",
                address: "Ctra. Sevilla - Coria del Rio, Km. 2, Avenida de Europa, s/n, 41920, San Juan de Aznalfarache, Sevilla",
                latitude: 37.3549,
                longitude: -6.02697,
                phoneNumber: 955409774,
                mail: "sevillagelves.502@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Lloret Riera",
                address: "Avinguda Just Marlés Vilarrodona, 53, 17310, Lloret de Mar, Gerona",
                latitude: 41.7003,
                longitude: 2.84251,
                phoneNumber: 972370803,
                mail: "lloretriera.503@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Avenida De Los Poblados",
                address: "Junto a Gasolinera Cepsa, Avenida de los Poblados, 118, 28054, Madrid, Madrid",
                latitude: 40.3728,
                longitude: -3.72582,
                phoneNumber: 915116050,
                mail: "avenidadelosPoblados.504@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrevieja Punta Marina",
                address: "Cetro Comercial Punta Marina Ctra. N. Km. 54, N-332, 03189, Orihuela Costa, Alicante/Alacant",
                latitude: 37.9492,
                longitude: -0.71432,
                phoneNumber: 966799591,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cartagena Mandarache",
                address: "Centro Comercial Mandarache, Ronda Ciudad de la Unión, Parcela 1, 30204, Cartagena, Murcia",
                latitude: 37.617,
                longitude: -0.98391,
                phoneNumber: 968517176,
                mail: "N/A"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lerida Norte",
                address: "Avinguda Alcalde Rovira Roure, 185, 25198, Lérida, Lerida",
                latitude: 41.6303,
                longitude: 0.595174,
                phoneNumber: 973221357,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Urtinsa",
                address: "Calle los Ebanistas, 2, 28923, Alcorcón, Madrid",
                latitude: 40.3424,
                longitude: -3.80587,
                phoneNumber: 654917281,
                mail: "at.cliente.mcd.urtinsa@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Tortosa",
                address: "Pont de Tirant-lo Blanc, s/n Parcela 1 Plan Parcial Portal Ciutat, Carrer del Nord, 43500, Tortosa, Tarragona",
                latitude: 40.7984,
                longitude: 0.521421,
                phoneNumber: 977442355,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Orense Fonsillon",
                address: "Rúa Dos Lares Viales, s/n, 32005, Orense, Orense",
                latitude: 42.321998,
                longitude: -7.873064,
                phoneNumber: 988238250,
                mail: "orensefonsillon.517@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Móstoles Fuensanta",
                address: "Centro Comercial La Fuensanta, Avenida de la Onu, 65, 28936, Móstoles, Madrid",
                latitude: 40.3162,
                longitude: -3.85053,
                phoneNumber: 916467130,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gandariña",
                address: "Autovía Rías Baixas | (A-52), Salida 664 | Centro Comercial Meixoeiro, Carrer Extremadura, s/n, 36214, Vigo, Pontevedra",
                latitude: 42.217,
                longitude: -8.68414,
                phoneNumber: 986406544,
                mail: "vigogandarina.521@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga Ikea",
                address: "Parque Comercial BAHIA AZUL, Avda. de Velazquez, 389 , Junto a Ikea, 29004, Málaga, Málaga",
                latitude: 36.658152,
                longitude: -4.484857,
                phoneNumber: 951908208,
                mail: "malagaikea.523@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Rivas Futura Cerrado Temporalmente",
                address: "Calle Juan de la Cierva, 1, 28521, Rivas Vaciamadrid, Madrid",
                latitude: 40.3386,
                longitude: -3.5297,
                phoneNumber: 916669477,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Luz Shopping",
                address: "Carretera el Calvario, Parcela L21, C Area, 7, 11400, Jerez de la Frontera, Cádiz",
                latitude: 36.693887,
                longitude: -6.160197,
                phoneNumber: 956741677,
                mail: "jerezluzshopping.525@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Arroyomolinos",
                address: "C/ Puerto de Somosierra, s/n Junto a Bricor, 28939, Arroyomolinos, Madrid",
                latitude: 40.297,
                longitude: -3.933424,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mc Donald´S Artica",
                address: "C/ Lantzeluze, Sector Artiberri , PA-30, 39, 31013, Berrioplano, Navarra",
                latitude: 42.834107,
                longitude: -1.665535,
                phoneNumber: 948354905,
                mail: "pamplonairuna.527@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mataró Avingudes",
                address: "Pintor Vicenç Puig i Perajordi, 2, 08303, Mataró, Barcelona",
                latitude: 41.535894,
                longitude: 2.430721,
                phoneNumber: 692380193,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "El Juncal",
                address: "Avenida de Rafael Nadal, 3, 28108, Alcobendas, Madrid",
                latitude: 40.537319,
                longitude: -3.623643,
                phoneNumber: 916590975,
                mail: "alcobendaseljuncal.529@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Los Pastores",
                address: "Avenida 28 de Febrero, s/n, 11207, Algeciras, Cádiz",
                latitude: 36.112563,
                longitude: -5.453152,
                phoneNumber: 956904030,
                mail: "algeciraslospastores.530@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Utrera",
                address: "Ctra. Arahal - Utrera, km. 77, Avenida Cuesta del Merendero, 41710, Utrera, Sevilla",
                latitude: 37.1741,
                longitude: -5.77404,
                phoneNumber: 955835103,
                mail: "."
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Tres Aguas",
                address: "Avda. San Martín de Valdeiglesias, 2 Junto Centro Comercial Tres Aguas, Avenida San Martín de Valdeiglesias, 2, 28922, Alcorcón, Madrid",
                latitude: 40.35637,
                longitude: -3.830001,
                phoneNumber: 607599024,
                mail: "at.cliente.mcd.tresaguas@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Lorca",
                address: "Poligono Los Peñotes, Calle Antonio de Ulloa, 9, 30800, Lorca, Murcia",
                latitude: 37.6576,
                longitude: -1.7063,
                phoneNumber: 968471438,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Coruña La Grela",
                address: "Polígono Industrial de La Grela, Calle Severo Ochoa, 6, 15008, La Coruña, La Coruña",
                latitude: 43.349708,
                longitude: -8.420525,
                phoneNumber: 981101177,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palencia Arambol",
                address: "Parque Comercial Arambol |, Avenida Brasilia, s/n, 34004, Palencia, Palencia",
                latitude: 42.012016,
                longitude: -4.519585,
                phoneNumber: 613565234,
                mail: "palenciaarambol.535@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sabadell Sur",
                address: "Parque Empresarial del Valles Pol. de Sant Pau de Riusec, Carrer de la Serra de Galliners, 51, 08205, Sabadell, Barcelona",
                latitude: 41.51145,
                longitude: 2.10492,
                phoneNumber: 935769994,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Montecarmelo",
                address: "Avenida de Montecarmelo, 1, 28049, Madrid, Madrid",
                latitude: 40.502689,
                longitude: -3.697865,
                phoneNumber: 911720006,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia Ave",
                address: "Estación Joaquin Sorolla, Via de Servicio de la Estación de Joaquín Sorolla, 46007, Valencia, Valencia/València",
                latitude: 39.459852,
                longitude: -0.381513,
                phoneNumber: 963805980,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Biosfera",
                address: "Calle Juan Carlos I, 15, Planta 4 Local 1, 35510, Tías, Las Palmas",
                latitude: 28.9225,
                longitude: -13.669107,
                phoneNumber: 928512071,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Parets",
                address: "C/ Conte Montemolins, 16, 08150, Parets del Vallés, Barcelona",
                latitude: 41.5588,
                longitude: 2.231421,
                phoneNumber: 935730582,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valladolid Hospital",
                address: "Calle Palillos, s/n, 47012, Valladolid, Valladolid",
                latitude: 41.629131,
                longitude: -4.710514,
                phoneNumber: 664604385,
                mail: "valladolidhospital.535@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Coso",
                address: "Calle Jerónimo Blancas, 2, 50001, Zaragoza, Zaragoza",
                latitude: 41.651612,
                longitude: -0.879698,
                phoneNumber: 976217320,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Doctor Rico",
                address: "Calle Ciudad Real, 28, 03005, Alicante, Alicante/Alacant",
                latitude: 38.354787,
                longitude: -0.497944,
                phoneNumber: 672273503,
                mail: "alicantedoctorrico.543@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lucena",
                address: "Polígono Industrial Los, Calle Polvillares E, S/N, 14900, Lucena, Córdoba",
                latitude: 37.4133,
                longitude: -4.507178,
                phoneNumber: 957590530,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Velez Malaga",
                address: "Avenida del Rey Juan Carlos I, 16, 29700, Vélez, Málaga",
                latitude: 36.761355,
                longitude: -4.099093,
                phoneNumber: 952549012,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sant Cugat Can Solà",
                address: "Carrer Caldes i Arús, 1, 08195, Sant Cugat del Vallés, Barcelona",
                latitude: 41.47702,
                longitude: 2.0969,
                phoneNumber: 616277537,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Tudela",
                address: "Carretera de Corella, s/n, 31500, Tudela, Navarra",
                latitude: 42.059505,
                longitude: -1.630139,
                phoneNumber: 663781941,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia Ronda Norte",
                address: "Avenida de los Hermanos Machado, 141, 46025, Valencia, Valencia/València",
                latitude: 39.498047,
                longitude: -0.383447,
                phoneNumber: 963661991,
                mail: "Valenciarondanorte.548@es.McD.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Albacete Ave",
                address: "Calle Federico García Lorca, S / N, 02001, Albacete, Albacete",
                latitude: 39.001018,
                longitude: -1.851228,
                phoneNumber: 967521629,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mercaleon",
                address: "Ctra. De Vilecha, 21, esq. C/ de los Aluches, 24192, León, León",
                latitude: 42.580244,
                longitude: -5.571862,
                phoneNumber: 987214300,
                mail: "Mercaleon.550@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Arganda",
                address: "Avenida de Madrid, 136, Salida 22, 28500, Arganda del Rey, Madrid",
                latitude: 40.311784,
                longitude: -3.487319,
                phoneNumber: 918706784,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Esplugas Ronda",
                address: "Vic 18, 08950, Esplugues de Llobregat, Barcelona",
                latitude: 41.37038,
                longitude: 2.0907,
                phoneNumber: 932430238,
                mail: "espluguesronda.553@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Dos Hermanas Circunvalación",
                address: "Junto a Lidl, Avenida de Adolfo Suárez, 39, 41704, Dos Hermanas, Sevilla",
                latitude: 37.294436,
                longitude: -5.910608,
                phoneNumber: 954722683,
                mail: "doshermanascircunvalacion.555@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Tarragona Sur",
                address: "Carretera Vella de Valencia, 5, 43006, Tarragona, Tarragona",
                latitude: 41.116591,
                longitude: 1.233285,
                phoneNumber: 977541448,
                mail: "Tarragonasur@rrsalou.es "
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Burjassot",
                address: "C.C. Ademuz, Avenida de la Ilustración, 6, 46100, Burjassot, Valencia/València",
                latitude: 39.500581,
                longitude: -0.409248,
                phoneNumber: 961487781,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Mcauto Palacio De Deportes",
                address: "Paseo del Emperador Carlos V, 19, 18008, Granada, Granada",
                latitude: 37.153852,
                longitude: -3.591972,
                phoneNumber: 958812324,
                mail: "GRANADAPALACIODEPORTES.558@ES.MCD.COM"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vila-Real",
                address: "Avinguda Itàlia, 80, 12540, Villarreal, Castellón/Castelló",
                latitude: 39.930431,
                longitude: -0.106859,
                phoneNumber: 964521542,
                mail: "villarreal.559@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vallecas Villa",
                address: "Avenida de la Albufera | esq , Calle de Bruno Abúndez, s/n, 28031, Madrid, Madrid",
                latitude: 40.382772,
                longitude: -3.626137,
                phoneNumber: 918057092,
                mail: "vallecasvilla.560@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Ronda Norte",
                address: "Calle los Halcones, s/n, 10003, Cáceres, Cáceres",
                latitude: 39.489271,
                longitude: -6.377517,
                phoneNumber: 927184018,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Coslada",
                address: "Avenida de San Pablo, 51, 28823, Coslada, Madrid",
                latitude: 40.431231,
                longitude: -3.533117,
                phoneNumber: 916725023,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Antequera",
                address: "Polígono Industrial de Antequera Avenida Principal, rotonda La Noria, 1, 29200, Antequera, Málaga",
                latitude: 37.026744,
                longitude: -4.537418,
                phoneNumber: 952846080,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Figueras Vilatenim",
                address: "Carretera de Roses C-260, 84, 88, 17484, Figueras, Gerona",
                latitude: 42.266992,
                longitude: 2.995241,
                phoneNumber: 872007395,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S  Soria",
                address: "Calle A, s/n | Frente a Centro Comercial Camaretas, 42190, Golmayo, Soria",
                latitude: 41.772828,
                longitude: -2.498306,
                phoneNumber: 975245157,
                mail: "soria.565@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Guadalajara Oeste",
                address: "Calle de Francisco Aritio, 90, 19004, Guadalajara, Guadalajara",
                latitude: 40.635394,
                longitude: -3.190381,
                phoneNumber: 949600014,
                mail: "guadalajaraoeste.567@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gijón Avd Constitución",
                address: "Avda. Constitución, 105 esq, junto EE.SS. Cepsa Calle Severo Ochoa, 36, 33210, Gijón, Asturias",
                latitude: 43.525714,
                longitude: -5.677835,
                phoneNumber: 985146741,
                mail: "gijonconstitucion.568@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Córdoba Los Patios",
                address: "Parque Comercial Patios de Azahara, Carretera Palma del Río, Km 4, 5, 14005, Córdoba, Córdoba",
                latitude: 37.877624,
                longitude: -4.836961,
                phoneNumber: 957227879,
                mail: "cordobalospatios.569@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Fuencarral",
                address: "Calle de Fuencarral, 103, 28004, Madrid, Madrid",
                latitude: 40.428326,
                longitude: -3.702167,
                phoneNumber: 914457594,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Santa Justa",
                address: "Avenida de Kansas City, s / n, 41007, Sevilla, Sevilla",
                latitude: 37.392239,
                longitude: -5.976104,
                phoneNumber: 954533730,
                mail: "santajusta.571@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Fernando De Henares",
                address: "Parque Comercial Camino Real | Ctra. Nac. A-2, Km 16 | Salida 16B - 28830 -, San Campo de las Naciones, 28830, San Fernando de Henares, Madrid",
                latitude: 40.447099,
                longitude: -3.524227,
                phoneNumber: 916690606,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Hospitalet Gran Via",
                address: "Plaça d'Europa, 9-11, 08907, L'Hospitalet de Llobregat, Barcelona",
                latitude: 41.356622,
                longitude: 2.128107,
                phoneNumber: 932430596,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palmetillo",
                address: "Calle Palmetillo Tres, 19, 41500, Alcalá de Guadaíra, Sevilla",
                latitude: 37.375178,
                longitude: -5.909175,
                phoneNumber: 955630902,
                mail: "sevillapalmetillo.575@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Ciudad De La Imagen",
                address: "c/ Ganímedes nº7, Junto a CostCo, 41015, Sevilla, Sevilla",
                latitude: 37.43364,
                longitude: -5.969625,
                phoneNumber: 663629332,
                mail: "Sevillaciudadimagen.581@es.mcd.com "
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aranjuez",
                address: "Paseo del Deleite, 42, 28300, Aranjuez, Madrid",
                latitude: 40.024936,
                longitude: -3.617541,
                phoneNumber: 911747185,
                mail: "aranjuez.595@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villanueva De La Serena",
                address: "Carretera Don Benito PARQUE COMERCIAL RIBERA DEL GUADIANA, 06700, Villanueva de la Serena, Badajoz",
                latitude: 38.96949,
                longitude: -5.80889,
                phoneNumber: 924847059,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sant Just Desvern",
                address: "Carretera Reial, N-340 | Nº 145, 08960, Sant Just Desvern, Barcelona",
                latitude: 41.379475,
                longitude: 2.06595,
                phoneNumber: 937824880,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valdemoro",
                address: "Avda. de España, 4 esquina Emilia Pardo Bazan, 28342, Valdemoro, Madrid",
                latitude: 40.192683,
                longitude: -3.690125,
                phoneNumber: 918762560,
                mail: "valdemoro.590@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Majadahonda Gran Plaza 2",
                address: "Calle de los Químicos, 2, 28222, Majadahonda, Madrid",
                latitude: 40.488797,
                longitude: -3.89689,
                phoneNumber: 915047306,
                mail: "cumples.mcdgranplaza2@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia Vara De Quart",
                address: "Lg, Camí Nou de Picanya, 2, 46014, Valencia, Valencia/València",
                latitude: 39.457629,
                longitude: -0.403532,
                phoneNumber: 963138405,
                mail: "valenciavaradequart@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Coruña Perillo",
                address: "Avenida das Mariñas, 2, 15172, Perillo, La Coruña",
                latitude: 43.32701,
                longitude: -8.363801,
                phoneNumber: 682342558,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carrus",
                address: "C/ Almansa, Carrer Monòver, 68, 03206, Elche, Alicante/Alacant",
                latitude: 38.278145,
                longitude: -0.720977,
                phoneNumber: 965555263,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Badajoz San Roque",
                address: "Avenida Ricardo Carapeto Zambrano, 56, 06008, Badajoz, Badajoz",
                latitude: 38.878675,
                longitude: -6.945783,
                phoneNumber: 924477813,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Plaza Nueva",
                address: "Centro Comercial Plaza Nueva, Avenida Puerta del Sol, 2, Local 9, 28918, Leganés, Madrid",
                latitude: 40.3431,
                longitude: -3.75841,
                phoneNumber: 914966367,
                mail: "leganesplazanueva.607@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alicante Vistahermosa",
                address: "Avenida Antonio Ramos Carratalá, 26, 03016, Alicante, Alicante/Alacant",
                latitude: 38.369537,
                longitude: -0.463993,
                phoneNumber: 965155035,
                mail: "."
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Rota",
                address: "Avenida de la Libertad, Avenida La Matea, 1, 11520, ROTA, Cádiz",
                latitude: 36.632941,
                longitude: -6.368009,
                phoneNumber: 956841011,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Murcia Espinardo",
                address: "Av. Ciclista Mariano Rojas, 19, | Interseccion con Rotonda | Autovia A-30, 30100, Murcia, Murcia",
                latitude: 38.001467,
                longitude: -1.148553,
                phoneNumber: 968816627,
                mail: "murciaespinardo.612@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torredembarra",
                address: "Carrer Joaquim Torrens Ibern, nº 16, 43830, Torredembarra, Tarragona",
                latitude: 41.147903,
                longitude: 1.415072,
                phoneNumber: 977644921,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Marina La Palma",
                address: "C/ Bajamar, s/n | Puerto Marina la Palma - 38700 - Santa Cruz de la Palma -, Sant, 38700, Santa Cruz de la Palma, Santa Cruz de Tenerife",
                latitude: 28.679675,
                longitude: -17.767173,
                phoneNumber: 922410343,
                mail: "marinalapalma.619@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Aragon",
                address: "Carrer d'Aragó, 207, 07008, Palma de Mallorca, Islas Baleares",
                latitude: 39.587565,
                longitude: 2.674445,
                phoneNumber: 971475988,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Melilla Puerto",
                address: "Paseo Marítimo, Alcalde Rafael Ginel, 7, 52005, Melilla, Melilla",
                latitude: 35.288348,
                longitude: -2.937089,
                phoneNumber: 952156704,
                mail: "melillapuerto.623@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Mcauto Pulianas",
                address: "Calle Luis Buñuel, s/n, 18197, Granada, Granada",
                latitude: 37.211764,
                longitude: -3.619899,
                phoneNumber: 958167749,
                mail: "granadapulianas.624@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Los Rodeos",
                address: "Calle, s/n, 38297, La Laguna, Santa Cruz de Tenerife",
                latitude: 28.487102,
                longitude: -16.338203,
                phoneNumber: 922637400,
                mail: "tenerifelosrodeos.626@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Estadio",
                address: "Avenida Mare Nostrum, s/n, 04009, Almería, Almería",
                latitude: 36.841772,
                longitude: -2.431746,
                phoneNumber: 950229818,
                mail: "mcazafatas@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Ronda Sant Pere",
                address: "Ronda de Sant Pere, 3, 08010, Barcelona, Barcelona",
                latitude: 41.388417,
                longitude: 2.170669,
                phoneNumber: 934127031,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Salamanca Capuchinos",
                address: "Carretera Madrid, 5, 37008, Salamanca, Salamanca",
                latitude: 40.952,
                longitude: -5.655,
                phoneNumber: 923133674,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Sant Adria-Verneda",
                address: "Carretera de Mataró, 10, Carrer de Balmes, 11, 08930, San Adriá del Besós, Barcelona",
                latitude: 41.429054,
                longitude: 2.21152,
                phoneNumber: 933810606,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Tenerife Añaza",
                address: "C/BENTAGAY 1-3, ZONA COMERCIAL AÑAZA, 38111 , SANTA CRUZ DE TENERIFE, Santa Cruz de Tenerife",
                latitude: 28.4262379,
                longitude: -16.2998954,
                phoneNumber: 922695953,
                mail: "634TenerifeAnaza@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sauquillo",
                address: "Calle Luis Sauquillo, 86, 28944, Fuenlabrada, Madrid",
                latitude: 40.276333,
                longitude: -3.803466,
                phoneNumber: 916069112,
                mail: "at.cliente.mcd.sauquillo@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valladolid Arroyo Encomienda",
                address: "Calle Feria, 1, 47195, Arroyo de la Encomienda, Valladolid",
                latitude: 41.632,
                longitude: -4.784,
                phoneNumber: 678871442,
                mail: "valladolidarroyodelaencomienda.638@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villalba Las Eras",
                address: "C/ Amapolas Esq, Calle Alejandro Gamella, 28400, Collado Villalba, Madrid",
                latitude: 40.640707,
                longitude: -4.007197,
                phoneNumber: 918402045,
                mail: "cumples.mcdlaseras@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Pontevedra",
                address: "Avenida Lugo, 79, 36004, Pontevedra, Pontevedra",
                latitude: 42.433428,
                longitude: -8.623367,
                phoneNumber: 986848134,
                mail: "pontevedrahospital.640@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Girona Maristes",
                address: "Avinguda del President Josep Tarradellas i Joan, 9, 17006, Gerona, Gerona",
                latitude: 41.981791,
                longitude: 2.810403,
                phoneNumber: 972296720,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Belartza",
                address: "C/ Fernando Mugica, s/n - 20018 - San, Sebastián, 20018, San Sebastián, Guipúzcoa",
                latitude: 43.281254,
                longitude: -2.016747,
                phoneNumber: 943229101,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Los Alcores",
                address: "C/ Utrera, 1, Rotonda Mairena El Viso del Alcor, 41510, Mairena del Alcor, Sevilla",
                latitude: 37.38133,
                longitude: -5.733486,
                phoneNumber: 955747781,
                mail: "sevillalosalcores.652@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Nuevo Barajas",
                address: "Zona Tierra | Terminal T-4 Aeropuerto Adolfo Suarez |, 28042, Madrid, Madrid",
                latitude: 40.491377,
                longitude: -3.592601,
                phoneNumber: 913338460,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Parla Laguna",
                address: "Centro Comercial Laguna Park, Avenida de Las Lagunas, 5, 28980, Parla, Madrid",
                latitude: 40.244064,
                longitude: -3.777582,
                phoneNumber: 916982095,
                mail: "parlalaguna.655@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Castellón Hospital",
                address: "Avinguda de Benicàssim, 31, 12004, Castellón de la Plana, Castellón/Castelló",
                latitude: 40.000005,
                longitude: -0.041043,
                phoneNumber: 964044988,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Europa",
                address: "Avenida de Europa, s/n, 11405, Jerez de la Frontera, Cádiz",
                latitude: 36.698797,
                longitude: -6.106621,
                phoneNumber: 956355689,
                mail: "jerezavenidadeeurop@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santander Avda. Constitución",
                address: "Calle Libertad, 1, 39012, Santander, Cantabria",
                latitude: 43.47321,
                longitude: -3.809488,
                phoneNumber: 656293049,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sevilla Gines",
                address: "Enlace Gines con A-49, Avenida del Trabajo, 41960, Gines, Sevilla",
                latitude: 37.378543,
                longitude: -6.082629,
                phoneNumber: 671323440,
                mail: "SevillaGines.662@es.mcd.com "
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga Valle Inclán",
                address: "Avda Valle Inclan, Calle Alcalde José Luis Estrada, Esquina, 29010, Málaga, Málaga",
                latitude: 36.729892,
                longitude: -4.444386,
                phoneNumber: 952306223,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Glorias Diagonal",
                address: "Avenida Diagonal, 188 Centro Comercial Les Glories, Local 201, 08018, Barcelona, Barcelona",
                latitude: 41.405,
                longitude: 2.19089,
                phoneNumber: 934860665,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lepe",
                address: "Avenida Blas Infante S/N, 21440, Lepe, Huelva",
                latitude: 37.252981,
                longitude: -7.210591,
                phoneNumber: 959326592,
                mail: "lepe.671@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Armentia",
                address: "Alto de Armentia Kalea, 3, Bajos, 01015, Vitoria, Araba/Álava",
                latitude: 42.8366585,
                longitude: -2.6986863,
                phoneNumber: 945330211,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Jaca",
                address: "Calle Llano Victoria, 1, 22700, Jaca, Huesca",
                latitude: 42.566143,
                longitude: -0.554956,
                phoneNumber: 974365073,
                mail: "jaca.676@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Móstoles Estación",
                address: "Calle Camino del Obispo 6b, 28935, Móstoles, Madrid",
                latitude: 40.331147,
                longitude: -3.884406,
                phoneNumber: 915937562,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alicante San Juan",
                address: "Av. de Miguel Hernández, 111, 03550, Alicante, Alicante/Alacant",
                latitude: 38.406295,
                longitude: -0.427053,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Levante",
                address: "C/ Son Falco, nº 24 - 07007, Poligono son Malferit, 07007, Palma de Mallorca, Islas Baleares",
                latitude: 39.56447492,
                longitude: 2.68401832,
                phoneNumber: 971778666,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Burgos Gamonal",
                address: "Calle Juan Ramón Jiménez, 1, 09007, Burgos, Burgos",
                latitude: 42.354734,
                longitude: -3.662479,
                phoneNumber: 947470117,
                mail: "burgosgamonal.685@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Arrecife",
                address: "Argana Baja, s/n, 35500, Arrecife, Las Palmas",
                latitude: 28.972701,
                longitude: -13.562557,
                phoneNumber: 928808736,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Segovia Plaza Artillería",
                address: "Avenida del Padre Claret, 4, 40001, Segovia, Segovia",
                latitude: 40.94815,
                longitude: -4.11654,
                phoneNumber: 921421097,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Abadiño",
                address: "C/ Murueta, nº 11 c/v | C/ Montorreta - 48220 - Abadiño - Vizcaya, 48220, Abadiño, Vizcaya",
                latitude: 43.1688445,
                longitude: -2.61858016,
                phoneNumber: 638804100,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lleida Copa D'Or",
                address: "Carrer Joaquin Costa, s/n, 25001, Lérida, Lerida",
                latitude: 41.60602833,
                longitude: 0.63286434,
                phoneNumber: 973212288,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cartagena Juan Carlos I",
                address: "Avenida Juan Carlos I, 85, 30310, Cartagena, Murcia",
                latitude: 37.629232,
                longitude: -1.002944,
                phoneNumber: 968513668,
                mail: "N/A"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Córdoba Libia",
                address: "Avda. de Libia, 76, 14007, Córdoba, Córdoba",
                latitude: 37.891652,
                longitude: -4.755703,
                phoneNumber: 957419133,
                mail: "cordobalibia.693@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alberto Alcocer",
                address: "C, Avenida de Alberto de Alcocer, 37, 28016, Madrid, Madrid",
                latitude: 40.45882,
                longitude: -3.681569,
                phoneNumber: 914346322,
                mail: "albertoalcocer.694@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Écija Fuensanta",
                address: "AVDA DEL GENIL S/N, ECIJA (SEVILLA), 41400, Écija, Sevilla",
                latitude: 37.5324286,
                longitude: -5.0819196,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Manresa Universitat",
                address: "Avenida Universitaria, 17, 08243, Manresa, Barcelona",
                latitude: 41.73866157,
                longitude: 1.82206363,
                phoneNumber: 938776827,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Jaén Plaza",
                address: "Paraje de las Lagunillas, 23009, Jaen, Lugo",
                latitude: 37.78981,
                longitude: -3.77473,
                phoneNumber: 953194891,
                mail: "jaenplaza.701@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Fernando Janer",
                address: "Ctra. de la Batería de la Ardila, 4, 35100, San Fernando, Cádiz",
                latitude: 36.4558887144,
                longitude: -6.21553393106,
                phoneNumber: 956233658,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Teruel",
                address: "Avenida de Sagunto, 87, 44002, Teruel, Teruel",
                latitude: 40.333233,
                longitude: -1.088668,
                phoneNumber: 978227095,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Hospitalet Bellvitge",
                address: "Rambla de la Marina, 349, 08907, L'Hospitalet de Llobregat, Barcelona",
                latitude: 41.352942,
                longitude: 2.105609,
                phoneNumber: 933358813,
                mail: "hospitaletbellvitge.707@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Arucas",
                address: "GC-20, 35400, Arucas, Las Palmas",
                latitude: 28.1159401,
                longitude: -15.5283909,
                phoneNumber: 630447655,
                mail: "arucas@mcdlaspalmas.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Murcia Atalayas",
                address: "Calle de Molina de Segura, s / n, 30006, Murcia, Murcia",
                latitude: 37.992398,
                longitude: -1.11308,
                phoneNumber: 968236667,
                mail: "murciaatalayas.711@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ayamonte",
                address: "Calle Guatemala, 2, 21400, Ayamonte, Huelva",
                latitude: 37.220205,
                longitude: -7.397767,
                phoneNumber: 959327282,
                mail: "ayamonte.713@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Avenida",
                address: "Avenida da Gran Vía, 103, 36204, Vigo, Pontevedra",
                latitude: 42.225514,
                longitude: -8.721364,
                phoneNumber: 986423478,
                mail: "vigoavenida.715@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mc Donald´S Úbeda",
                address: "Carretera Córdoba-Valencia, 13, 23400, Úbeda, Jaén",
                latitude: 38.019387,
                longitude: -3.383628,
                phoneNumber: 953753554,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Valencia Universidad",
                address: "C/ Luis Peixo, 46011, Valencia, Valencia/València",
                latitude: 39.474909,
                longitude: -0.333349,
                phoneNumber: 961228450,
                mail: " valenciauniversidad.727@es.McD.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Roca Factory",
                address: "Polígono Can Massaguer, s/n. Parcela F, SPI, 3, 08430, La Roca del Vallés, Barcelona",
                latitude: 41.61752,
                longitude: 2.346376,
                phoneNumber: 936320670,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Madrid Avenida Andalucia",
                address: "Avenida de Andalucía, 19, 28041, Madrid, Madrid",
                latitude: 40.366471,
                longitude: -3.693848,
                phoneNumber: 913766227,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Plaza España",
                address: "Plaza España, 3, 07002, Palma de Mallorca, Islas Baleares",
                latitude: 39.576033,
                longitude: 2.652946,
                phoneNumber: 971853951,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ermita Barajas",
                address: "Avenida de Logroño, 303, 28042, Madrid, Madrid",
                latitude: 40.4690385235754,
                longitude: -3.58198966607169,
                phoneNumber: 913010543,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Hospital Clinic",
                address: "Carrer de Villarroel, 189, 08036, Barcelona, Barcelona",
                latitude: 41.3892,
                longitude: 2.1514,
                phoneNumber: 936760196,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Benidorm Alfonso Puchades",
                address: "Avinguda Alfonso Puchades, 49, 03502, Benidorm, Alicante/Alacant",
                latitude: 38.542748,
                longitude: -0.12636,
                phoneNumber: 965851287,
                mail: "benidormalfonsopuchades.744@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S  Calpe",
                address: "Avda. de los Ejercitos Españoles esq, Calle Malta, 2, 03710, Calpe, Alicante/Alacant",
                latitude: 38.64458,
                longitude: 0.054384,
                phoneNumber: 965874735,
                mail: "calpe.745@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Romualdo",
                address: "Calle de San Romualdo, 22, 28037, Madrid, Madrid",
                latitude: 40.439494,
                longitude: -3.622506,
                phoneNumber: 911385304,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Javier Mirador",
                address: "N-332, 8, 30730, San Javier, Murcia",
                latitude: 37.822391,
                longitude: -0.81182,
                phoneNumber: 968193576,
                mail: "N/A"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Madrid Ventisquero De La Condesa",
                address: "Avenida del Ventisquero de la Condesa, 28035, Madrid, Madrid",
                latitude: 40.494932,
                longitude: -3.7184044,
                phoneNumber: 917282125,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Gijón-Oasis",
                address: "Carretera Piles al Infanzón, 361, 33203, Gijón, Asturias",
                latitude: 43.54235,
                longitude: -5.640417,
                phoneNumber: 985879974,
                mail: "gijonoasis.753@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza M.Cadena",
                address: "C, Avenida San Juan de la Peña, 80, 50015, Zaragoza, Zaragoza",
                latitude: 41.666365,
                longitude: -0.871357,
                phoneNumber: 876281999,
                mail: "zaragozamcadena.762@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cimpozuelos",
                address: "C/ Cedro, 5, 28350, Ciempozuelos, Madrid",
                latitude: 40.165709,
                longitude: -3.629058,
                phoneNumber: 918629558,
                mail: "ciempozuelos.766@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Aranda De Duero",
                address: "Rafael Alberti, 3, 09400, Aranda de Duero, Burgos",
                latitude: 41.66287,
                longitude: -3.692732,
                phoneNumber: 947559600,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Juan De Borbón",
                address: "Avenida Juan de Borbón, 206, 30110, Murcia, Murcia",
                latitude: 38.022,
                longitude: -1.14,
                phoneNumber: 968727328,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villanueva De La Cañada",
                address: "Avda España,1, C.C Las Carcavas, 28691, Villanueva de la Cañada, Madrid",
                latitude: 40.433177,
                longitude: -4.00139,
                phoneNumber: 918155663,
                mail: "cumples.mcdvillanueva@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Isidro",
                address: "Calle Alajero &, Avenida de la Democracia, 10, 38600, Granadilla de Abona, Santa Cruz de Tenerife",
                latitude: 28.07,
                longitude: -16.55,
                phoneNumber: 922395880,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Universidad",
                address: "Avenida de Madrid, 21, 27002, Lugo, Lugo",
                latitude: 42.997466,
                longitude: -7.545157,
                phoneNumber: 982257897,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza La Almozara",
                address: "Avenida Francia, 8, 50003, Zaragoza, Zaragoza",
                latitude: 41.661908,
                longitude: -0.906812,
                phoneNumber: 876287931,
                mail: "Zaragozaalmozara.787@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Castro Urdiales",
                address: "Calle Carretera Valmaseda, 50, 39700, Castro Urdiales, Cantabria",
                latitude: 43.368372,
                longitude: -3.215907,
                phoneNumber: 620382844,
                mail: "CastroUrdiales.791@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Taco",
                address: "Carretera del Rosario, 186, 38108, Santa Cruz de Tenerife, Santa Cruz de Tenerife",
                latitude: 28.4473291,
                longitude: -16.2920886,
                phoneNumber: 922454185,
                mail: "tenerifetaco.794@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Costa Adeje",
                address: "Av. de Ayyo, s/n, 38670, Adeje, Santa Cruz de Tenerife",
                latitude: 28.120601,
                longitude: -16.744824,
                phoneNumber: 922839423,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Azuqueca De Henares",
                address: "Avenida del Siglo XXI, 13, 19200, Azuqueca de Henares, Guadalajara",
                latitude: 40.569214,
                longitude: -3.270477,
                phoneNumber: 949257521,
                mail: "azuquecadehenares.796@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Coruña Marineda",
                address: "Avenida de Arteixo, 43, 15008, La Coruña, La Coruña",
                latitude: 43.34436,
                longitude: -8.428445,
                phoneNumber: 981632442,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Fuengirola Puerto",
                address: "Paseo Marítimo Rey de España, 29, 29640, Fuengirola, Málaga",
                latitude: 36.53851,
                longitude: -4.620965,
                phoneNumber: 951903322,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Albufera",
                address: "Avenida de la Albufera, 1, 28038, Madrid, Madrid",
                latitude: 40.39822,
                longitude: -3.668787,
                phoneNumber: 916034295,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Bolueta",
                address: "Errepide BilbaoGaldakao 26, 48004, Bilbao, Vizcaya",
                latitude: 43.248335,
                longitude: -2.903904,
                phoneNumber: 944719649,
                mail: "bolueta.803@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S La Barrosa",
                address: "Crta de las Lagunas, 19, 11130, Chiclana de la Frontera, Cádiz",
                latitude: 36.3961944,
                longitude: -6.1678888,
                phoneNumber: 956554516,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Manacor",
                address: "C/ Via Majorica, 66, esquina Bonany, 07500, Manacor, Islas Baleares",
                latitude: 39.5719,
                longitude: 3.1969,
                phoneNumber: 971552932,
                mail: "manacorviapalma.815@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Paralelo",
                address: "Avinguda del Para·lel, 69, 08004, Barcelona, Barcelona",
                latitude: 41.37477,
                longitude: 2.168465,
                phoneNumber: 936404616,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Granada C.C. Nevada",
                address: "Av. de las Palmeras, s/n C.C. Nevada, 18100, Armilla, Granada",
                latitude: 37.146448,
                longitude: -3.61295,
                phoneNumber: 958179586,
                mail: "GranadaNevada.834@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Terrassa Rambla",
                address: "C/ Rambleta del Pare Alegre, 4, 08224, Tarrasa, Barcelona",
                latitude: 41.555996,
                longitude: 2.007228,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Outlet",
                address: "Ctra. De Logroño, km 6,5, C.C La Torre Outlet Zaragoza, 50011 , Zaragoza, Zaragoza",
                latitude: 41.675366,
                longitude: -0.954169,
                phoneNumber: 630115292,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Goya",
                address: "Calle de Goya, 70, 28009, Madrid, Madrid",
                latitude: 40.4247,
                longitude: -3.6765,
                phoneNumber: 910646224,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ronda Universidad",
                address: "Ronda de la Universitat, 33, 08007, Barcelona, Barcelona",
                latitude: 41.387193,
                longitude: 2.167558,
                phoneNumber: 938326273,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Roses",
                address: "Avinguda de Rhode, 101, 17480, Gerona, Gerona",
                latitude: 42.264483,
                longitude: 3.1730528,
                phoneNumber: 972150467,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torremolinos Centro",
                address: "Plaza Costa del Sol, 12, 29620, Torremolinos, Málaga",
                latitude: 36.624515,
                longitude: -4.499589,
                phoneNumber: 952052695,
                mail: "torremolinoscentro.987@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Alisios",
                address: "Carretera Nueva De San Lorenzo, 35018, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.0948197,
                longitude: -15.4746817,
                phoneNumber: 928392886,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Finestrat Avda Picasso",
                address: "Carrer Rei Jaume I, 03509, Finestrat, Alicante/Alacant",
                latitude: 38.534027,
                longitude: -0.17252,
                phoneNumber: 966603066,
                mail: "finestrat.990@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Murcia La Alberca",
                address: "Avenida de la Alberca, S/N, 30150, Murcia, Murcia",
                latitude: 37.939245,
                longitude: -1.150039,
                phoneNumber: 968755202,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Carretera De Carmona",
                address: "Calle Metalurgia nº0, P.I. Calonge esq. con Carretera Carmona, 41007, Sevilla, Sevilla",
                latitude: 37.406016,
                longitude: -5.96,
                phoneNumber: 954646426,
                mail: "sevillacarreteradecarmona.998@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S San Bernardo",
                address: "Edificio Viapol, Calle Enramadilla, Número 9, Bajo, 41018, Sevilla, Sevilla",
                latitude: 37.378771,
                longitude: -5.97858,
                phoneNumber: 954967485,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Hurtado",
                address: "C/ Padre Lojendio, 1, esq. C/ Hurtado Amezaga, 48008, Bilbao, Vizcaya",
                latitude: 43.2601024,
                longitude: -2.9298078,
                phoneNumber: 946241145,
                mail: "bilbaohurtadoamezaga.1004@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Torrecárdenas",
                address: "Calle Médico Francisco Pérez Company, 04009, Almería, Almería",
                latitude: 36.861769,
                longitude: -2.433297,
                phoneNumber: 950288831,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcala Canalejas",
                address: "C/ Alcalá, 18, 28014, Madrid, Madrid",
                latitude: 40.417747,
                longitude: -3.699195,
                phoneNumber: 919552763,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Finestrelles",
                address: "Carrer de Laureà Miró, 4, 08950, Esplugues de Llobregat, Barcelona",
                latitude: 41.377196,
                longitude: 2.098185,
                phoneNumber: 699718782,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Granollers Ronda Sur",
                address: "Ronda Sur, S/N -, 08402, Granollers, Barcelona",
                latitude: 41.597073,
                longitude: 2.283579,
                phoneNumber: 936458476,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Latina",
                address: "C/ Toledo, 63, 28005, Madrid, Madrid",
                latitude: 40.411167,
                longitude: -3.707804,
                phoneNumber: 910585648,
                mail: "lalatina.1022@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Zenia",
                address: "C/ Malaquita S/N - 03189, Avda. de Eduardo Guitian, 1319, 03189, Orihuela Costa, Alicante/Alacant",
                latitude: 37.925976,
                longitude: -0.73567,
                phoneNumber: 965234662,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Garate",
                address: "Av. de José Gárate, 28823, Coslada, Madrid",
                latitude: 40.428302,
                longitude: -3.550311,
                phoneNumber: 914850061,
                mail: "1026cosladagarate@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ensanche Sur",
                address: "Av. Primero de Mayo &, Calle Pablo Picasso, 28922, Alcorcón, Madrid",
                latitude: 40.3304,
                longitude: -3.829747,
                phoneNumber: 911344058,
                mail: "at.cliente.mcd.ensanche@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Open Arena",
                address: "Calle Escritora Maria Goyri, 21, 14005, Córdoba, Córdoba",
                latitude: 37.880882,
                longitude: -4.803382,
                phoneNumber: 957762020,
                mail: "cordobaopenarena.1032@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cc Lagoh",
                address: "Centro Comercial Lagoh Sevilla, Avenida de Palmas Altas, s/n, Local RB15 Centro Comercial Lagoh, 41012, Sevilla, Sevilla",
                latitude: 37.34165,
                longitude: -5.986743,
                phoneNumber: 954951727,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pozuelo Somosaguas",
                address: "Junto a campus UCM, Carretera de Húmera, 96, LOCAL B, 28224, Pozuelo de Alarcón, Madrid",
                latitude: 40.431526,
                longitude: -3.794968,
                phoneNumber: 917991089,
                mail: "at.cliente.somosaguas.mcd@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Nueva Montaña",
                address: "Avenida Nueva Montaña, 2J, 39011, Santander , Cantabria",
                latitude: 43.440187,
                longitude: -3.8447542,
                phoneNumber: 694210076,
                mail: "santandernuevamontana.1041@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alhaurin Ronda",
                address: "Terreno Ur, 1I, 29130, Alhaurín de la Torre, Málaga",
                latitude: 36.669177,
                longitude: -4.5459882,
                phoneNumber: 952605554,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Nueva Fe",
                address: "Avinguda d'Ausiàs March, 124, 46026, Valencia, Valencia/València",
                latitude: 39.444784,
                longitude: -0.369699,
                phoneNumber: 963705376,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Gran Vía",
                address: "Calle Gran Vía, 55, 28013, Madrid, Madrid",
                latitude: 40.421735,
                longitude: -3.708315,
                phoneNumber: 917236244,
                mail: "sanbernardo.1054@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vigo Vialia",
                address: "Praza Estación, 1, Centro Comercial Vialia Plaza, 36201, Vigo, Pontevedra",
                latitude: 42.234889,
                longitude: -8.711584,
                phoneNumber: 986276482,
                mail: "1055vigovialia@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S La Victoria",
                address: "Avenida Burgos 47, 47009, Valladolid, Valladolid",
                latitude: 41.671859,
                longitude: -4.725468,
                phoneNumber: 983030050,
                mail: "1057ValladolidAvda.Burgos@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Escala",
                address: "Carrer de les Cosidores, s/n, 17130, L'ESCALA, Gerona",
                latitude: 42.11084,
                longitude: 3.125361,
                phoneNumber: 972111300,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Nigrán",
                address: "Rúa da Gándara, 1, 36350, Nigrán, Pontevedra",
                latitude: 42.1331618,
                longitude: -8.7969609,
                phoneNumber: 986406625,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Castelldefels Ànecblau",
                address: "Avinguda del Canal Olímpic, 24, 08860, Castelldefels, Barcelona",
                latitude: 41.282739,
                longitude: 1.9850987,
                phoneNumber: 936321411,
                mail: "castelldefelsanecblau.1061@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villaviciosa De Odon",
                address: "Avenida Quitapesares, 3, 28670, Villaviciosa de Odón, Madrid",
                latitude: 40.350764,
                longitude: -3.902413,
                phoneNumber: 918971555,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Xàtiva",
                address: "Camí Estrés de Sorio 1, 46800, Xátiva, Valencia/València",
                latitude: 38.9964434,
                longitude: -0.5211517,
                phoneNumber: 961658158,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pamplona Valle De Egüés",
                address: "Parcela C.1.2 - UE.1 | PSIS Salesianos Olaz - 31621 - Sarriguren - Navarra, 31621, Sarriguren, Navarra",
                latitude: 42.816845,
                longitude: -1.590105,
                phoneNumber: 948598851,
                mail: "valleegues.1071@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puertollano Argamasilla",
                address: "Carr. Argamasilla, 30, 13500 , Puertollano , Ciudad Real",
                latitude: 38.70024,
                longitude: -4.10313,
                phoneNumber: 926410001,
                mail: "puertollano.argamasilla.1074@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald’S Mogan",
                address: "Diseminado Cortadores-Puerto Rico, 22A, 35130, Mogán , Las Palmas",
                latitude: 27.7964350702654,
                longitude: -15.7035053305071,
                phoneNumber: 928264126,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Cala Millor",
                address: "Avinguda del Bon Temps, 43, 07530 , Sant Llorens des Cardassar, Islas Baleares",
                latitude: 39.5945,
                longitude: 3.378385,
                phoneNumber: 971705243,
                mail: "1079mallorcacalamillor@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Andorra I",
                address: "Avda. Meritxell, 105, AD500, Andorra La Vella, Principado de Andorra",
                latitude: 42.508435,
                longitude: 1.533413,
                phoneNumber: 376726396,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Andorra Ii",
                address: "Avinguda de Tarragona, 49, AD 50, Andorra La Vella, Principado de Andorra",
                latitude: 42.505214,
                longitude: 1.528142,
                phoneNumber: 376845491,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Andorra Iii",
                address: "Plaça dels Coprínceps, 23, AD200, Andorra La Vella, Principado de Andorra",
                latitude: 42.542662,
                longitude: 1.732728,
                phoneNumber: 376880512,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Andorra Meritxell",
                address: "Avinguda Meritxell, 32, AD500, Andorra La Vella, Principado de Andorra",
                latitude: 42.507997,
                longitude: 1.525061,
                phoneNumber: 376885885,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Valls",
                address: "Carretera del Pla, 132, 43800 , Valls, Tarragona",
                latitude: 41.2983366,
                longitude: 1.2585278,
                phoneNumber: 977597434,
                mail: "valls.1088@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "La Granja",
                address: "C. la Granja, 19D, 24007, León, León",
                latitude: 42.6014,
                longitude: -5.552532,
                phoneNumber: 987202119,
                mail: "1090LeonLaGranja@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Albal",
                address: "Carretera Real de Madrid, 23, 46470, Valencia, Valencia/València",
                latitude: 39.3898387,
                longitude: -0.4093091,
                phoneNumber: 961250063,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Orense Universidad",
                address: "AVDA OTERO PEDRAYO 59,, UNIVERSIDAD OURENSE, 32004, Ourense, Orense",
                latitude: 42.340729,
                longitude: -7.849542,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Francesc Macià",
                address: "Avinguda de Josep Tarradellas, 140, 08029, Barcelona, Barcelona",
                latitude: 41.392079,
                longitude: 2.1445386,
                phoneNumber: 932808850,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puente Genil",
                address: "Calle Montalbán, 19, 14500, Puente Genil, Córdoba",
                latitude: 37.3994712,
                longitude: -4.764358,
                phoneNumber: 957899652,
                mail: "puentegenil.1098@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Nuevo  Parquesur.",
                address: "Centro Comercial Parquesur |, Avenida de Gran Bretaña, s/n, 28916 , Leganes, Madrid",
                latitude: 40.3397383,
                longitude: -3.7337476,
                phoneNumber: 917049904,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Málaga Larios",
                address: "Avenida de la Aurora, 25, C.C Larios. Local 2-01. Planta tercera, 29002 , Málaga, Málaga",
                latitude: 36.7159021,
                longitude: -4.4327352,
                phoneNumber: 952328508,
                mail: "malagalarios.1100@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sanxenxo Vinquiño",
                address: "Lugar Vinquiño, 47, 36969 , Sanxenxo, Pontevedra",
                latitude: 42.415802,
                longitude: -8.812122,
                phoneNumber: 986240884,
                mail: "sanxenxovinquino.1102@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Francisco Silvela",
                address: "calle Francisco Silvela 42, 28028, Madrid, Madrid",
                latitude: 40.4334415,
                longitude: -3.6729271,
                phoneNumber: 913567069,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Zaragoza Paseo Sagasta",
                address: "P.º de Sagasta, 4, 50008, Zaragoza, Zaragoza",
                latitude: 41.646461,
                longitude: -0.885762,
                phoneNumber: 976449685,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Algeciras Cc Puerta Europa",
                address: "A7, Salida 106, Local A1 32/33, Centro comercial Puerta Europa, 11203 , Algeciras , Cádiz",
                latitude: 36.1345145,
                longitude: -5.4635287,
                phoneNumber: 956661837,
                mail: "algeciraspuertaeuropa.1119@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Diagonal Pedralbes",
                address: "Avinguda Diagonal, 593, 08014, BARCELONA , Barcelona",
                latitude: 41.388781,
                longitude: 2.130942,
                phoneNumber: 934196313,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Jerez El Portal",
                address: "Avenida Alcalde Cantos Ropero, s/n, 11408, Jerez de la Frontera, Cádiz",
                latitude: 36.668129,
                longitude: -6.131982,
                phoneNumber: 956614625,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Almendralejo",
                address: "Av. Presidente Juan Carlos Rodríguez Ibarra, 153, 06200, Almendralejo, Badajoz",
                latitude: 38.682658,
                longitude: -6.398649,
                phoneNumber: 924664106,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Tarragona Rambla",
                address: "Rambla Nova, 92, 43001, Tarragona, Tarragona",
                latitude: 41.116689,
                longitude: 1.249824,
                phoneNumber: 977252880,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aeropuerto Palma",
                address: "Aeropuerto de Palma de Mallorca Local 4, Planta +2 Ampliacion C, 07610, Palma, Islas Baleares",
                latitude: 39.5606204,
                longitude: 2.6766924,
                phoneNumber: 971260030,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Garbera",
                address: "Centro Comercial Garbera, Travesía de Garbera 1, 20015, San Sebastián, Guipúzcoa",
                latitude: 43.308946,
                longitude: -1.945328,
                phoneNumber: 943400770,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Coín",
                address: "Calle Hebe, 5, 29100, Coín, Málaga",
                latitude: 36.6751039,
                longitude: -4.73105402,
                phoneNumber: 952329252,
                mail: "1135coin@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "San Juan De Dios",
                address: "Plaza de San Juan de Dios, 14, 11005, Cádiz, Cádiz",
                latitude: 36.5297681216239,
                longitude: -6.2922218527559,
                phoneNumber: 956271955,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carcaixent",
                address: "Avinguda Bressol de la Taronja, 3, 46740, Valencia, Valencia/València",
                latitude: 39.129413,
                longitude: -0.445271,
                phoneNumber: 963940273,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Villaverde",
                address: "C. de Eduardo Barreiros, 120, 28041, Madrid, Madrid",
                latitude: 40.354239,
                longitude: -3.705166,
                phoneNumber: 913408572,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Acacias",
                address: "Paseo de las Acacias, 22A, 28005, Madrid, Madrid",
                latitude: 40.403908,
                longitude: -3.707116,
                phoneNumber: 913920498,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Bravo Murillo",
                address: "Calle de Bravo Murillo, 274, 28020, Madrid, Madrid",
                latitude: 40.4608392992481,
                longitude: -3.69813310449172,
                phoneNumber: 915796090,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Miranda De Ebro",
                address: "Calle Ronda del Ferrocarril, 09200, Miranda de Ebro, Burgos",
                latitude: 42.685821,
                longitude: -2.931246,
                phoneNumber: 648170929,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S  Splau",
                address: "Av. del Baix Llobregat, s/n, CC Splau - Local 1.59-60, 08940 , Cornellà de Llobregat, Barcelona",
                latitude: 41.347379,
                longitude: 2.078593,
                phoneNumber: 934750658,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Novelda",
                address: "Av. Jesus Navarro Jover, 03660, Novelda, Alicante/Alacant",
                latitude: 38.390648,
                longitude: -0.749823,
                phoneNumber: 965960148,
                mail: "NURIA.MARTINEZ.SANTACREU@ES.MCD.COM"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aeropuerto Prat T1",
                address: "Aeropuerto de Barcelona-El Prat, La Plaza Llegadas, T1, 08820, El Prat de Llobregat, Barcelona",
                latitude: 41.288347,
                longitude: 2.073546,
                phoneNumber: 610655042,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aeropuerto Prat T2",
                address: "Aeropuerto Josep Tarradellas Barcelona, El Prat. Terminal T2 Local 00101301111, 08820, El Prat de Llobregat, Barcelona",
                latitude: 41.303451,
                longitude: 2.075477,
                phoneNumber: 671092177,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lleida San Juan",
                address: "Plaça de Sant Joan, 10, 25007, Lleida, Lerida",
                latitude: 41.616086,
                longitude: 0.627161,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Barceloneta Pau Vila",
                address: "Plaça de Pau Vila, 13, 08003 , Barcelona, Barcelona",
                latitude: 41.382602,
                longitude: 2.185342,
                phoneNumber: 932684041,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Vilaseca",
                address: "Vía Máxima esq. Raval de la Mar, 43480, Vilaseca, Tarragona",
                latitude: 41.1068588,
                longitude: 1.1530949,
                phoneNumber: 977393147,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gijón Los Fresnos",
                address: "C. Río de Oro, 3, 33209, Gijón, Asturias",
                latitude: 43.532412,
                longitude: -5.662105,
                phoneNumber: 985163304,
                mail: "1169GijonLosFresnos@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Tacoronte",
                address: "Las Turroneras, 38350, Tacoronte, Santa Cruz de Tenerife",
                latitude: 28.481892,
                longitude: -16.396249,
                phoneNumber: 922560158,
                mail: "1175tacoronte@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Cunit",
                address: "Avinguda de Barcelona, 162, 43881, Cunit, Tarragona",
                latitude: 41.1988889,
                longitude: 1.640666,
                phoneNumber: 977675852,
                mail: "1181cunit@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Sevilla Hospital",
                address: "Calle Torcuato de Tena 18B, esquina con Calle Castillo Alcalá de Guadaira, 41013, Sevilla, Sevilla",
                latitude: 37.3618186,
                longitude: -5.9780089,
                phoneNumber: 955749885,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santiago Costa Vella",
                address: "rua de castela e leon, 8, 15707, Santiago de Compostela, La Coruña",
                latitude: 42.901783,
                longitude: -8.506377,
                phoneNumber: 609437640,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Beníjofar",
                address: "Calle Ramón y Cajal 12, 03178, Benijofar, Alicante/Alacant",
                latitude: 38.081471,
                longitude: -0.735606,
                phoneNumber: 965742235,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Tajo",
                address: "Carrer del Tajo, 36, 08032, Barcelona, Barcelona",
                latitude: 41.429706,
                longitude: 2.161185,
                phoneNumber: 936609093,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Manoteras",
                address: "Calle Dulce Chacón,15, Manoteras, 28050, Madrid, Madrid",
                latitude: 40.4850736297679,
                longitude: -3.66643863907433,
                phoneNumber: 918552448,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Valdepeñas",
                address: "Av. Virgen de los Dolores, 2, 13300, Valdepeñas, Ciudad Real",
                latitude: 38.777102,
                longitude: -3.389075,
                phoneNumber: 926480537,
                mail: "nuevovaldepenas@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alaquàs",
                address: "Carrer de Conca, 67, 46970, Alaquàs, Valencia/València",
                latitude: 39.456401,
                longitude: -0.469176,
                phoneNumber: 961519566,
                mail: "1196alacuas@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Coria Del Río",
                address: "Av. Blanca Paloma, esquina Glorieta La Carreta, 41100 ,  CORIA DEL RÍO , Sevilla",
                latitude: 37.2827763,
                longitude: -6.0618384,
                phoneNumber: 954869696,
                mail: "1198coriadelrio@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Parc D'Aro",
                address: "Avinguda de s'Agaró, 108, 17250, Playa de Aro, Gerona",
                latitude: 41.8065826652259,
                longitude: 3.05652212465005,
                phoneNumber: 972394447,
                mail: "1199playadearosagaro@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carballo A Revolta",
                address: "Av. Revolta, 13, 27, 15102 , CARBALLO, La Coruña",
                latitude: 43.204118,
                longitude: -8.6994358,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "El Campello",
                address: "Carrer de Sant Ramon, 10, 03560, Campello, Alicante/Alacant",
                latitude: 38.4252803,
                longitude: -0.4051833,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Vicalvaro",
                address: "C. de Herce, 41, 28032, Madrid, Madrid",
                latitude: 40.4037959741518,
                longitude: -3.61614413993247,
                phoneNumber: 915010821,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Montequinto Entrenúcleos",
                address: "Avd. De las Universidades s/n,, Montequinto-Entre Núcleos, 41705, Dos Hermanas, Sevilla",
                latitude: 37.315315,
                longitude: -5.940588,
                phoneNumber: 674395575,
                mail: "1209MontequintoEntrenucleos@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Gáldar",
                address: "GC-292, 16, junto a la rotonda de los tres  ojos, 35488, Gáldar, Las Palmas",
                latitude: 28.140575,
                longitude: -15.657062,
                phoneNumber: 679393917,
                mail: " 1210galdar@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mazarron",
                address: "C/ Felix Garcia Muñoz, Esquina Dr Meca, 30860, Mazarron, Murcia",
                latitude: 37.57287,
                longitude: -1.268678,
                phoneNumber: 968634565,
                mail: "1211MAZARRON@ES.MCD.COM"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mc Donald´S San Vicente Del Raspeig",
                address: "Calle Perú, San Vicente del Raspeig, 03690, San Vicente del Raspeig, Alicante/Alacant",
                latitude: 38.3914328,
                longitude: -0.5135292,
                phoneNumber: 965055533,
                mail: "1216SanVicent@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Alcantarilla Avenida Principe",
                address: "Av. del Príncipe, 83, Paque Comercial Alcantarilla, 30820, ALCANTARILLA, Murcia",
                latitude: 37.976326,
                longitude: -1.217628,
                phoneNumber: 968855484,
                mail: "968855484"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Andoain Illarramendi",
                address: "TELLERIA ETORBIDEA 3, 20140 , ANDOAIN , Guipúzcoa",
                latitude: 43.225582,
                longitude: -2.019343,
                phoneNumber: 636875511,
                mail: "1220Andoain@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mahón Poima",
                address: "Av. d'Europa, 2, 07114, Mahón, Islas Baleares",
                latitude: 39.8864199,
                longitude: 4.2328603,
                phoneNumber: nil,
                mail: "1222mahon@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "El Esparragal",
                address: "Diseminado Carretera Alicante, 184, 30163, El Esparragal, Murcia",
                latitude: 38.0472602087,
                longitude: -1.08763098754,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Aluche",
                address: "Av. del Padre Piquer, 9, 28024, Madrid, Madrid",
                latitude: 40.3944633147324,
                longitude: -3.76776728788567,
                phoneNumber: 663963264,
                mail: "at.cliente.mcd.aluche@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S",
                address: "Carrer del Baix Camp, 2, 08211 , Castellar del Vallés, Barcelona",
                latitude: 41.594528,
                longitude: 2.087389,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Epizen",
                address: "CFWJ+QM, AD600, Sant Julià de Lòria, Principado de Andorra",
                latitude: 42.44925,
                longitude: 1.48189,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Nexum",
                address: "C. del Almendro, 28942, Fuenlabrada, Madrid",
                latitude: 40.2982635326294,
                longitude: -3.82063145397143,
                phoneNumber: 645453029,
                mail: "at.cliente.mcd.nexum@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Severo Ochoa",
                address: "Av. Dr. Severo Ochoa, 48, 03503, Beniform, Alicante/Alacant",
                latitude: 38.543485794,
                longitude: -0.102215188,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Toledo Hospital",
                address: "C. Valdemolinos, 22A, 45007, Toledo, Toledo",
                latitude: 39.8648234286595,
                longitude: -3.97050146426297,
                phoneNumber: 925056190,
                mail: "1242toledohospital@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santiago As Cancelas",
                address: "Avenida Do Camiño Francés, 3, 15703, Santiago de Compostela, La Coruña",
                latitude: 42.889541,
                longitude: -8.527651,
                phoneNumber: 630272746,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mc Donald'S Lorenzo Carbonell",
                address: "Avinguda de Alcalde Lorenzo Carbonell, 75, 03008, Alicante, Alicante/Alacant",
                latitude: 38.338705,
                longitude: -0.516516,
                phoneNumber: 965778810,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Granada Gran Vía",
                address: "C. Gran Vía de Colón 8, 18010 , Granada, Granada",
                latitude: 37.1765604834328,
                longitude: -3.59778094037044,
                phoneNumber: 958687824,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Estepona Paraiso",
                address: "N-340, 4, 03016, Estepona, Málaga",
                latitude: 36.465267,
                longitude: -5.0327,
                phoneNumber: 952781889,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mijas-Chaparral",
                address: "Av. Carmen Werner, 22, 29649, Mijas, Málaga",
                latitude: 36.5081118,
                longitude: -4.6590244,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Amposta",
                address: "Avinguda de la Ràpita, 216, 43870, Amposta, Tarragona",
                latitude: 40.6992633959308,
                longitude: 0.579421520233154,
                phoneNumber: 977700576,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ibi",
                address: "Av. de la Industria, 39, 03440, Ibi, Alicante/Alacant",
                latitude: 38.61619099611,
                longitude: -0.5870639454,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pobla Valbona",
                address: "Av de la Mercaderia, 31, 46185, Pobla de Valbona, Valencia/València",
                latitude: 39.6032388,
                longitude: -0.5644122,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Pamplona Landaben",
                address: "Polígono Industrial Landaben, Calle A, 31012, Pamplona, Navarra",
                latitude: 42.8084743,
                longitude: -1.6825201,
                phoneNumber: 660899351,
                mail: "1258PamplonaLandaben@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Pozas",
                address: "Poza Lizentziatuaren Kalea, 59, 48011, Bilbao, Vizcaya",
                latitude: 43.26252,
                longitude: -2.94306,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Oasiz",
                address: "Centro Comercial Oasiz Local E-01, Avenida Premios Nobel, 13, 28850, Torrejón de Ardoz, Madrid",
                latitude: 40.470099,
                longitude: -3.444224,
                phoneNumber: 917087539,
                mail: "1261torrejonoasiz@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lanzarote Open Mall",
                address: "C/ León y Castillo, 156, 35500, Arrecife, Las Palmas",
                latitude: 28.96807732,
                longitude: -13.547186201,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ribeira",
                address: "Lugar de Xaras Poligono, 15969, La Coruña, La Coruña",
                latitude: 42.570345,
                longitude: -8.9988785,
                phoneNumber: 981875045,
                mail: "1266ribeira@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Blasco Ibáñez",
                address: "Avd. Blasco Ibañez 63-65,, Blasco Ibañez, 46021, Valencia, Valencia/València",
                latitude: 39.475077,
                longitude: -0.3497385,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Paseo Extremadura",
                address: "Paseo Extremadura 131, 28011, Madrid, Madrid",
                latitude: 40.410353,
                longitude: -3.737108,
                phoneNumber: 607582938,
                mail: "at.cliente.mcd.pextremadura@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Cocentaina Algars",
                address: "Partida Algars, 34, 03829, Alicante, Alicante/Alacant",
                latitude: 38.719473807715,
                longitude: -0.456232169245413,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Fuengirola-Norte",
                address: "Urb. Finca Don Pedro, 24, 29640 , Fuengirola, Málaga",
                latitude: 36.5574522540963,
                longitude: -4.62740089600773,
                phoneNumber: 952685826,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Banyoles",
                address: "Av. De la Farga, 102, Banyoles, 17820, Banyoles, Gerona",
                latitude: 42.1159507185,
                longitude: 2.7765890673,
                phoneNumber: 972191078,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Las Torres De Cotillas",
                address: "Av. Cronista Ricardo Montes, Esquina Avenida Murcia, 30565, MURCIA, Murcia",
                latitude: 38.015756,
                longitude: -1.232941,
                phoneNumber: 968608163,
                mail: "1281torresdecotillas@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Águilas",
                address: "C. C, 4, 30880 Águilas, Murcia, 30880, Águilas, Murcia",
                latitude: 37.410834,
                longitude: -1.566241,
                phoneNumber: 968130590,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonalds Las Gabias",
                address: "C/ CHIRIVI,2,, 18194, Las Gabias, Granada",
                latitude: 37.138592,
                longitude: -3.655275,
                phoneNumber: 958586469,
                mail: "granadalasgabias.1283@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mieres Polígono",
                address: "C. Vega de Arriba, 24, 33600, Mieres, Asturias",
                latitude: 43.2374382783523,
                longitude: -5.77854837226122,
                phoneNumber: 985914030,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Burriana",
                address: "Av. Londres, 2, 12530, BURRIANA, Castellón/Castelló",
                latitude: 39.884269,
                longitude: -0.076667,
                phoneNumber: 964137990,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puerto Del Rosario",
                address: "C. Antigua, 12, 35600 , PUERTO DEL ROSARIO, Las Palmas",
                latitude: 28.4980229755099,
                longitude: -13.8646602148817,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Benacazón",
                address: "Av. Sanlúcar la Mayor, 39, 41805, Benacazón, Sevilla",
                latitude: 37.358972,
                longitude: -6.200222,
                phoneNumber: 955149816,
                mail: "1296benacazon@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Lliçà D'Amunt",
                address: "Barri Can Moncau, 11P, 08186, Lliçà d’Amunt, Barcelona",
                latitude: 41.60227099,
                longitude: 2.260618,
                phoneNumber: 938752726,
                mail: "victor.castejon@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Trinidad La Laguna",
                address: "Av. Trinidad, 29, 38204, SAN CRISTOBAL DE LA LAGUNA , Santa Cruz de Tenerife",
                latitude: 28.4855661,
                longitude: -16.3164384,
                phoneNumber: 922250615,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Puzol Tarongers",
                address: "Carrer Tarongers, 73, 46530, Puzol, Valencia/València",
                latitude: 39.6257448787,
                longitude: -0.30340911739,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Coruña Cantón",
                address: "R. Cantón Pequeno, 6, 15003, La Coruña, La Coruña",
                latitude: 43.3675979,
                longitude: -8.4039916,
                phoneNumber: 881049762,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Onda",
                address: "Avinguda Mediterrani, 29B, 12200, Onda, Castellón/Castelló",
                latitude: 39.9645078,
                longitude: -0.2476864,
                phoneNumber: 964765398,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S San José Rinconada",
                address: "Ctra. Sevilla-Brenes, KM 3, 41300, San José de la Rinconada, Sevilla",
                latitude: 37.4820582663037,
                longitude: -5.95146093955075,
                phoneNumber: 684799036,
                mail: "1304sanjoserinconada@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Pilar De La Horadada",
                address: "C. Cruz del Sur, 03190, Pilar de la Horadada, Alicante/Alacant",
                latitude: 37.859327272,
                longitude: -0.7818541385,
                phoneNumber: 965614220,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Jaén Centro",
                address: "Paseo de la Estación, 6, 23001, Jaén, Jaén",
                latitude: 37.7679584442206,
                longitude: -3.78701095069081,
                phoneNumber: 953736654,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Barbate",
                address: "Calle Nuevo Pepita Aurora 3, 11160, BARBATE, Cádiz",
                latitude: 36.195847,
                longitude: -5.91944,
                phoneNumber: 856043907,
                mail: "1309Barbate@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Oliva",
                address: "Carrer de l'Alfadalí, 5, 46780, Oliva, Valencia/València",
                latitude: 38.91193,
                longitude: -0.11196,
                phoneNumber: 962134247,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Talavera Avda. Portugal",
                address: "Av. Francisco Aguirre, 439, 45600, Talavera de la Reina, Toledo",
                latitude: 39.9584920208367,
                longitude: -4.84725618650787,
                phoneNumber: 925293384,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Beata",
                address: "Pl. de la Beata María Ana de Jesús, 14, 28045, Madrid, Madrid",
                latitude: 40.39467,
                longitude: -3.6953098,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Barajas Tierra Ii",
                address: "Ctra. Nacional A-2, Km.12, Terminal T-4 Aeropuerto Adolfo Suárez Madrid-Barajas Plan Barajas Local T1, 10, Zona Aire, 28042, Madrid, Madrid",
                latitude: 40.4913318970512,
                longitude: -3.59182302143541,
                phoneNumber: 913338018,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Palamós Sant Joan",
                address: "Carrer d' Àngel Guimerà, 89,  17230, Palamós, Gerona",
                latitude: 41.8645885419,
                longitude: 3.136105944321,
                phoneNumber: 972620118,
                mail: "1316palamossantjoan@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Aligobeo",
                address: "P.I, Bremen Kalea, 12, 01010, Vitoria, Vizcaya",
                latitude: 42.8537152561231,
                longitude: -2.70970810299177,
                phoneNumber: 945108326,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ejido Santa María",
                address: "Avd. El Treinta esq. C/ Montenegro,  04710, Almería, Almería",
                latitude: 36.777962,
                longitude: -2.782955,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Yecla",
                address: "Carr. C-3314, Kilómetro 0'5, 30510, Yecla, Murcia",
                latitude: 38.61522,
                longitude: -1.09654,
                phoneNumber: 968417002,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Ciudad Real Quijote Arena",
                address: "C. Pedro Muñoz, 4, 13005, Ciudad Real, Ciudad Real",
                latitude: 38.976793056151,
                longitude: -3.93626677532982,
                phoneNumber: nil,
                mail: "manchega25266@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S Iregua",
                address: "Calle Caballeros Templarios, 6, 26142, Villamediana de Iregua, La Rioja",
                latitude: 42.4477703073068,
                longitude: -2.41899614487205,
                phoneNumber: 941102588,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Benicarló",
                address: "N-340A, Km.1042, Centre Comercial Family Parc, 12580 , Benicarló, Castellón/Castelló",
                latitude: 40.411497,
                longitude: 0.39845,
                phoneNumber: 646717720,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S López De Hoyos",
                address: "C. de López de Hoyos, 155, 28002, Madrid, Madrid",
                latitude: 40.4485596,
                longitude: -3.6675076,
                phoneNumber: 915488813,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Sant Pau",
                address: "C/ de St. Antoni Maria Claret, 163, 08025, Barcelona, Barcelona",
                latitude: 41.4111030161118,
                longitude: 2.17401954955264,
                phoneNumber: 650910343,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Barcelona Mitre",
                address: "Ronda del General Mitre, 169, 08022, Barcelona, Barcelona",
                latitude: 41.4042133262528,
                longitude: 2.13986900629693,
                phoneNumber: 932662792,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Gijón Roces",
                address: "Avenida de Oviedo, 1A, Periurbano - Rural, 33199, Gijón, Asturias",
                latitude: 43.5106,
                longitude: -5.6902,
                phoneNumber: 687368857,
                mail: "1348gijonroces@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Rambla De Belén",
                address: "C/ José Manuel Gómez Angulo, 6, Zona norte de la Rambla, 04008 , Almería, Almería",
                latitude: 36.854513,
                longitude: -2.47023,
                phoneNumber: nil,
                mail: "cumplerambla@gmail.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Los Alcázares",
                address: "Av. Cartagena, 20, 30710, Murcia, Murcia",
                latitude: 37.7617217955186,
                longitude: -0.844822127820906,
                phoneNumber: 968439016,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Benalmádena Estación",
                address: "Avenida de la Estación, 3, 29631, BENALMÁDENA, Málaga",
                latitude: 36.5989,
                longitude: -4.5364,
                phoneNumber: 952310402,
                mail: "1357benalmadenaestacion@es.mcd.com"
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Ronda Capuchinos",
                address: "Rda. de Capuchinos, 5, 41009, SEVILLA, Sevilla",
                latitude: 37.399918,
                longitude: -5.983712,
                phoneNumber: 954760818,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Carretera Su Eminencia",
                address: "Ctra. Su Eminencia, 14, 41013 , Sevilla, Sevilla",
                latitude: 37.3649477,
                longitude: -5.9567044,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald'S Salera",
                address: "Crta. N-340 Km. 64,05, Avenida Enrique Gimeno, 82 , Centro Comercial Salera, 12006, Castellón de la Plana, Castellón/Castelló",
                latitude: 39.9791,
                longitude: -0.063021,
                phoneNumber: 964245551,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Magallanes",
                address: "C/ de Magallanes, 1, 28015, Madrid , Madrid",
                latitude: 40.43232442,
                longitude: -3.7057132588,
                phoneNumber: 915489131,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Colombia",
                address: "C. del Príncipe de Vergara, 264, 28016, Madrid, Madrid",
                latitude: 40.457382,
                longitude: -3.6766823,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Algemesí Ronda",
                address: "Ronda del Calvari, 50, 46680, Algemesí, Valencia/València",
                latitude: 39.1980842861453,
                longitude: -0.435613773846286,
                phoneNumber: 962369080,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santa Coloma",
                address: "Av. de Francesc Macià, 1, 08921, Santa Coloma, Barcelona",
                latitude: 41.4510624712978,
                longitude: 2.20644822482476,
                phoneNumber: 932540302,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Vicar",
                address: "Blvr. Cdad. de Vícar, 718, 04738, Vícar , Almería",
                latitude: 36.805163643996,
                longitude: -2.62313599394698,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Madrid Sur 2",
                address: "AV/PABLO NERUDA 91 - 97 , 28018 , MADRID, Madrid",
                latitude: 40.3811135077344,
                longitude: -3.6623511161332,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Almazora",
                address: "Avinguda de Castelló, 180, 12550, Almazora, Castellón/Castelló",
                latitude: 39.9526537,
                longitude: -0.0583669,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Hellín Libertad",
                address: "Av. Libertad, 177,  02400 , Hellín, Albacete",
                latitude: 38.5289374984961,
                longitude: -1.70165937830489,
                phoneNumber: 661388536,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Mcdonald´S El Muelle",
                address: "Centro Comercial y de Ocio | El Muelle de Santa Catalina | Local - 212 -, 35008, 35008, Las Palmas de Gran Canaria, Las Palmas",
                latitude: 28.142028,
                longitude: -15.427679,
                phoneNumber: 928759672,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Santutxu",
                address: "Zabalbide Kalea, 51, 48006, Bilbao, Vizcaya",
                latitude: 43.2554477850018,
                longitude: -2.91350100253912,
                phoneNumber: nil,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Metropolitano Estadio",
                address: "Av. de Luis Aragonés, 4, 28022, Madrid, Madrid",
                latitude: 40.4355847455453,
                longitude: -3.59820084525335,
                phoneNumber: 647294256,
                mail: nil
            ),
            RestaurantVariant(
                restaurantId: try mcdonalds.requireID(),
                name: "Palma Aeropuerto Tierra",
                address: "Diseminado 8709- Sa Casa Blanca, 42, Llevant, 07611, Mallorca, Islas Baleares",
                latitude: 39.549346412,
                longitude: 2.7360927339,
                phoneNumber: nil,
                mail: nil
            )
        ]}
        catch {return []}
    }
}
