fprintf("**********   AUDIO OPERATIONS **********")
fprintf("\n**************** MENU ****************")
l=1;
while l < 8;
    l=l+1;
fprintf("\n1. Orignal Audio")
fprintf("\n2. Speed 2X ")
fprintf("\n3. Speed 0.5 X")
fprintf("\n4. Add Eco")
fprintf("\n5. Remove Eco")
fprintf("\n6. Exit")
n = input( '\n  SELECT OPTION: ');
[y, Fs] = audioread('file_example_OOG_1MG.ogg');
switch n
         case 1
              p=1;
              while p < 5;
                  p=p+1;
                  fprintf("\nOrignal Audio")
                  fprintf("\n1.PLAY")
                  fprintf("\n2.STOP")
                  fprintf("\n3.RETURN")
                  m = input('\n   SELECT OPTION: ');
                  switch m
                      case 1
                      sound(y, Fs, 16);
                      case 2
                      clear sound;
                      case 3
                      p=6;
                      
                  end
              end
         case 2
             q=1;
              while q < 5;
                  q=q+1;
                  fprintf("\n  Speed 2X  ")
                  fprintf("\n1.PLAY")
                  fprintf("\n2.STOP")
                  fprintf("\n3.RETURN")
                  a = input('\n   SELECT OPTION: ');
                  switch a
                     case 1
                     F1 = Fs*2;
                     soundsc(y,F1);
                     sound(y,F1,16);
                     case 2
                     clear sound;
                     case 3
                     q=6;
                     end
             end
         case 3
             w=1;
              while w < 5;
                  w=w+1;
                  fprintf("\n  Speed 0.5X  ")
                  fprintf("\n1.PLAY")
                  fprintf("\n2.STOP")
                  fprintf("\n3.RETURN")
                  b = input('\n   SELECT OPTION: ');
                  switch b
                     case 1
                     F2 = Fs*0.5;
                     soundsc(y,F2);
                     sound(y,F2,16);
                     
                     case 2
                     clear sound;
                     case 3
                     w=6;
                     end
             end
            
         case 4
             j=1;
              while j <5;
                  j=j+1;
                  fprintf("\n  Adding Eco...  ")
                  fprintf("\n1.PLAY")
                  fprintf("\n2.STOP")
                  fprintf("\n3.RETURN")
                  b = input('\n   SELECT OPTION: ');
                  switch b
                   
                      case 1
                      num=[1,zeros(1,10),0.8];        
                      den=[1];
                      x=filter(num,den,y);
                      p=audioplayer(x,Fs);
                      play(p);
                      case 2
                      stop(p);
                      case 3
                      stop(p);
                      j=6;
                      end
             end
            
         case 5
             w=1;
              while w < 5;
                  w=w+1;
                  fprintf("\n  Removing Eco....  ")
                  fprintf("\n1.PLAY")
                  fprintf("\n2.STOP")
                  fprintf("\n3.RETURN")
                  d = input('\n   SELECT OPTION: ');
                  switch d;
                      case 1
                      den=[1,zeros(1,10),0.8];
                      num=[1];
                      r=filter(num,den,y);
                      p=audioplayer(r,Fs);
                      play(p);
                      case 2
                      stop(p);
                      case 3
                      stop(p);
                      w=6;
                  end
             end
         case 6
             fprintf("Exiting")
             l=9;
         end
end                   
