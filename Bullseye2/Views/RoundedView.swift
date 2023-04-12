import SwiftUI

//ListRounded view
struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle().strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}
//RestartRounded view
struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title3)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56, height: 56)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}
//Number Rectangular view
struct RoundedRectTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}
//Rounded text view for leaderboardView
struct RoundedTextView: View {
    var text: String
    var body: some View {
            Text(text)
                .font(.title3)
                .bold()
                .foregroundColor(Color("TextColor"))
                .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
                .overlay(
                    Circle().strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
                )
    }
}

struct PreviewView: View{
    var body: some View{
        VStack(spacing: 10){
            RoundedImageViewStroked(systemName: "list.dash")
            RoundedImageViewFilled(systemName: "arrow.counterclockwise")
            RoundedRectTextView(text:"aa")
            RoundedTextView(text: "1")
        
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView().preferredColorScheme(.dark)
        
    }
}
