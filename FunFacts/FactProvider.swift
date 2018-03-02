//
//  FactProvider.swift
//  FunFacts
//
//  Created by Tom Lau on 3/1/18.
//  Copyright © 2018 tlau. All rights reserved.
//
import GameKit

struct FactProvider {
    let facts = ["Random Fact 1",
                 "Random Fact 2",
                 "Random Fact 3",
                 "Random Fact 4",
                 "Random Fact 5",
                 "Random Fact 6",
                 "Random Fact 7",
                 "Random Fact 8",
                 "Random Fact 9",
                 "Random Fact 10"
    ]
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound:
            facts.count)
        return facts[randomNumber]
    }
}
