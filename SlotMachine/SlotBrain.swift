//
//  SlotBrain.swift
//  SlotMachine
//
//  Created by jim Veneskey on 1/14/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import Foundation

class SlotBrain {
    
    class func unpackSlotsIntoSlotRows(slots: [[Slot]]) -> [[Slot]] {
        
        var slotRow: [Slot] = []
        var slotRow2: [Slot] = []
        var slotRow3: [Slot] = []
        
        for slotArray in slots {
            for var index = 0; index < slotArray.count; index++ {
                let slot = slotArray[index]
                
                if index == 0 {
                    slotRow.append(slot)
                } else if index == 1 {
                    slotRow2.append(slot)
                    
                } else if index == 2 {
                    slotRow2.append(slot)
                } else {
                    println("ERROR")
                }
            }
        }
        
        var slotsInRows: [[Slot]] = [slotRow, slotRow2, slotRow3]
        return slotsInRows
    }
    
}