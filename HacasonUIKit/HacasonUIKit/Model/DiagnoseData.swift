//
//  DiagnoseData.swift
//  HacasonUIKit
//
//  Created by Hina on 2023/05/18.
//
import UIKit

struct DiagnoseData {
    var questionNumber = 0

    let questions = [
        Diagnose(
            mondai: "縁の下の力持ちタイプだ！", yesAnswerDestination: 1, noAnswerDestination: 6, yesResult: nil, noResult: nil),
        Diagnose(
            mondai: "1mmの狂いも許せないタイプだ！", yesAnswerDestination: 2, noAnswerDestination: 3, yesResult: nil, noResult: nil),
        Diagnose(
            mondai: "ロボットを作ってみたい！", yesAnswerDestination: nil, noAnswerDestination: nil, yesResult: "C言語", noResult: "Java"),
        Diagnose(
            mondai: "AIと友達になりたい！", yesAnswerDestination: nil, noAnswerDestination: 4, yesResult: "Python", noResult: nil),
        Diagnose(
            mondai: "新しいもの好きだ！", yesAnswerDestination: nil, noAnswerDestination: 5, yesResult: "Go言語", noResult: nil),
        Diagnose(
            mondai: "ECサイトで買い物をするのが好きだ！", yesAnswerDestination: nil, noAnswerDestination: nil, yesResult: "PHP", noResult: "Ruby"),
        Diagnose(
            mondai: "早死にするとしても、お金の方が大事だ！", yesAnswerDestination: 7, noAnswerDestination: 8, yesResult: nil, noResult: nil),
        Diagnose(
            mondai: "物事を分析することが好きだ！", yesAnswerDestination: nil, noAnswerDestination: nil, yesResult: "R言語", noResult: "Scala"),
        Diagnose(
            mondai: "変化がない毎日は嫌だ！", yesAnswerDestination: 9, noAnswerDestination: nil, yesResult: nil, noResult: "HTML"),
        Diagnose(
            mondai: "ゲームは好きですか？", yesAnswerDestination: 10, noAnswerDestination: nil, yesResult: nil, noResult: "JavaScript"),
        Diagnose(
        mondai: "特にスマホゲームが好きだ！", yesAnswerDestination: 11, noAnswerDestination: nil, yesResult: nil, noResult: "C#"),
        Diagnose(
            mondai: "AndroidよりもiPhone派だ！", yesAnswerDestination: nil, noAnswerDestination: nil, yesResult: "Swift", noResult: "Kotlin")
    ]
    
    func getQuestionTitle() -> String {           //質問
        return questions[questionNumber].mondai
    }
    func getyesAnswerDestination() -> Int? {
        questions[questionNumber].yesAnswerDestination ?? nil
        }
    func getnoAnswerDestination() -> Int? {
        questions[questionNumber].noAnswerDestination ?? nil
        }

    func getyesResult() -> String? {
        questions[questionNumber].yesResult ?? nil
        }

    func getnoResult() -> String? {
        questions[questionNumber].noResult ?? nil
        }

    mutating func nextQuestion(userChoice: String)  { //インスタンスに対して呼べる
            
            let currentQuestion = questions[questionNumber] //0番目,1番目

            if userChoice == "Yes" {
                questionNumber = currentQuestion.yesAnswerDestination ?? 0 //Yes押した次の質問に移動
            }else if userChoice == "No" {
                questionNumber = currentQuestion.noAnswerDestination ?? 0 //No押した次の質問に移動
            }
            }
}
/*import UIKit
struct Diagnose {
    let mondai : String
    let yesAnswer : (DiagnoseLanguage?, Int?)
    let noAnswer : (DiagnoseLanguage?, Int?)
    enum DiagnoseLanguage : String {
        case cLang = "C言語"
        case java = "Java"
        case python = "Python"
        case goLang = "Go言語"
        case php = "PHP"
        case ruby = "Ruby"
        case rLang = "R言語"
        case scala = "Scala"
        case html = "HTML"
        case javaScript = "JavaScript"
        case cSharp = "C#"
        case swift = "Swift"
        case kotlin = "Kotlin"

    }
}
struct DiagnoseData {
    var questionNumber = 0
    let questions = [
        Diagnose(
            mondai: "縁の下の力持ちタイプだ！", yesAnswer: (nil,1), noAnswer: (nil,6)),
        Diagnose(
            mondai: "1mmの狂いも許せないタイプだ！", yesAnswer: (nil,2), noAnswer: (nil,3)),
        Diagnose(
            mondai: "ロボットを作ってみたい！", yesAnswer: (.cLang,nil), noAnswer: (.java,nil)),
        Diagnose(
            mondai: "AIと友達になりたい！", yesAnswer: (.python,1), noAnswer: (nil,4)),
        Diagnose(
            mondai: "新しいもの好きだ！", yesAnswer: (.goLang,nil), noAnswer: (nil,5)),
        Diagnose(
            mondai: "ECサイトで買い物をするのが好きだ！", yesAnswer: (.php,nil), noAnswer: (.ruby,nil)),
        Diagnose(
            mondai: "早死にするとしても、お金の方が大事だ！", yesAnswer: (nil,7), noAnswer: (nil,8)),
        Diagnose(
            mondai: "物事を分析することが好きだ！", yesAnswer: (.rLang,nil), noAnswer: (.scala,nil)),
        Diagnose(
            mondai: "変化がない毎日は嫌だ！", yesAnswer: (nil,9), noAnswer: (.html,nil)),
        Diagnose(
            mondai: "ゲームは好きですか？", yesAnswer: (nil,10), noAnswer: (.javaScript,nil)),
        Diagnose(
            mondai: "特にスマホゲームが好きだ！", yesAnswer: (nil,11), noAnswer: (.cSharp,nil)),
        Diagnose(
            mondai: "AndroidよりもiPhone派だ！", yesAnswer: (.swift,nil), noAnswer: (.kotlin,nil))
 ]*/
