//
//  ViewController.swift
//  SectionedEmojiTable
//
//  Created by Anna Parker on 10/6/16.
//  Copyright © 2016 Anna Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//Table View Required Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            myCell?.textLabel?.text = emojis[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        } else if indexPath.section == 1{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = plants[indexPath.row]
            myCell?.detailTextLabel?.text = "hellow:("
            return myCell!
        } else if indexPath.section == 2{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell3")
            myCell?.textLabel?.text = flags[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        } else if indexPath.section == 3{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell4")
            myCell?.textLabel?.text = symbols[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        }else if indexPath.section == 4{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell5")
            myCell?.textLabel?.text = square[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        }else if indexPath.section == 5{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell6")
            myCell?.textLabel?.text = clock[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        }else if indexPath.section == 6{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell7")
            myCell?.textLabel?.text = sports[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        }else {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell8")
            myCell?.textLabel?.text = weather[indexPath.row]
            myCell?.detailTextLabel?.text = "detail label :)"
            return myCell!
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
          return emojis.count
        } else if section == 1 {
            return plants.count
        }else if section == 2 {
            return flags.count
        }else if section == 3 {
            return symbols.count
        }else if section == 4 {
            return square.count
        }else if section == 5 {
            return clock.count
        } else if section == 6 {
            return sports.count
        }else if section == 7 {
            return weather.count
        } else {
            return transport.count
        }
    }
    
//optional Table View methoda
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let myCGFloat = CGFloat(40)
        return myCGFloat
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
           return "All around me are familiar faces"
        } else if section == 1 {
            return "Green Thumb"
        } else if section == 2 {
            return "All Around the world"
        }else if section == 3 {
            return "Hello"
        }else if section == 4 {
            return "Squares"
        }else if section == 5 {
            return "Tick, Tock, Goes the clock"
        }else if section == 6 {
            return "Sporty"
        } else {
            return "Moving and Grooving"
 
        }
    }
    //func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        //gives you the ability to resort rows
   // }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        let myCGFloat1 = CGFloat(30)
        return myCGFloat1
    }
    
    let emojis = ["😀","😁","😂","😃","😄","😅","😆","😇","😈","👿","😉","😊","☺️"]
    let plants = ["🌱","🌲","🌳","🌴","🌵","🌷","🌸","🌹","🌺","🌻","🌼","💐","🌾"]
    let flags = ["🇦🇺","🇦🇹","🇧🇪","🇧🇷","🇨🇦","🇨🇱","🇨🇳","🇨🇴","🇩🇰","🇫🇮","🇫🇷","🇩🇪","🇭🇰"]
    let symbols = ["🔏","🔐","🔒","🔓","📣","📢","🔈","🔉","🔊","🔇","💤","🔔","🔕"]
    let square = ["▶️","◀️","🔼","🔽","⏩","⏪","⏫","⏬","➡️","⬅️","⬆️","⬇️","↗️"]
    let clock = ["🕐","🕑","🕒","🕓","🕔","🕕","🕖","🕗","🕘","🕙","🕚","🕛","🕜"]
    let sports = ["🏃","🏃🏻","🏃🏼","🏃🏽","🏃🏾","🏃🏿","🚶","🚶🏻","🚶🏼","🚶🏽","🚶🏾","🚶🏿","💃"]
    let weather = ["⚡️","🔥","🌙","☀️","⛅️","☁️","💧","💦","☔️","💨","❄️","🌟","⭐️"]
    let transport = ["🎠","🎡","🎢","🚃","🚞","🚂","🚋","🚝","🚄","🚅","🚆","🚇","🚈"]
    let misc = ["⌚️","📱","📲","💻","⏰","⏳","⌛️","📷","📹","🎥","📺","📻","📟"]
    

}//end of view controller

