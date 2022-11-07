//
//  BoardView.swift
//  Chess
//
//  Created by Arno van Zyl on 2022/11/07.
//

import SwiftUI

struct BoardView: View {
    let originX: CGFloat = 29
    let originY: CGFloat = 70
    let cellSide: CGFloat = 43
    
    var body: some View {
        ZStack {
            Path { path in
                for row in 0..<4 {
                    for col in 0..<4 {
                        path.addRect(CGRect(x: originX + CGFloat(2 * col) * cellSide, y: originY + CGFloat(2 * row) * cellSide, width: cellSide, height: cellSide))
                    }
                    
                    for col in 0..<4 {
                        path.addRect(CGRect(x: originX + CGFloat(2 * col + 1) * cellSide, y: originY + CGFloat(2 * row + 1) * cellSide, width: cellSide, height: cellSide))
                    }
                }
            }
            .fill(Color.gray)
            
            Path { path in
                for row in 0..<4 {
                    for col in 0..<4 {
                        path.addRect(CGRect(x: originX + CGFloat(2 * col + 1) * cellSide, y: originY + CGFloat(2 * row) * cellSide, width: cellSide, height: cellSide))
                    }
                    
                    for col in 0..<4 {
                        path.addRect(CGRect(x: originX + CGFloat(2 * col) * cellSide, y: originY + CGFloat(2 * row + 1) * cellSide, width: cellSide, height: cellSide))
                    }
                }
            }
            .fill(Color.black)
        }
    }
}
