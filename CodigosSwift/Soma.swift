//Soma com entrada de dados
if let inputA = readLine(), let inputB = readLine(){
    if let A = Int(inputA), let B = Int(inputB){
        let SOMA = A + B

        print("SOMA = \(SOMA)")
    }
}

 class Soma{
 
    func calcula( a : Int, b : Int) -> Int{
       return a+b;
    }
    
    func calcula(a : Double, b: Double) -> Double{
        return a+b;
    }
    
    func calcula(a: String, b: String) -> String{
        return a+b;
    }
    
   
}

var calc = Soma();

print( calc.calcula( a:1 , b:1 ));

print( calc.calcula( a:2.0 , b:2.1 ));

print( calc.calcula( a:"vi" , b:"ram?" ));//concatena