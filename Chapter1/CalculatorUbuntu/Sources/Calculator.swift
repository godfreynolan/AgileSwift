class Calculator {
    
    init(){
        // do nothing
    }
    func add(_ a:Int, _ b:Int) -> Int {
        return a + b
    }
 
    func sub(_ a:Int, _ b:Int) -> Int {
        return a - b
    }
    
    func mul(_ a:Int, _ b:Int) -> Int {
        return a * b
    }

    func div(_ a:Int, _ b:Int) -> Int {
        //divide by zero
        if (b == 0) {
            return 9999
        }
        return a / b
    }   
}