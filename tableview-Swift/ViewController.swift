//
//  ViewController.swift
//  tableview-Swift
//
//  Created by 奥村 維敦 on 2015/03/11.
//  Copyright (c) 2015年 奥村 維敦. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //変数宣言
    var num :Int = 0
    @IBOutlet var tableview: UITableView!
    @IBOutlet var label: UILabel!
    @IBOutlet var btn: UIButton!
    
    @IBAction func plus() {
        num = num+1
        label.text = String(num)

    }
    
    
    /*いづちん流
    配列を作る。選手名鑑をイメージ
    //文字の配列
    //var playerName : [String] = [ "ますはら","まっすー","だいすけ"]
    //画像の配列
    //var playerImage : [UIImage] = [UIImage imageNamed"0.png","1.png","2.png"]
    */
    
    
    /*配列の宣言*/
    var playerName = Array<String>()
    var playerImage = Array<UIImage>()
    var playerNum = Array<Int>()
    //配列が来るよ、中身は<>これだよ。()で初期化
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource=self
        tableview.delegate=self
        //中身
        playerImage.append(UIImage(named: "0.png")!)
        playerImage.append(UIImage(named: "1.png")!)
        playerImage.append(UIImage(named: "2.png")!)
        playerImage.append(UIImage(named: "3.png")!)
        playerImage.append(UIImage(named: "0.png")!)
        playerImage.append(UIImage(named: "1.png")!)
        playerImage.append(UIImage(named: "2.png")!)
        playerImage.append(UIImage(named: "3.png")!)
        playerImage.append(UIImage(named: "0.png")!)
        playerImage.append(UIImage(named: "1.png")!)
        playerImage.append(UIImage(named: "2.png")!)
        playerImage.append(UIImage(named: "3.png")!)
        
        var label: UILabel!
        var btn: UIButton!

    
        
        
        
        /*
        playerName.append("まっすー")
        playerName.append("ますはら")
        playerName.append("だいすけ")
        */
        
        playerName = ["まっすー","だいすけ","ますはら","いづちん","まっすー","だいすけ","ますはら","いづちん","まっすー","だいすけ","ますはら","いづちん"]
        playerNum = [1,2,3,4,5,6,7,8,9,10,11,12]
        
        
        NSLog("画像の番号 == %@",playerNum)
        NSLog("画像の配列 == %@ \n名前の配列 ==  %@", playerImage, playerName)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITableViews Datasource Methods (Required)
    //行の数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        //numner of images,配列の数を数えて入れてくれる
        return playerImage.count
    }
    
    
    //行ごとになにるいれるのかここで設定
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // Cellの.を取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        //""のなかはセルのID
        
        // Cellに値を設定する.
        cell.textLabel!.text = "I am \(playerName[indexPath.row])"
        cell.imageView!.image=playerImage[indexPath.row]
        //cell.label!.text="hogehoge"
        
               return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        NSLog("%d",indexPath.row)
    }
    
    
}

