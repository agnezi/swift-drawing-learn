//
//  ContentView.swift
//  Drawing
//
//  Created by agnezi.io on 05/10/22.
//

import SwiftUI


struct NavigationLinkCustomStyle: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.body)
			.padding()
			.background(.tertiary)
			.cornerRadius(10)
	}
}

extension Text {
	func navigationLinkCustomStyle() -> some View {
		modifier(NavigationLinkCustomStyle())
	}
}



struct ContentView: View {
	
	let columns = [
		GridItem(),
	]
	
	var body: some View {
		NavigationView {
			LazyVGrid(columns: columns, spacing: 15) {
				
				NavigationLink {
					ThatOneIsReallyGood()
				} label: {
					Text("ThatOneIsReallyGood")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouAnimatablePair()
				} label: {
					Text("AnimatablePair")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouAnimatableData()
				} label: {
					Text("AnimatableData")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouSpecialEffectsView()
				} label: {
					Text("SpecialEffectsView")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouHighPerformanceMetalView()
				} label: {
					Text("HighPerformanceMetalView")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouImagePaintView()
				} label: {
					Text("ImagePaintView")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouCGAffineTransformView()
				} label: {
					Text("CGAffineTransformView")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouShapeView()
				} label: {
					Text("ShapeView")
						.navigationLinkCustomStyle()
				}
				
				NavigationLink {
					NiceToMeetYouPathView()
				} label: {
					Text("PathView")
						.navigationLinkCustomStyle()
				}
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
