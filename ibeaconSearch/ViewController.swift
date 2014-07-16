//
//  ViewController.swift
//  ibeaconSearch
//
//  Created by gabriel arronte on 7/15/14.
//  Copyright (c) 2014 Make and Build. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var collectionView: UICollectionView
    var beacons: CLBeacon[]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView!) -> Int {
        return 1;
    }
    
    
    func collectionView(collectionView: UICollectionView!,
        numberOfItemsInSection section: Int) -> Int {
            if(self.beacons? != nil) {
                                return beacons!.count
                            } else {
                                return 0
                            }
    }
    
    func collectionView(collectionView: UICollectionView!,
        cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell!
    {
    var cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("StandardCellIdentifier", forIndexPath: indexPath) as UICollectionViewCell;
    return cell;
    }
//    func tableView(tableView: UITableView!,
//        numberOfRowsInSection section: Int) -> Int {
//            if(self.beacons? != nil) {
//                return beacons!.count
//            } else {
//                return 0
//            }
//    }
//    
//    func tableView(tableView: UITableView!,
//        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
//            var cell:UITableViewCell? =
//            tableView.dequeueReusableCellWithIdentifier("MyIdentifier") as? UITableViewCell
//            
//            if(cell == nil) {
//                cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyIdentifier")
//                cell!.selectionStyle = UITableViewCellSelectionStyle.None
//            }
//            
//            let beacon:CLBeacon = beacons![indexPath.row]
//            var proximityLabel:String! = ""
//            
//            switch beacon.proximity {
//            case CLProximity.Far:
//                proximityLabel = "Far"
//            case CLProximity.Near:
//                proximityLabel = "Near"
//            case CLProximity.Immediate:
//                proximityLabel = "Immediate"
//            case CLProximity.Unknown:
//                proximityLabel = "Unknown"
//            }
//            
//    
//            cell!.textLabel.text = proximityLabel
//            
//            let detailLabel:String = "Major: \(beacon.major.integerValue), " +
//                "Minor: \(beacon.minor.integerValue), " +
//                "RSSI: \(beacon.rssi as Int), " +
//            "UUID: \(beacon.proximityUUID.UUIDString)"
//            cell!.detailTextLabel.text = detailLabel
//            
//            return cell
//    }
//    
//    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
//        println("You selected cell #\(indexPath.row)!")
//    }
}

extension ViewController: UICollectionViewDelegate {
    
}
