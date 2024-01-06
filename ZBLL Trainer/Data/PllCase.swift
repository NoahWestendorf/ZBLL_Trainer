//
//  PllCase.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 17.07.23.
//

import SwiftUI

class PllCase: Identifiable{
    @Published var name: String
    @Published var scramble: String
    @Published var colors: [Color]
    @Published var isSelected: Bool
    
    init(name: String, scramble: String, colors: [Color], isSelected: Bool) {
        self.name = name
        self.scramble = scramble
        self.colors = colors
        self.isSelected = isSelected
    }
}

let pllCases = [
    PllCase(
        name: "AaPerm",
        scramble: "U' F B U2 F B' U L2 U2 F2 L2 F2 U' R2 U' L2 U F2 R2 U",
        colors: [.blue, .blue, .orange,
                 .red, .green,
                 .red, .orange,
                 .orange, .green,
                 .blue, .green, .red],
        isSelected: true
    ),
    PllCase(
        name: "AbPerm",
        scramble: "U2 R L U2 R L U' D' F2 D L2 F2 D B2 D' F2 L2 U' L2 U'",
        colors: [.red, .red, .orange,
                 .green, .green,
                 .green, .blue,
                 .orange, .red,
                 .blue, .orange, .blue],
        isSelected: true
    ),
    PllCase(
        name: "FPerm",
        scramble: "U F B' L2 F B' U B2 U F2 B2 L2 U' F2 D R2 D' F2 L2 U'",
        colors: [.red, .green, .blue,
                 .green, .orange,
                 .red, .orange,
                 .blue, .orange,
                 .red, .blue, .green],
        isSelected: true
    ),
    PllCase(
        name: "GaPerm",
        scramble: "U F B U2 F B' L2 R2 U' R2 U F2 U' R2 D F2 B2 R2 D' U'",
        colors: [.orange, .green, .red,
                 .blue, .blue,
                 .orange, .blue,
                 .red, .orange,
                 .green, .red, .green],
        isSelected: true
    ),
    PllCase(
        name: "GbPerm",
        scramble: "F B U2 F B R2 U F2 U' B2 U L2 B2 D L2 B2 U",
        colors: [.orange, .orange, .red,
                 .blue, .blue,
                 .green, .red,
                 .red, .orange,
                 .green, .blue, .green],
        isSelected: true
    ),
    PllCase(
        name: "GcPerm",
        scramble: "U L R U2 L R' F2 U L2 B2 R2 F2 U F2 U' R2 D B2",
        colors: [.red, .blue, .orange,
                 .green, .green,
                 .green, .orange,
                 .orange, .red,
                 .blue, .red, .blue],
        isSelected: true
    ),
    PllCase(
        name: "GdPerm",
        scramble: "U' L R U2 L R' B2 U B2 U' R2 U L2 R2 F2 L2 D F2",
        colors: [.orange, .red, .red,
                 .blue, .blue,
                 .orange, .green,
                 .red, .orange,
                 .green, .blue, .green],
        isSelected: true
    ),
    PllCase(
        name: "JaPerm",
        scramble: "U2 F B U2 F B' R2 U F2 L2 R2 U' B2 U B2 R2 D L2 U",
        colors: [.orange, .red, .red,
                 .blue, .blue,
                 .blue, .orange,
                 .red, .orange,
                 .green, .green, .green],
        isSelected: true
    ),
    PllCase(
        name: "JbPerm",
        scramble: "U2 L R U2 L R U D' B2 U' B2 D L2 D' B2 D R2",
        colors: [.orange, .orange, .green,
                 .blue, .red,
                 .blue, .red,
                 .blue, .orange,
                 .red, .green, .green],
        isSelected: true
    ),
    PllCase(
        name: "RaPerm",
        scramble: "U F B U2 F B U R2 U' L2 U F2 U' L2 D B2 D' F2 B2",
        colors: [.blue, .red, .orange,
                 .red, .green,
                 .blue, .orange,
                 .red, .blue,
                 .green, .green, .orange],
        isSelected: true
    ),
    PllCase(
        name: "RbPerm",
        scramble: "U2 R L U2 R L F2 U' R2 B2 D' R2 D F2 D' B2 R2",
        colors: [.green, .orange, .blue,
                 .orange, .orange,
                 .blue, .red,
                 .blue, .green,
                 .red, .green, .red],
        isSelected: true
    ),
    PllCase(
        name: "TPerm",
        scramble: "R L F2 R' L D F2 U2 B2 L2 B2 U R2 U L2 U' B2",
        colors: [.orange, .red, .orange,
                 .blue, .green,
                 .blue, .green,
                 .red, .red,
                 .green, .orange, .blue],
        isSelected: true
    ),
    PllCase(
        name: "EPerm",
        scramble: "U2 B F R2 B F' U' F2 D2 R2 U' L2 U' B2 R2 D2 L2 U' B2",
        colors: [.red, .green, .orange,
                 .green, .green,
                 .orange, .red,
                 .blue, .blue,
                 .red, .blue, .orange],
        isSelected: true
    ),
    PllCase(
        name: "NaPerm",
        scramble: "U R L' U2 R' L U2 F2 L2 U' L2 U2 F2 U L2 U2 L2 F2",
        colors: [.red, .red, .orange,
                 .green, .green,
                 .blue, .green,
                 .blue, .blue,
                 .red, .orange, .orange],
        isSelected: true
    ),
    PllCase(
        name: "NbPerm",
        scramble: "U' F B' U2 F' B U2 L2 F2 U F2 U2 L2 U' F2 U2 F2 L2",
        colors: [.blue, .green, .green,
                 .red, .red,
                 .red, .orange,
                 .orange, .orange,
                 .blue, .blue, .green],
        isSelected: true
    ),
    PllCase(
        name: "VPerm",
        scramble: "U' B F U2 B F U F2 U2 L2 U' L2 F2 U2 F2 U L2 U2 B2",
        colors: [.orange, .orange, .red,
                 .blue, .blue,
                 .blue, .red,
                 .green, .green,
                 .orange, .green, .red],
        isSelected: true
    ),
    PllCase(
        name: "YPerm",
        scramble: "U2 R L B2 R' L' U' L2 U' L2 U B2 D B2 D' R2 U R2",
        colors: [.red, .red, .orange,
                 .green, .green,
                 .orange, .blue,
                 .blue, .blue,
                 .red, .green, .orange],
        isSelected: true
    ),
    PllCase(
        name: "HPerm",
        scramble: "U' B F D2 B F D2 B2 L2 D2 L2 F2 R2 U2 B2 R2 U",
        colors: [.green, .blue, .green,
                 .orange, .red,
                 .red, .orange,
                 .orange, .red,
                 .blue, .green, .blue],
        isSelected: true
    ),
    PllCase(
        name: "UaPerm",
        scramble: "U B2 U' L2 B2 L2 U L2 B2 L2 U2 L2 U2 B2 L2 B2 U2 L2",
        colors: [.red, .orange, .red,
                 .green, .blue,
                 .green, .red,
                 .green, .blue,
                 .orange, .blue, .orange],
        isSelected: true
    ),
    PllCase(
        name: "UbPerm",
        scramble: "L2 U B2 L2 B2 U B2 U2 B2 U2 L2 B2 L2 U2 L2",
        colors: [.green, .red, .green,
                 .orange, .red,
                 .green, .orange,
                 .orange, .red,
                 .blue, .blue, .blue],
        isSelected: true
    ),
    PllCase(
        name: "ZPerm",
        scramble: "U' L R U2 L R' U' L2 U' L2 U' L2 U' L2 U' L2 F2 L2 F2",
        colors: [.green, .red, .green,
                 .orange, .red,
                 .blue, .green,
                 .orange, .red,
                 .blue, .orange, .blue],
        isSelected: true
    )
]


