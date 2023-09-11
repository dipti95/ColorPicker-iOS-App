/// Copyright (c) 2023 Kodeco Inc.
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct ButtonView: View {
  @Binding var foregroundColor : Color
  @Binding var redColor : Double
  @Binding var greenColor : Double
  @Binding var blueColor : Double
  
  var body: some View {
    Button("Set Color") {
      foregroundColor = Color(red: redColor / Constants.General.maxValueForColor, green: greenColor / Constants.General.maxValueForColor, blue: blueColor / Constants.General.maxValueForColor)
    }
    .padding(Constants.General.padding)
    .background(
      Color.blue
    )
    .cornerRadius(Constants.General.cornerRadius)
    .overlay(
      RoundedRectangle(cornerRadius: Constants.General.cornerRadius)
        .stroke(Color.white, lineWidth: Constants.General.strokeWidth)
    )
    .foregroundStyle(.white)
    .bold()
    .font(.title3)
  }
}

struct ButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonView(foregroundColor: .constant(Color(red: 255.0/Constants.General.maxValueForColor, green: 100.0/Constants.General.maxValueForColor, blue: 50.0/Constants.General.maxValueForColor)) , redColor: .constant(200.00), greenColor: .constant(200.00), blueColor: .constant(200.00))
  }
}
