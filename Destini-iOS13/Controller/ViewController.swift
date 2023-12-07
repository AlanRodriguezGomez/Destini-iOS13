//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.getCurrentStory().title
        choice1Button.setTitle(storyBrain.getCurrentStory().choice1, for: [])
        choice2Button.setTitle(storyBrain.getCurrentStory().choice2, for: [])
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(choice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getCurrentStory().title
        choice1Button.setTitle(storyBrain.getCurrentStory().choice1, for: [])
        choice2Button.setTitle(storyBrain.getCurrentStory().choice2, for: [])
    }
}

