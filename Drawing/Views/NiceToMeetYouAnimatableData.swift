//
//  NiceToMeetYouAnimatableData.swift
//  Drawing
//
//  Created by agnezi.io on 07/10/22.
//

import SwiftUI

struct Trapezoid: Shape {
	var insetAmount: Double
	
	var animatableData: Double {
		get {
			insetAmount
		}
		set { insetAmount = newValue}
	}
	
	func path(in rect: CGRect) -> Path {
		var path = Path()
		
		path.move(to: CGPoint(x: 0, y: rect.maxY))
		path.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
		path.addLine(to:CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
		path.addLine(to: CGPoint(x: 0, y: rect.maxY))
		
		return path
	}
}


struct NiceToMeetYouAnimatableData: View {
	
	@State private var insetAmount = 50.0
	
    var body: some View {
        Trapezoid(insetAmount: insetAmount)
				.frame(width: 200, height: 100)
				.onTapGesture {
					withAnimation {
						insetAmount = Double.random(in: 10...90)
					}
				}
    }
}

struct NiceToMeetYouAnimatableData_Previews: PreviewProvider {
    static var previews: some View {
        NiceToMeetYouAnimatableData()
    }
}
