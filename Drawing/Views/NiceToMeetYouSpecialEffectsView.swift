//
//  NiceToMeetYouSpecialEffectsView.swift
//  Drawing
//
//  Created by agnezi.io on 07/10/22.
//

import SwiftUI

struct NiceToMeetYouSpecialEffectsView: View {
	@State private var amount = 0.0
	
	
	var body: some View {
//		ZStack {
//			Image("Example")
//
//			Rectangle()
//				.fill(.red)
//				.blendMode(.multiply)
//		}
		
//		Image("Example")
//			.colorMultiply(.red)
		
		VStack {
//			ZStack {
//				Circle()
////					.fill(.red)
//					.fill(Color(red: 1, green: 0, blue: 0))
//					.frame(width: 200 * amount)
//					.offset(x: -50, y: -80)
//					.blendMode(.screen)
//
//				Circle()
////					.fill(.green)
//					.fill(Color(red: 0, green: 1, blue: 0))
//					.frame(width: 200 * amount)
//					.offset(x: 50, y: -80)
//					.blendMode(.screen)
//
//				Circle()
////					.fill(.blue)
//					.fill(Color(red: 0, green: 0, blue: 1))
//					.frame(width: 200 * amount)
//					.blendMode(.screen)
//			}
//			.frame(width: 300, height: 300)
			
			Image("Example")
				.resizable()
				.scaledToFit()
				.frame(width: 200, height: 200)
				.saturation(amount)
				.blur(radius: (1 - amount) * 20)
			
			Slider(value: $amount)
				.padding()
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(.black)
		.ignoresSafeArea()
	}
}


struct NiceToMeetYouSpecialEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        NiceToMeetYouSpecialEffectsView()
    }
}
