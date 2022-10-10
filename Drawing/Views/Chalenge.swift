//
//  Chalenge.swift
//  Drawing
//
//  Created by agnezi.io on 09/10/22.
//

import SwiftUI


struct Arrow: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		
		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
		path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
		path.addLine(to: CGPoint(x: rect.midX + 30, y: rect.midY))
		path.move(to: CGPoint(x: rect.minX, y: rect.midY))
		path.addLine(to: CGPoint(x: rect.midX - 30, y: rect.midY))
		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
		
		path.move(to: CGPoint(x: rect.midX - 30, y: rect.midY))
		path.addLine(to: CGPoint(x: rect.midX - 30, y: rect.maxY))
		path.move(to: CGPoint(x: rect.midX + 30, y: rect.midY))
		path.addLine(to: CGPoint(x: rect.midX + 30, y: rect.maxY))
		return path
	}
}

struct AnotherArrow: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		
		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
		path.move(to: CGPoint(x: rect.midX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
		
		return path
	}
}


struct Chalenge: View {
	
	@State private var lineWidth = 2.0
	var steps = 100
	
	@State private var colorCycle = 0.0
	
	var body: some View {
		GeometryReader { geo in
			ScrollView {
				VStack {
					Arrow()
						.stroke(Color.red, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
						.frame(width: 300, height: geo.size.height / 2 - 20)
					
					VStack {
						
						AnotherArrow()
							.stroke(
								LinearGradient(colors: [
									Color.red,
									Color.blue
								], startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
							.frame(width: 300, height: geo.size.height / 2 - 20)
						
						Text("Line Width")
						Slider(value: $lineWidth, in: 1...10) {
						}
					}
					
					VStack{
						ZStack {
							ForEach(0..<steps) { value in
								Rectangle()
									.inset(by: Double(value))
									.strokeBorder(
										LinearGradient(colors: [
											color(for: value, brightness: 1),
											color(for: value, brightness: 0.5)
										], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 20, y: 10)),
										lineWidth: 2)
									.frame(width: 300, height: 400)
							}
						}
						.drawingGroup()
						
						Text("Color circle")
						Slider(value: $colorCycle)
					}
				}
			}
		}
	}
	
	func color(for value: Int, brightness: Double) -> Color {
		var targetHue = Double(value) / Double(steps) + colorCycle
		
		if targetHue > 1 {
			targetHue -= 1
		}
		
		return Color(hue: targetHue, saturation: 1, brightness: brightness)
	}
	
	
}

struct Chalenge_Previews: PreviewProvider {
	static var previews: some View {
		Chalenge()
	}
}
