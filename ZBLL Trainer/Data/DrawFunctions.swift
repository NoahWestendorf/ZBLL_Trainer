//
//  DrawFunctions.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 04.08.23.
//

import Foundation
import SwiftUI

// This file contains 5 functions to draw the rectangles of which the cube is put together of

func drawOllRectangle(colorOfRectangle: Color) -> some View {
    Rectangle()
        .frame(width: 23, height: 23)
        .foregroundColor(colorOfRectangle)
}

func drawPllRectangleTop(colorOfRectangle: Color) -> some View {
    Rectangle()
        .frame(width: 23, height: 10)
        .padding(.bottom, -10)
        .foregroundColor(colorOfRectangle)
}

func drawPllRectangleBottom(colorOfRectangle: Color) -> some View {
    Rectangle()
        .frame(width: 23, height: 10)
        .padding(.top, -10)
        .foregroundColor(colorOfRectangle)
}

func drawPllRectangleLeft(colorOfRectangle: Color) -> some View {
    Rectangle()
        .frame(width: 10, height: 23)
        .padding(.trailing, -10)
        .foregroundColor(colorOfRectangle)
}

func drawPllRectangleRight(colorOfRectangle: Color) -> some View {
    Rectangle()
        .frame(width: 10, height: 23)
        .padding(.leading, -10)
        .foregroundColor(colorOfRectangle)
}


