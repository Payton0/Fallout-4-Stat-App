//
//  Slot Machine.swift
//  Fallout Stat App
//
//  Created by PMuhs@bsd.220org on 12/11/15.
//  Copyright © 2015 PMuhs@bsd.220org. All rights reserved.
//

        import UIKit

        class SlotMachine: UIViewController
{
            
            @IBOutlet weak var image1: UIImageView!
            @IBOutlet weak var image2: UIImageView!
            @IBOutlet weak var image3: UIImageView!
            var v111 : UIImage = UIImage(named: "v111")!
            var institute : UIImage = UIImage(named: "institute")!
            var vaultBoy : UIImage = UIImage(named: "vaultBoy")!
            var railRoad : UIImage = UIImage(named: "railRoad")!
            var minuteMen : UIImage = UIImage(named: "minuteMen")!
            var gunner : UIImage = UIImage(named: "gunner")!
            var bos : UIImage = UIImage(named: "bos")!
                    var slotPics : [UIImage] = []
            
            override func viewDidLoad()
            {
                super.viewDidLoad()

                slotPics = [v111, bos, institute, vaultBoy, railRoad, minuteMen, gunner]
                
                
            }
            @IBAction func spinWheel(sender: UITapGestureRecognizer)
            {
                print("tapped")
                let randomPic1 = Int(arc4random_uniform(UInt32(slotPics.count)))
                let randomPic2 = Int(arc4random_uniform(UInt32(slotPics.count)))
                let randomPic3 = Int(arc4random_uniform(UInt32(slotPics.count)))
                
                image1.image = slotPics[randomPic1]
                image2.image = slotPics[randomPic2]
                image3.image = slotPics[randomPic3]
                
                if randomPic1 == randomPic2 && randomPic2 == randomPic3
                {
                    print("jackpot")
                    jackpot()
                }
                
            }
            
            func jackpot()
            {
                if image1 == v111
                {
                    let alert = UIAlertController(title: "Jackpot", message: "Freeze", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.v111
                        self.image2.image = self.v111
                        self.image3.image = self.v111})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
                if image1.image == bos
                {
                    let alert = UIAlertController(title: "Jackpot", message: "For the BrotherHood", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.bos
                        self.image2.image = self.bos
                        self.image3.image = self.bos})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
                if image1.image == institute
                {
                    let alert = UIAlertController(title: "Jackpot", message: "We are the last Hope for Humanity", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.institute
                        self.image2.image = self.institute
                        self.image3.image = self.institute})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
                if image1.image == vaultBoy
                {
                    let alert = UIAlertController(title: "Jackpot", message: "Welcome to Vault tech your estimated wait time is 10,738 hours have a nice day", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.vaultBoy
                        self.image2.image = self.vaultBoy
                        self.image3.image = self.vaultBoy})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
                if image1.image == railRoad
                {
                    let alert = UIAlertController(title: "Jackpot", message: "If it feels walks and talks it’s alive", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.railRoad
                        self.image2.image = self.railRoad
                        self.image3.image = self.railRoad})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
                if image1.image == minuteMen
                {
                    let alert = UIAlertController(title: "Jackpot", message: "The only way things will get better is if we all band together", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.minuteMen
                        self.image2.image = self.minuteMen
                        self.image3.image = self.minuteMen})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
                if image1.image == gunner
                {
                    let alert = UIAlertController(title: "Jackpot", message: "Will kill for pay", preferredStyle: UIAlertControllerStyle.Alert)
                    let resestGame = UIAlertAction(title: "Play Again", style: UIAlertActionStyle.Default, handler: {sender in self.image1.image = self.gunner
                        self.image2.image = self.gunner
                        self.image3.image = self.gunner})
                    alert.addAction(resestGame)
                    presentViewController(alert, animated: true, completion: nil)
                    
                }
            }
            
}
