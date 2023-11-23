import Foundation
struct QuizBrain{
    let mathQuestions = [
        Question(text: "The square root of 16 is 4.", answer: "True"),
        Question(text: "The sum of angles in a triangle is 180 degrees.", answer: "True"),
        Question(text: "3 multiplied by 5 is equal to 15.", answer: "True"),
        Question(text: "Pi (π) is a rational number.", answer: "False"),
        Question(text: "A prime number is divisible by 1 and itself only.", answer: "True"),
        Question(text: "The area of a square is equal to the length of its side squared.", answer: "True"),
        Question(text: "Adding two even numbers always results in an even number.", answer: "True"),
        Question(text: "Any number raised to the power of 0 is 1.", answer: "True"),
        Question(text: "The circumference of a circle is equal to twice its radius.", answer: "False"),
        Question(text: "In a right-angled triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides.", answer: "True")
    ]
    var questionNumber=0;
    var score=0;
    mutating func checkAnswer(_ userAnswer:String)->Bool{
        if(userAnswer==mathQuestions[questionNumber].answer){
            score+=1
            return true
        }
        else{
            return false
        }
    }
    func getQuestionText()->String{
        return mathQuestions[questionNumber].text
    }
    func getProgress()->Float{
        return Float(questionNumber+1)/Float(mathQuestions.count)
    }
    mutating func nextQuestion(){
        if(questionNumber + 1 < mathQuestions.count){
            questionNumber+=1
        }
        else{questionNumber = 0}
    }
    func getScore()->Int{
        return score
    }
}
