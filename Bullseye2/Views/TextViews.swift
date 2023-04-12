import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .padding(.horizontal,30)
    }
}
struct BigNumber: View{
    var text: String
    var body: some View{
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black )
    }
}
struct TextView: View{
    var text: String
    var body: some View{
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .font(.title3)
    }
}

struct LabelText: View{
    var text: String
    var body: some View{
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}
struct BodyText: View{
    var text: String
    var body: some View{
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}
struct ButtonText: View{
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(Color.white)
            .cornerRadius(12.0)
    }
}
struct ScoreText: View{
    var score: Int
    var body: some View{
        Text(String(score))
            .font(.title3)
            .kerning(-0.2)
            .bold()
    }
}
struct DateText: View{
    var date: Date
    var body: some View{
        Text(date, style: .time)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            .kerning(-0.2)
            .bold()
    }
}
struct BigBoldText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

struct previewText: View {
    var body: some View {
        VStack{
            InstructionText(text: "whatever")
            BigNumber(text: "10")
            LabelText(text: "999")
            BodyText(text: "You scored 999 points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 490)
            DateText(date: Date())
            BigBoldText(text: "igahkdb")
        }
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        previewText()
    }
}
