import Foundation

struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    var leaderboardEntries: [LeaderboardEntries] = []
    
    func points(sliderValue: Int) -> Int{
        var pointsAwarded = 0
        if(sliderValue == target){
            pointsAwarded = 200
        }else if((sliderValue - 2) == target){
            pointsAwarded = 98 + 50
        }else if((sliderValue - 1) == target){
            pointsAwarded = 99 + 50}
        else if((sliderValue + 2) == target){
            pointsAwarded = 98 + 50
        }else if((sliderValue + 1) == target){
            pointsAwarded = 99 + 50
        }else{
            pointsAwarded = 100 - abs(target - sliderValue)
        }
        return pointsAwarded
    }
    
    mutating func startNewRound(points: Int){
        addToLeaderboard(score: points)
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart(){
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
    struct LeaderboardEntries {
        let score: Int
        let date: Date
    }
    
    mutating func addToLeaderboard(score: Int){
        leaderboardEntries.append(LeaderboardEntries(score: score, date: Date()))
        leaderboardEntries.sort{ entry1, entry2 in
            entry1.score > entry2.score
            
        }
    }
}
