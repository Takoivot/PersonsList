//
//  DataManager.swift
//  PersonsList
//
//  Created by Артур Сахбиев on 05.05.2022.
//


class Data {
    
    static let shared = Data()
    
    var names = ["Bob",
                 "Mary",
                 "Luis",
                 "Frank",
                 "Ramirez",
                 "Paul",
                 "Tom",
                 "Jack",
                 "Tim",
                 "Stanly"
    ]
    var surnames = ["Laves",
                    "Faykerton",
                    "Simons",
                    "Lachevski",
                    "Bilwins",
                    "Fareev",
                    "Storchins",
                    "Rook",
                    "Sliderson",
                    "Grachevksy"
    ]
    var phoneNumbers = ["111-111",
                        "222-222",
                        "333-333",
                        "444-444",
                        "555-555",
                        "666-666",
                        "777-777",
                        "888-888",
                        "999-999",
                        "123-456"
    ]
    var emails = ["qqq@mail.ru",
                  "www@mail.ru",
                  "fff@mail.ru",
                  "rrr@mail.ru",
                  "ttt@mail.ru",
                  "yyy@mail.ru",
                  "uuu@mail.ru",
                  "iii@mail.ru",
                  "hhh@mail.ru",
                  "sss@mail.ru"
    ]
    
    private init() {}
}
