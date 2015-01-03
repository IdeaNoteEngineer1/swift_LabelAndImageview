//
//  ViewController.swift
//  Swift_LabelAndImageView
//
//  Created by Junji on 2015/01/04.
//  Copyright (c) 2015年 Junji Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = makeLabel(CGPointMake(0, 20),text:"これはテストです。" ,font:UIFont.systemFontOfSize(24))
        self.view.addSubview(label)
        
        let imageView = makeImageView(CGRectMake(0, 70, 80, 80),image:UIImage(named:"sample.png")!)
        self.view.addSubview(imageView)
    }

    //ラベルの設定
    func makeLabel (pos:CGPoint , text:NSString , font:UIFont) ->UILabel
    {
        let label = UILabel()
        
        label.frame = CGRectMake(pos.x, pos.y, 9999, 9999)//領域
        label.text = text//テキスト
        label.font = font//フォント
        label.textAlignment = NSTextAlignment.Left//テキスト配置
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping//改行
        label.numberOfLines = 0//行数
        label.sizeToFit()//ラベルのサイズフィット
        return label
    }
    
    func makeImageView (frame:CGRect , image:UIImage) ->UIImageView
    {
        let imageView = UIImageView()
        imageView.frame = frame//領域
        imageView.image = image//イメージ
        return imageView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

