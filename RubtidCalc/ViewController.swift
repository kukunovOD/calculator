import UIKit

class ViewController: UIViewController {
    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func inputNumber(sender: UIButton){
        if operand.isEmpty{
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }else{
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    
    @IBAction func clearAction(sender: UIButton){
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    
    @IBAction func inputOperand(sender: UIButton){
        operand = sender.titleLabel?.text as! String
    }
    
    @IBAction func resultAction(sender: UIButton){
        var result = 0.0
        
        switch operand{
        case "/":
            result = Double(numberOne)! / Double(numberTwo)!
        case "*":
            result = Double(numberOne)! * Double(numberTwo)!
        case "-":
            result = Double(numberOne)! - Double(numberTwo)!
        case "+":
            result = Double(numberOne)! + Double(numberTwo)!
        default:
            break
        }
        
        if result.truncatingRemainder(dividingBy: 1.0) == 00{
            resultLabel.text = String(Int(result))
        }else{
            resultLabel.text = String(result)
        }
    }
}
