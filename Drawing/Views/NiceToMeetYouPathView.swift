//
//  NiceToMeetYouPathView.swift
//  Drawing
//
//  Created by Jonas Agnezi on 07/10/22.
//

import SwiftUI

struct NiceToMeetYouPathView: View {
	var body: some View {
		Path { path in
			path.move(to: CGPoint(x:200, y: 100))
			path.addLine(to: CGPoint(x:100, y: 300))
			path.addLine(to: CGPoint(x: 300, y: 300))
			path.addLine(to: CGPoint(x: 200, y: 100))
			//			path.closeSubpath()
		}
		//		.fill(.blue)
		//		.stroke(.blue, lineWidth: 10)
		.stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
		
	}
}

struct NiceToMeetYouPathView_Previews: PreviewProvider {
    static var previews: some View {
        NiceToMeetYouPathView()
    }
}
