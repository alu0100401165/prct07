require "lib/frac_main.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(6,9)
    @f2 = Fraccion.new(7,9)
  end
describe "Racional" do
  
  it "Debe existir un numerador" do
    @f1.n.class.should eq(Fixnum)
  end
  
    it "Debe existir un denominador" do
       @f1.d.class.should eq(Fixnum)
  end
  
     it "Debe de estar en su forma reducida" do
       (@f1.n.should eq(2)) && (@f1.d.should eq(3))
   end
  
     it "Se debe invocar al metodo num() para obtener el numerador" do
       @f1.num.should eq(2)
   end
  
     it "Se debe invocar al metodo denom() para obtener el numerador" do
       @f1.denom.should eq(3)
   end
  
     it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
       @f1.to_s.should eq("2/3")
   end
  
    it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
       puts %Q(#{@f1.num}/#{@f1.denom}).should eq("2/3")
   end
  
     it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
       puts %Q(#{@f1.num}/#{@f1.denom}).should eq("2/3")
   end
  
     it "Se debe mostar por la consola la fraccion en formato flotante" do
       puts %Q(#{@f1.num/@f1.denom.to_f}).should eq("0.666666666666667")
   end
  
     it "Se debe comparar si dos fracciones son iguales con ==" do
           (@f1 == @f1).should eq(true)
	   
    end
    
     it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
            f3=@f1.abs
            f3.to_s.should eq("2/3")
	   
    end

     it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
            f3=@f1.reciprocal
            f3.to_s.should eq("3/2")
	   
     end

     it "Se debe calcular el opuesto de una fraccion con -" do
            f3=-@f1
            f3.to_s.should eq("-2/3")
	   
     end 
     
          it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
            f3 = @f1 + @f1
            f3.to_s.should eq("4/3")
	   
     end 
     
         it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
            f3 = @f2 - @f1
            f3.to_s.should eq("1/9")
	   
     end 
    
     
         it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
            f3 = @f2 * @f1
            f3.to_s.should eq("14/27")
	   
     end
     
        it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
            f3 = @f2 / @f1
            f3.to_s.should eq("7/6")
	   
     end 
     
         it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
            f3 = @f1 % @f2
            f3.to_s.should eq("2/7")
	   
     end 
     
     
       it "Se debe de poder comprobar si una fracion es menor que otra" do
           (@f1 < @f2).should eq(true)
	   
       end
       
       it "Se debe de poder comprobar si una fracion es mayor que otra" do
           (@f2 > @f1).should eq(true)
	   
       end
       
       it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
           (@f1 <= @f1).should eq(true)
	   
       end
       
        it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
           (@f2 >= @f1).should eq(true)
	   
       end
  end
end