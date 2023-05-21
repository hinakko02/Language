import UIKit

struct DiagnoseQuestionData {
    let mondai : String
    let yesAnswer : (DiagnoseLanguage?, Int?) //タプル　ニルだっらIntに行く
    let noAnswer : (DiagnoseLanguage?, Int?)

    var questionNumber = 0
    static func makeQuestionData() -> [DiagnoseQuestionData] {    //実体作らなくていい 全問分欲しいから配列
        let q1 = DiagnoseQuestionData(mondai: "縁の下の力持ちタイプだ！", yesAnswer: (nil,1), noAnswer: (nil,6))
        let q2 = DiagnoseQuestionData(mondai: "1mmの狂いも許せないタイプだ！", yesAnswer: (nil,2), noAnswer: (nil,3))
        let q3 = DiagnoseQuestionData(mondai: "ロボットを作ってみたい！", yesAnswer: (.cLang,nil), noAnswer: (.java,nil))
        let q4 = DiagnoseQuestionData(mondai: "AIと友達になりたい！", yesAnswer: (.python,1), noAnswer: (nil,4))
        let q5 = DiagnoseQuestionData(mondai: "新しいもの好きだ！", yesAnswer: (.goLang,nil), noAnswer: (nil,5))
        let q6 = DiagnoseQuestionData(mondai: "ECサイトで買い物をするのが好きだ！", yesAnswer: (.php,nil), noAnswer: (.ruby,nil))
        let q7 = DiagnoseQuestionData(mondai: "早死にするとしても、お金の方が大事だ！", yesAnswer: (nil,7), noAnswer: (nil,8))
        let q8 = DiagnoseQuestionData(mondai: "物事を分析することが好きだ！", yesAnswer: (.rLang,nil), noAnswer: (.scala,nil))
        let q9 = DiagnoseQuestionData(mondai: "変化がない毎日は嫌だ！", yesAnswer: (nil,9), noAnswer: (.html,nil))
        let q10 = DiagnoseQuestionData(mondai: "ゲームは好きですか？", yesAnswer: (nil,10), noAnswer: (.javaScript,nil))
        let q11 = DiagnoseQuestionData(mondai: "特にスマホゲームが好きだ！", yesAnswer: (nil,11), noAnswer: (.cSharp,nil))
        let q12 = DiagnoseQuestionData(mondai: "AndroidよりもiPhone派だ！", yesAnswer: (.swift,nil), noAnswer: (.kotlin,nil))
        return [q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12]

    }

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
    let question: [String] = ["縁の下の力持ちタイプだ！","1mmの狂いも許せないタイプだ！","ロボットを作ってみたい！","AIと友達になりたい！","新しいもの好きだ！","ECサイトで買い物をするのが好きだ！","早死にするとしても、お金の方が大事だ！","物事を分析することが好きだ！","変化がない毎日は嫌だ！","ゲームは好きですか？", "特にスマホゲームが好きだ！","AndroidよりもiPhone派だ！"]
}

