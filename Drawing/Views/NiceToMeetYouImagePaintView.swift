//
//  NiceToMeetYouImagePaintView.swift
//  Drawing
//
//  Created by Jonas Agnezi on 07/10/22.
//

import SwiftUI

struct NiceToMeetYouImagePaintView: View {
	var body: some View {
		VStack {
			Text("Hello, world!")
				.frame(width: 300, height: 300)
				.border(
					ImagePaint(image: Image("Example"), sourceRect: CGRect(x:0, y: 0.4, width: 1, height: 0.2), scale: 0.1),
					width: 50
				)
			
			Capsule()
				.strokeBorder(
					ImagePaint(image: Image("Example"), sourceRect: CGRect(x:0, y: 0.4, width: 1, height: 0.5), scale: 0.3),
					lineWidth: 20
				)
				.frame(width: 300, height: 200)
		}
	}
}

struct NiceToMeetYouImagePaintView_Previews: PreviewProvider {
    static var previews: some View {
        NiceToMeetYouImagePaintView()
    }
}
