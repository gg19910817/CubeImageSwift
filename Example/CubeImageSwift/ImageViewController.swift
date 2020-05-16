//
//  ImageViewController.swift
//  CubeImageSwift_Example
//
//  Created by gg19910817 on 2020/5/15.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

/*
 Tips: 图片基础
 1. 静态图分类：（矢量图Vector，位图Bitmap（也叫做栅格图像））
    矢量图：以数学和几何中的公式表达图像。
    位图：根据颜色和灰度级分为（二值，灰度，索引和RGB彩色）图像。
        二值：每个像素点为0或者1
        灰度：每个像素介于黑色和白色之间的256种灰度（恰好8个bit能表示）
        索引：包含数据矩阵和一个颜色索引矩阵（数据矩阵与颜色索引矩阵1对1）
            例如，数据值域一般为[0,255]，索引矩阵大小为256*3。
            如果数据为64，此时取索引矩阵的第64行为目标颜色。
            一般存储颜色简单的图片，这里最多256种颜色。（图片也小的多）
        RGB：又称为真彩图片
            三原色的值，直接存储在数据中，不需要索引。（读取速度比索引的快）
            每个像素点都需要三个分量RGB表示，所以M行N列的图片，需要M*N*3 Byte表示
            
 2. 图像格式：
    BMP：无压缩，可选深度，深度代表的是（颜色区间，24bit就是上面说的真彩色）
        真彩图片，实际上需要M*N*4，因为BMP4字节对齐问题
    JPG：新版的JPEG2000 支持 有损和无损，网络传输可以按块传输。即便是无损压缩，图片也会比位图小。
    PNG：无损压缩，支持Alpha通道，网络传输流式，会先获得一个模糊的图，然后再清晰。
    
 */

import UIKit

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "superman", ofType: "bmp")
        let url = URL(fileURLWithPath: path!)
        let data1 = try! Data(contentsOf: url)
        let data2 = try! Data(contentsOf: url)
        let data3 = try! Data(contentsOf: url)
        
    }
    
}
