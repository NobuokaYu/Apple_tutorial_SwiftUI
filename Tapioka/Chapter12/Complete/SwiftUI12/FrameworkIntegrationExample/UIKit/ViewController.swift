import UIKit

class ViewController: UIViewController,
    UICollectionViewDataSource,
    UICollectionViewDelegate,
    UICollectionViewDelegateFlowLayout
{
    let colors = [UIColor.red, UIColor.darkGray, UIColor.lightGray,
                  UIColor.gray, UIColor.green, UIColor.blue,
                  UIColor.cyan, UIColor.yellow, UIColor.magenta,
                  UIColor.orange, UIColor.purple, UIColor.brown]
    // collection viewのoutlet
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // レイアウトを調整
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15,
                                           bottom: 15, right: 15)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 180 // 表示するセルの数
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "Cell",
            for: indexPath)
        cell.backgroundColor = colors[Int.random(in: 0..<colors.count)]
        return cell
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let horizontalSpace : CGFloat = 20
        let cellSize : CGFloat
            = self.view.bounds.width / 3 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }

}

