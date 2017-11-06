//
//  ActiveTask.swift
//  ResearchKitExploration
//
//  Created by Ayyanchira, Akshay Murari on 11/6/17.
//  Copyright © 2017 Akshay Ayyanchira. All rights reserved.
//

import Foundation
import ResearchKit

public var ActiveTask: ORKOrderedTask {
    return ORKOrderedTask.twoFingerTappingIntervalTask(withIdentifier: "TapTask", intendedUseDescription: "Check tapping speed", duration: 6, handOptions: .both, options: ORKPredefinedTaskOption())
}
