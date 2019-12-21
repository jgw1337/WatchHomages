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
    secondMechanicalMovement: Double,
    secondQuartzMovement: Double,
    day: Int,
    millisecondsSince1970: Double,
    isWatch: Bool
) -> AnyView {
    switch face {
    case .han:
        return AnyView(
            HanFaceView(
                month: month,
                weekday: weekday,
                hour: hour,
                minute: minute,
                secondMechanicalMovement: secondMechanicalMovement,
                secondQuartzMovement: secondQuartzMovement,
                millisecondsSince1970: millisecondsSince1970,
                isWatch: isWatch
            )
        )
    case .luke:
        return AnyView(
            LukeFaceView(
                month: month,
                weekday: weekday,
                hour: hour,
                minute: minute,
                secondMechanicalMovement: secondMechanicalMovement,
                secondQuartzMovement: secondQuartzMovement,
                millisecondsSince1970: millisecondsSince1970,
                isWatch: isWatch
            )
        )
    case .boba_fett:
        return AnyView(
            BobaFettFaceView(
                month: month,
                weekday: weekday,
                hour: hour,
                minute: minute,
                secondMechanicalMovement: secondMechanicalMovement,
                secondQuartzMovement: secondQuartzMovement,
                millisecondsSince1970: millisecondsSince1970,
                isWatch: isWatch
            )
        )
    }
}
