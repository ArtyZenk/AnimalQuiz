//
//  QuestionsViewController.swift
//  AnimalQuiz
//
//  Created by Artyom Guzenko on 31.05.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet weak var rangedSlider: UISlider!
    
    private let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    @IBAction func rangedAnswerButtonPressed() {
    }
    
}
// MARK: - Private Methods
extension QuestionsViewController {
    private func updateUI() {
        // Hide stacks
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
    }
}
