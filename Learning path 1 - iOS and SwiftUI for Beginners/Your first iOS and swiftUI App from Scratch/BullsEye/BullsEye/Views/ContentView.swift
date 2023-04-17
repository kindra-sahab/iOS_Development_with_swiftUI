//
//  ContentView.swift
//  BullsEye
//
//  Created by Jatin Kindra on 10/04/23.
//

import SwiftUI

// We are defining a template for instance called contentView that is a view.
struct ContentView: View {
  
  // Now, we have one computed property called 'body'.
  // This is the definition of a variable named body and it's a some view.
  //Means 'body' can contains either a view or something like which behaves as a view.
  
  
  // This is a state variable which maintains the user interface of our app
  // Whenever the value of state variable changes, swiftUI automatically
  // recalculates the body property and re-renders the view.
  
  // User Interface ans state should be connected or synced.
  
//  User Interface ans state should be connected or synced.
//  SwiftUI is defined to solve the problem of the mismatch between  the user interface and application state

//  Term know as Binding - is the fancy way of saying that a particular user interface view will always be tied to a particular state value.
  
  // In this we'll make a binding between the state variable and the slider value.
  // By doing this, everytime we move the slider, the state variable automatically changes to match and vice verca
  // If we update the state variable, the UI of slider changes in accordance to the state variable value. (Means they are bound together)
  
  
  // option + cmd + P  = to resume the preview.
  @State private var isAlertVisible: Bool = false
  @State private var sliderValue: Double = 20.0
  //We'll make binding with this state variable.
  
  @State private var game: Game = Game()
  
  var body: some View {
    
    VStack {
      Text("🎯🎯🎯🎯\nPut the BullsEye as close as you can to")
        .textCase(.uppercase)
        .bold()
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
      Text(String(game.target))
        .font(.largeTitle)
        .fontWeight(.black)
      HStack {
        Text("1")
          .fontWeight(.bold)
        Slider(value: $sliderValue , in: 1.0...100.0)
        Text("100")
          .fontWeight(.bold)
      }
      Button("Hit Me") {
//        print("Hello SwiftUI")
        isAlertVisible = true
      }
      .alert("Alert !!",
             isPresented: $isAlertVisible,
             actions: {
        Button("Awesome") {
          print("Awesome button pressed")
//          isAlertVisible = false
        }
      },
             message: {
        let roundedSliderValue = Int(sliderValue.rounded())
        Text("""
            The current slider's value is \(roundedSliderValue)
            You scored \(game.getPoints(currentSliderValue: roundedSliderValue)) this round
            """)
      })
    }
  }
  
  var body2: some View {
    Text("")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
