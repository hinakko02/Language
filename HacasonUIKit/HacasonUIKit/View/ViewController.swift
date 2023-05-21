//
//  ViewController.swift
//  HacasonUIKit
//
//  Created by Hina on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {
    var data = DiagnoseData()
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }



    @IBAction func pushYes(_ sender: UIButton) {

        if data.getyesAnswerDestination() == nil {

            self.performSegue(withIdentifier: "yesToResult", sender: nil)

        }else {
            let yesNumber = sender.currentTitle ?? (sender.titleLabel?.text ?? "0")
            data.nextQuestion(userChoice: yesNumber)//次の問題遷移
           updateUI()
        }
    }


    @IBAction func pushNo(_ sender: UIButton) {

        if data.getnoAnswerDestination() == nil {

            self.performSegue(withIdentifier: "noToResult", sender: nil)
        }else {
            let noNumber = sender.currentTitle ?? (sender.titleLabel?.text ?? "0")
            data.nextQuestion(userChoice: noNumber)
            updateUI()
        }
    }


    func updateUI() {
        questionLabel.text = data.getQuestionTitle()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //画面遷移の前に準備
        //セグ　画面が複数ある可能性がある、区別する
        //まずセグがあるか確認。識別子は割り当てたもの
        if segue.identifier == "yesToResult" { //正しいセグを確認
            let destinationVC = segue.destination as!YesResultViewController //セグが実行されたときの行き先、初期化される新しいコントローラー参照作成
            //segue実行時に初期化するViewController,送り先のデータ型を正確に指定。as downcasting　→　ResultViewController
            //左　目的VC
            destinationVC.advice = data.getyesResult()//Java
        } else if segue.identifier == "noToResult"{
            let destinationVC = segue.destination as!NoResultViewController //セグが実行されたときの行き先、初期化される新しいコントローラー参照作成
            //segue実行時に初期化するViewController,送り先のデータ型を正確に指定。as downcasting　→　ResultViewController
            destinationVC.lang = data.getnoResult()//C言語
        }
    }
}
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        セグ　画面が複数ある可能性がある、区別する
        まずセグがあるか確認。識別子は割り当てたもの
        if segue.identifier == "YesToResult" { 正しいセグを確認
            let destinationVC = segue.destination as!YesResultViewController セグが実行されたときの行き先、初期化される新しいコントローラー参照作成
            segue実行時に初期化するViewController,送り先のデータ型を正確に指定。as downcasting　→　ResultViewController
            左　目的VC
            destinationVC.advice = data.getyesResult()
        } else {
            if segue.identifier == "noToResult" { 正しいセグを確認
                let destinationVC = segue.destination as!NoResultViewController セグが実行されたときの行き先、初期化される新しいコントローラー参照作成
                segue実行時に初期化するViewController,送り先のデータ型を正確に指定。as downcasting　→　ResultViewController
                左　目的VC
                destinationVC.lang = data.getnoResult()
            }
        }
    }
}
   /* セグエは開始される直前にコードを実行するためにオーバーライドする必要がある。
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        セグ　画面が複数ある可能性がある、区別する
        まずセグがあるか確認。識別子は割り当てたもの
        if segue.identifier == "goToResult" { 正しいセグを確認
            let destinationVC = segue.destination as!ResultViewController セグが実行されたときの行き先、初期化される新しいコントローラー参照作成
            segue実行時に初期化するViewController,送り先のデータ型を正確に指定。as downcasting　→　ResultViewController
            左　目的VC
            destinationVC.lang = data.getyesResult()
            destinationVC.lang = data.getnoResult()
        }
    }
    }*/*/
