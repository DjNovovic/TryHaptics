//
//  ContentView.swift
//  TryHaptics
//
//  Created by Đorđije Novović on 19.9.21..
//

import SwiftUI

class HapticManager {
    
    static let instance = HapticManager()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
    
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Try Haptics")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            Button(action: {
                HapticManager.instance.notification(type: .success)
            }, label: {
                    Text("Success")
            })
            Button(action: {
                HapticManager.instance.notification(type: .error)
            }, label: {
                Text("Error")
            })
            Button(action: {
                HapticManager.instance.notification(type: .warning)
            }, label: {
                Text("Warning")
            })
            Divider()
            Button(action: {
                HapticManager.instance.impact(style: .heavy)
            }, label: {
                Text("Heavy")
            })
            Button(action: {
                HapticManager.instance.impact(style: .light)
            }, label: {
                Text("Light")
            })
            Button(action: {
                HapticManager.instance.impact(style: .medium)
            }, label: {
                Text("Medium")
            })
            Button(action: {
                HapticManager.instance.impact(style: .rigid)
            }, label: {
                Text("Rigid")
            })
            Button(action: {
                HapticManager.instance.impact(style: .soft)
            }, label: {
                Text("Soft")
            })
        }
        .foregroundColor(.white)
        .font(.largeTitle)
        .shadow(color: .blue, radius: 6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
