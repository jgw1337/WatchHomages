//
//  GetFaceView.swift
//  Watch Homages
//
//  Created by Dilek Sanver-Wang on 10/25/19.
//  Copyright © 2019 jgw. All rights reserved.
//

import SwiftUI

func GetFaceView(
    face: WatchFace,
    month: Double,
    weekday: Double,
    hour: Double,
    minute: Double,
    second: Double,
    day: Int,
    isWatch: Bool
) -> AnyView {
    switch face {
    case .han:
        return AnyView(
            HanFaceView(
                second: second,
                isWatch: isWatch
            )
        )
    case .luke:
        return AnyView(
            LukeFaceView(
                weekday: weekday,
                hour: hour,
                second: second,
                isWatch: isWatch
            )
        )
    case .boba_fett:
        return AnyView(
            BobaFettFaceView(
                second: second,
                isWatch: isWatch
            )
        )
    }
}
