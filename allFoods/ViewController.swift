//
//  ViewController.swift
//  allFoods
//
//  Created by Oscar Newman on 9/16/17.
//  Copyright © 2017 Oscar Newman. All rights reserved.
//

import UIKit
import Magnetic

class ViewController: UIViewController {
    
    var magnetic: Magnetic!
    
    @IBOutlet weak var continueButton: UIButton!
    
    var selectedCuisines: [String] = []
    

    @IBOutlet weak var bubbleView: MagneticView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        magnetic = bubbleView.magnetic
        magnetic.magneticDelegate = self
        bubbleView.clipsToBounds = true
        bubbleView.backgroundColor = .white
        
        bubbleView.layer.borderColor = UIColor.white.cgColor
        bubbleView.layer.borderWidth = 4
        
       
        
        
        
//        var maskFrame = bubbleView.frame
//        maskFrame.size.height = bubbleView.frame.height - 2
//        maskFrame.origin.y = bubbleView.frame.origin.y + 1
//        bubbleView.mask = UIView(frame: maskFrame)

        addNode(name: "Fast Food", image: "fast food")
        addNode(name: "Mexican", image: "mexican")
        addNode(name: "Thai", image: "thai")
        addNode(name: "Indian", image: "indian")
        addNode(name: "Chinese", image: "chinese")
        addNode(name: "Japanese", image: "japanese")
        addNode(name: "Caribbean", image: "caribbean")
        addNode(name: "Mediterranean", image: "med")
        addNode(name: "Vegetarian", image: "vegetarian")
        addNode(name: "Vegan", image: "vegan")
        addNode(name: "Greek", image: "greek")
        addNode(name: "Sandwiches", image: "sandwich")
        addNode(name: "American", image: "american")
        addNode(name: "Steak", image: "steak")
        
        
    }
    
    func addNode(name: String, image: String) {
        let node = Node(text: name, image: UIImage(named: image), color: Stylesheet.brandColor, radius: 50)
        
        magnetic.addChild(node)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .default

        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: MagneticDelegate {
    func magnetic(_ magnetic: Magnetic, didSelect node: Node) {
        selectedCuisines.append(node.text!)
    }
    
    func magnetic(_ magnetic: Magnetic, didDeselect node: Node) {
        selectedCuisines.remove(at: selectedCuisines.index(of: node.text!)!)
    }
}

