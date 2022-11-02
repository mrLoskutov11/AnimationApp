//
//  ViewController.swift
//  AnimationApp
//
//  Created by Антон Лоскутов on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    @IBOutlet var coreAnimationView: SpringView!
    
    @IBOutlet var presetLable: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLable: UILabel!
    
    @IBOutlet var startAnimationButton: UIButton!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }

    
    @IBAction func runAnimationButtonDidTapedd() {
            setupAnimation()
            setupLabels()
            coreAnimationView.animate()
            
            animation = Animation.getAnimation()
            startAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func setupAnimation() {
        coreAnimationView.animation = animation.preset
        coreAnimationView.curve = animation.curve
        coreAnimationView.force = animation.force
        coreAnimationView.duration = animation.duration
        coreAnimationView.delay = animation.delay
    }
    private func setupLabels() {
        presetLable.text = ("Preset: \(animation.preset)")
        curveLabel.text = ("Curve: \(animation.curve)")
        forceLabel.text = ("Forse: \(string(from: animation.force))")
        durationLabel.text = ("Duration: \(string(from: animation.duration))")
        delayLable.text = ("Delay: \(string(from: animation.delay))")
    }
    private func string(from double: Double) -> String {
        String(format: "%.2f", double)
    }
}

