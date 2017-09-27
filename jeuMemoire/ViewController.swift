import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var back_01: UIView!
    @IBOutlet weak var front_01: UIView!
    @IBOutlet weak var back_02: UIView!
    @IBOutlet weak var front_02: UIView!
    @IBOutlet weak var back_03: UIView!
    @IBOutlet weak var front_03: UIView!
    @IBOutlet weak var back_04: UIView!
    @IBOutlet weak var front_04: UIView!
    @IBOutlet weak var back_05: UIView!
    @IBOutlet weak var front_05: UIView!
    @IBOutlet weak var back_06: UIView!
    @IBOutlet weak var front_06: UIView!
    @IBOutlet weak var back_07: UIView!
    @IBOutlet weak var front_07: UIView!
    @IBOutlet weak var back_08: UIView!
    @IBOutlet weak var front_08: UIView!
    @IBOutlet weak var back_09: UIView!
    @IBOutlet weak var front_09: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
    @IBOutlet weak var back_17: UIView!
    @IBOutlet weak var front_17: UIView!
    @IBOutlet weak var back_18: UIView!
    @IBOutlet weak var front_18: UIView!
    @IBOutlet weak var back_19: UIView!
    @IBOutlet weak var front_19: UIView!
    @IBOutlet weak var back_20: UIView!
    @IBOutlet weak var front_20: UIView!
    
    @IBOutlet weak var imgView01: UIImageView!
    @IBOutlet weak var imgView02: UIImageView!
    @IBOutlet weak var imgView03: UIImageView!
    @IBOutlet weak var imgView04: UIImageView!
    @IBOutlet weak var imgView05: UIImageView!
    @IBOutlet weak var imgView06: UIImageView!
    @IBOutlet weak var imgView07: UIImageView!
    @IBOutlet weak var imgView08: UIImageView!
    @IBOutlet weak var imgView09: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    @IBOutlet weak var imgView17: UIImageView!
    @IBOutlet weak var imgView18: UIImageView!
    @IBOutlet weak var imgView19: UIImageView!
    @IBOutlet weak var imgView20: UIImageView!
    
    @IBOutlet weak var card_01: UIView!
    @IBOutlet weak var card_02: UIView!
    @IBOutlet weak var card_03: UIView!
    @IBOutlet weak var card_04: UIView!
    @IBOutlet weak var card_05: UIView!
    @IBOutlet weak var card_06: UIView!
    @IBOutlet weak var card_07: UIView!
    @IBOutlet weak var card_08: UIView!
    @IBOutlet weak var card_09: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    @IBOutlet weak var card_13: UIView!
    @IBOutlet weak var card_14: UIView!
    @IBOutlet weak var card_15: UIView!
    @IBOutlet weak var card_16: UIView!
    @IBOutlet weak var card_17: UIView!
    @IBOutlet weak var card_18: UIView!
    @IBOutlet weak var card_19: UIView!
    @IBOutlet weak var card_20: UIView!
    
    @IBOutlet weak var restartView: UIView!
    
    var arrayOfCardBack: [UIView]!
    var arrayOfCardFront: [UIView]!
    var arrayOfCard: [UIView]!
    
    var arrayOfImagesViews: [UIImageView]!
    var arrayOfAnimalNames: [String]!
    
    var arrayOfRandomAnimalNames = [String]()
    
    var arrayOfChosenCards = [String]()
    var arrayOfChosenViews = [UIView]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var arrayOfTotalCardsUsed = [UIView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //ARRAYS - CONTENTS
        
        arrayOfCardBack = [back_01, back_02, back_03, back_04, back_05, back_06, back_07, back_08, back_09, back_10, back_11, back_12, back_13, back_14, back_15, back_16, back_17, back_18, back_19, back_20]
        arrayOfCardFront = [front_01, front_02, front_03, front_04, front_05, front_06, front_07, front_08, front_09, front_10, front_11, front_12, front_13, front_14, front_15, front_16, front_17, front_18, front_19, front_20]
        arrayOfCard = [card_01, card_02, card_03, card_04, card_05, card_06, card_07, card_08, card_09, card_10, card_11, card_12, card_13, card_14, card_15, card_16, card_17, card_18, card_19, card_20]
        arrayOfImagesViews = [imgView01, imgView02, imgView03, imgView04, imgView05, imgView06, imgView07, imgView08,imgView09, imgView10, imgView11, imgView12, imgView13, imgView14, imgView15, imgView16, imgView17, imgView18, imgView19, imgView20]
        arrayOfAnimalNames = ["bee.png", "cat.png", "elephant.png", "giraffe.png", "goat.png", "hippo.png", "ladybug.png", "leopard.png", "lion.png", "tiger.png", "bee.png", "cat.png", "elephant.png", "giraffe.png", "goat.png", "hippo.png", "ladyBug.png", "leopard.png", "lion.png", "tiger.png"]
        
        //STARTS
        
        randomAnimalNames()
        setImagesToCard()
        
    }
    @IBAction func showCards(_ sender: UIButton) {
        
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        flipCard(from: arrayOfCardFront[sender.tag], to: arrayOfCardBack[sender.tag])
        arrayOfShowingBacks.append(arrayOfCardBack[sender.tag])
        arrayOfHidingFronts.append(arrayOfCardFront[sender.tag])
        arrayOfChosenCards.append(arrayOfRandomAnimalNames[sender.tag])
        arrayOfChosenViews.append(arrayOfCard[sender.tag])
        
        verification()
        
    }
    
    func flipCard (from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {from.isHidden = true})
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {to.isHidden = false})
    }
    
    func setImagesToCard() {
        var number = 0
        for imgView in arrayOfImagesViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: (#selector(reflip)), userInfo: nil, repeats: false)
        }
    }
    
    @objc func reflip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    
    func randomAnimalNames(){
        let numberOfAnimals = arrayOfAnimalNames.count
        
        for _ in 1...numberOfAnimals{
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    
    func verification() {
        if arrayOfChosenCards.count == 2 {
            if arrayOfChosenCards[0] == arrayOfChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 2, target: self, selector: (#selector(hideCards)), userInfo: nil, repeats: false)
            } else {
                arrayOfChosenViews = []
            }
            arrayOfChosenCards = []
        }
        resetCards()
    }
    
    @objc func hideCards() {
        arrayOfChosenViews[0].isHidden = true
        arrayOfChosenViews[1].isHidden = true
        arrayOfTotalCardsUsed.append(arrayOfChosenViews[0])
        arrayOfTotalCardsUsed.append(arrayOfChosenViews [1])
        arrayOfChosenViews = []
        if arrayOfTotalCardsUsed.count == 20 {
            restart()
        }
    }
    
    func restart() {
        arrayOfTotalCardsUsed = []
        restartView.isHidden = false
    }
    @IBAction func restartCards(_ sender: UIButton) {
        
        card_01.isHidden = false
        card_02.isHidden = false
        card_03.isHidden = false
        card_04.isHidden = false
        card_05.isHidden = false
        card_06.isHidden = false
        card_07.isHidden = false
        card_08.isHidden = false
        card_09.isHidden = false
        card_10.isHidden = false
        card_11.isHidden = false
        card_12.isHidden = false
        card_13.isHidden = false
        card_14.isHidden = false
        card_15.isHidden = false
        card_16.isHidden = false
        card_17.isHidden = false
        card_18.isHidden = false
        card_19.isHidden = false
        card_20.isHidden = false

        arrayOfAnimalNames = ["bee.png", "cat.png", "elephant.png", "giraffe.png", "goat.png", "hippo.png", "ladybug.png", "leopard.png", "lion.png", "tiger.png", "bee.png", "cat.png", "elephant.png", "giraffe.png", "goat.png", "hippo.png", "ladybug.png", "leopard.png", "lion.png", "tiger.png"]
        arrayOfRandomAnimalNames = []
        
        randomAnimalNames()
        setImagesToCard()
        
        restartView.isHidden = true
        
    }
}

