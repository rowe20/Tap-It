//
//  ViewController.swift
//  Tap_It
//
//  Created by MacBook Pro on 02/07/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var timeleft = 30
    var score = 0
    var name:String = ""
    private var timer = Timer()
    
    private let view1 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 50, y: view.safeAreaInsets.top + 70, width: 80, height: 80)
        return view
    }()
    private let view2 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 150, y: view.safeAreaInsets.top + 70, width: 80, height: 80)
        return view
    }()
    private let view3 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 250, y: view.safeAreaInsets.top + 70, width: 80, height: 80)
        return view
    }()
    private let view4 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 50, y:170, width: 80, height: 80)
        return view
    }()
    private let view5 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 150, y: 170, width: 80, height: 80)
        return view
    }()
    private let view6 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 250, y: 170, width: 80, height: 80)
        return view
    }()
    private let view7 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 50, y: 270, width: 80, height: 80)
        return view
    }()
    private let view8 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 150, y: 270, width: 80, height: 80)
        return view
    }()
    private let view9 : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.frame = CGRect(x: 250, y: 270, width: 80, height: 80)
        return view
    }()
    
    private let timerlabel : UILabel = {
       let label = UILabel()
        label.text = "30"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.frame = CGRect(x: 180, y: 350, width: 80, height: 50)
        return label
    }()
    
    private let timertxt : UILabel = {
       let label = UILabel()
        label.text = "Timer"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 15)
        label.frame = CGRect(x: 170, y: 370, width: 80, height: 50)
        return label
    }()
    
    
    private let Scorelabel : UILabel = {
       let label = UILabel()
        label.text = "Score"
        label.isHidden = true
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        label.frame = CGRect(x: 150, y: 450, width: 80, height: 50)
        return label
    }()
    
    private let Score : UILabel = {
       let label = UILabel()
        label.text = "0"
        label.isHidden = true
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 25)
        label.frame = CGRect(x: 175, y: 500, width: 80, height: 50)
        return label
    }()
    
    private let Title : UILabel = {
       let label = UILabel()
        label.text = "Tap It"
        label.textColor = .brown
        label.font = .boldSystemFont(ofSize: 35)
        label.frame = CGRect(x: 140, y: 600, width: 120, height: 50)
        return label
    }()
    
    
    private let btn : UIButton = {
        let btn = UIButton()
        btn.setTitle("Start", for:.normal)
        btn.layer.cornerRadius = 30
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(starttimer), for: .touchUpInside)
        btn.frame = CGRect(x: 130, y: 410, width: 120, height: 60)
        return btn
        
    }()
    
    @objc private func starttimer()
    {
        btn.isHidden = true
        myTextView.isHidden = true
        Scorelabel.isHidden = false
        Score.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Timerstart), userInfo: .none, repeats: true)
        
    }
    
    private let myTextView : UITextView = {
        
        let textView = UITextView()
        textView.text = "Tap On The Highlighted Brown Box To Earn 10 Points, Tap Within The Stipulated Time, Click On Start To Begin"
        textView.textAlignment = .center
        textView.backgroundColor = .clear
        textView.textColor = .blue
        textView.frame = CGRect(x: 65, y: 490, width: 250, height: 100)
        textView.font = .boldSystemFont(ofSize: 15)
        textView.isEditable = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        self.view.backgroundColor = .white
        view.addSubview(Scorelabel)
        view.addSubview(Score)
        view.addSubview(timerlabel)
        view.addSubview(timertxt)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        view.addSubview(view9)
        view.addSubview(btn)
        view.addSubview(myTextView)
        view.addSubview(Title)
        
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(didtapview))
        tapgesture.numberOfTapsRequired = 1
        tapgesture.numberOfTouchesRequired = 1
        
        let tapgesture2 = UITapGestureRecognizer(target: self, action: #selector(didtapview2))
        tapgesture2.numberOfTapsRequired = 1
        tapgesture2.numberOfTouchesRequired = 1
        
        let tapgesture3 = UITapGestureRecognizer(target: self, action: #selector(didtapview3))
        tapgesture3.numberOfTapsRequired = 1
        tapgesture3.numberOfTouchesRequired = 1
        
        let tapgesture4 = UITapGestureRecognizer(target: self, action: #selector(didtapview4))
        tapgesture4.numberOfTapsRequired = 1
        tapgesture4.numberOfTouchesRequired = 1
        
        let tapgesture5 = UITapGestureRecognizer(target: self, action: #selector(didtapview5))
        tapgesture5.numberOfTapsRequired = 1
        tapgesture5.numberOfTouchesRequired = 1
        
        let tapgesture6 = UITapGestureRecognizer(target: self, action: #selector(didtapview6))
        tapgesture6.numberOfTapsRequired = 1
        tapgesture6.numberOfTouchesRequired = 1
        
        let tapgesture7 = UITapGestureRecognizer(target: self, action: #selector(didtapview7))
        tapgesture7.numberOfTapsRequired = 1
        tapgesture7.numberOfTouchesRequired = 1
        
        let tapgesture8 = UITapGestureRecognizer(target: self, action: #selector(didtapview8))
        tapgesture8.numberOfTapsRequired = 1
        tapgesture8.numberOfTouchesRequired = 1
        
        let tapgesture9 = UITapGestureRecognizer(target: self, action: #selector(didtapview9))
        tapgesture9.numberOfTapsRequired = 1
        tapgesture9.numberOfTouchesRequired = 1
        view1.addGestureRecognizer(tapgesture)
        view2.addGestureRecognizer(tapgesture2)
        view3.addGestureRecognizer(tapgesture3)
        view4.addGestureRecognizer(tapgesture4)
        view5.addGestureRecognizer(tapgesture5)
        view6.addGestureRecognizer(tapgesture6)
        view7.addGestureRecognizer(tapgesture7)
        view8.addGestureRecognizer(tapgesture8)
        view9.addGestureRecognizer(tapgesture9)
        
        // Do any additional setup after loading the view.
    }
}
extension ViewController{
    
    @objc private func didtapview(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view1.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    
    @objc private func didtapview2(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view2.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview3(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view3.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    @objc private func didtapview4(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view4.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview5(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view5.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview6(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view6.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview7(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view7.backgroundColor!.isEqual(UIColor.brown))
        {
            print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview8(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view8.backgroundColor!.isEqual(UIColor.brown))
        {
            //print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            //print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapview9(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        //print(sender)
        if(self.view9.backgroundColor!.isEqual(UIColor.brown))
        {
            //print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            //print("No")
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    
    
    
    @objc private func Timerstart(){
        //print("timer Fired")
        self.timeleft -= 1
        self.timerlabel.text = String(self.timeleft)
        //print(self.timeleft)
        
        //calling random number
        let randomInt = Int.random(in: 1..<10)
        //print(randomInt)
        if( randomInt == 1)
        {
            view1.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
            
        }
        else if(randomInt == 2)
        {
            view2.backgroundColor = .brown
            view1.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 3)
        {
            view3.backgroundColor = .brown
            view2.backgroundColor = .black
            view1.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 4)
        {
            view4.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view1.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 5)
        {
            view5.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view1.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 6)
        {
            view6.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view1.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 7)
        {
            view7.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view1.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 8)
        {
            view8.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view1.backgroundColor = .black
            view9.backgroundColor = .black
        }
        else if(randomInt == 9)
        {
            view9.backgroundColor = .brown
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view1.backgroundColor = .black
        }
        
        if(self.timeleft==0){
            timer.invalidate()
            view1.backgroundColor = .black
            view2.backgroundColor = .black
            view3.backgroundColor = .black
            view4.backgroundColor = .black
            view5.backgroundColor = .black
            view6.backgroundColor = .black
            view7.backgroundColor = .black
            view8.backgroundColor = .black
            view9.backgroundColor = .black
            
            let alert = UIAlertController(title: "Congralutions Your Score Is \(score)", message: "Please Enter Your Name", preferredStyle: .alert)
            alert.addTextField { (tf) in tf.placeholder = "Enter Your Name"}
            
            let action = UIAlertAction(title: "submit", style: .default) { (_) in
                self.name = (alert.textFields?.first?.text)!
                UserDefaults.standard.setValue("applePhone123", forKey: "UserToken")
                UserDefaults.standard.setValue(self.name, forKey: "Name")
                UserDefaults.standard.setValue(self.score, forKey: "Score")
                let vc = ScoreBoardVC()
                self.navigationController?.pushViewController(vc, animated: true)
   
            }
            alert.addAction(action)
            present(alert , animated: true , completion: nil)
        }
    }
}

