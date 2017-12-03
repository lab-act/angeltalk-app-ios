//
//  CategoryListViewControllerswift
//  AngelTalkIOS
//
//  Created by 신황규_23234_솔루션개발그룹_Gerard on 2/10/17.
//  Copyright © 2017 sds. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet var collectionView: UICollectionView!
    var galleryItemSize: CGSize!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initGalleryItems()
        collectionView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIGraphicsBeginImageContext(self.view.frame.size);
        let image = UIImage(named: "color_grey.png")
        image?.draw(in: self.view.bounds)
        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        self.view.backgroundColor = UIColor(patternImage: backgroundImage!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var galleryItems: [GalleryItem] = [] // NEW PROPERTY
    
    fileprivate func initGalleryItems() {
        
        
        let galleryItemWidthHeight = self.view.frame.size.width/2.25
        galleryItemSize = CGSize(width: galleryItemWidthHeight, height: galleryItemWidthHeight)
        
        var items = [GalleryItem]()
        let inputFile = Bundle.main.path(forResource: "items", ofType: "plist")
        
        let inputDataArray = NSArray(contentsOfFile: inputFile!)
        
        for inputItem in inputDataArray as! [Dictionary<String, String>] {
            let galleryItem = GalleryItem(dataDictionary: inputItem)
            items.append(galleryItem)
        }
        
        galleryItems = items
    }
    
    // MARK: - UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryItems.count
    }
    
    
    // making cells
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryItemCollectionViewCell", for: indexPath) as! GalleryItemCollectionViewCell
        
        cell.setGalleryItem(galleryItems[indexPath.row])
        
        UIGraphicsBeginImageContext(galleryItemSize);
        let image = UIImage(named: galleryItems[indexPath.row].itemBackground)
        image?.draw(in: cell.bounds)
        
        let cellImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        cell.backgroundColor = UIColor(patternImage: cellImage!)
        //                cell.backgroundColor = UIColor.yellow
        //        cell.layer.cornerRadius = 15
        //        cell.layer.masksToBounds = true
        
        return cell
        
    }
    
    //        // comment view
    //        func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    //
    //            let commentView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "GalleryItemCommentView", for: indexPath) as! GalleryItemCommentView
    //
    //            commentView.commentLabel.text = NSLocalizedString("angeltalk", comment: "")
    //
    //            return commentView
    //        }
    
    
    // cell selection!!!
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         /*
        let cardPageViewController = storyboard?.instantiateViewController(withIdentifier: "CardPageViewStoryboard") as! CardPageViewController
        cardPageViewController.categoryColor = "Red"
        navigationController?.pushViewController(cardPageViewController, animated: true)
   */
        
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CardPageViewStoryboard" {
            print("hey")
        }
    }
    */
    
    //cell size change!
    
    // MARK: - UICollectionViewFlowLayout
    //
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return galleryItemSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //        let leftRightInset = self.view.frame.size.height / 9
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
}
