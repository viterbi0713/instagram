//
//  CommentPopUpViewController.swift
//  Instagram
//
//  Created by Toru Yoshihara on 2016/11/08.
//  Copyright © 2016年 tooru.yoshihara. All rights reserved.
//

import UIKit
import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class CommentPopUpViewController: UIViewController {
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func closePopUp(sender: AnyObject) {
        
        self.removeAnime()
        //self.view.removeFromSuperview()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.7)
        self.showAnime()
        
        
        // Do any additional setup after loading the view.
    }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAnime() {
        self.view.transform = CGAffineTransformMakeScale(1.3,1.3)
        self.view.alpha = 0.0;
        UIView.animateWithDuration(0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
        });
    }

    func removeAnime() {
        UIView.animateWithDuration(0.25, animations: {
            self.view.transform = CGAffineTransformMakeScale(1.3, 1.3)
            self.view.alpha = 0.0;
            }, completion:{(finished: Bool) in
                if (finished) {
                self.view.removeFromSuperview()
                }
        });
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
