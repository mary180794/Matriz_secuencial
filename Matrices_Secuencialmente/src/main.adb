with Ada.Text_IO,Ada.Integer_Text_IO; use Ada.Text_IO,Ada.Integer_Text_IO;

procedure Main is

   matrizA : array(1..500,1..500) of Integer;
   matrizB : array(1..500,1..500) of Integer;
   matrizC : array(1..500,1..500) of Integer;


   i ,j,k ,multi : Integer := 1 ;

begin
   for i in 1..500 loop
     for j in 1..500  loop
         matrizA(i,j) := 1;
          matrizB(i,j) := 1;
     end loop;
   end loop;

   for i in 1..500 loop
      for j in 1..500  loop
      matrizC(i,j) := 0;
      end loop;
     end loop;

   Put_Line("Matriz A");
     for i in 1..500 loop
     for j in 1..500  loop
         Put(matrizA(i,j));
      end loop;
      Put_Line("");
    end loop;

   Put_Line("Matriz B");
     for i in 1..500 loop
     for j in 1..500  loop
         Put(matrizB(i,j));
      end loop;
      Put_Line("");
     end loop;




   for i in 1..500 loop
     for j in 1..500 loop
         for k in 1..500  loop
     matrizC(i,j) := matrizC(i,j) +  matrizA(i,k) * matrizB(k,j);
         end loop;
      end loop;
   end loop;

   Put_Line("Matriz  C");
   for i in 1..500 loop
      for j in 1..500 loop
        Put(matrizC(i,j));
      end loop;
      Put_Line("");
   end loop;

    -- Put(" La multiplicacion es :");
  -- Put(matrizC(i,j));
end Main;
