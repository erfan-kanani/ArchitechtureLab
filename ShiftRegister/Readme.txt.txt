making a global shift register which can shift data both left and rigt and also load data 
for making this shift register i used simple D-flip-flop 
our data must save into our D-flip-flops 
Each flip-flop has two wires one for inputs and the other for the output
we directly connect the outputs of each flipflip to the outputs of the shift-registers
inputOfDflipFlop is simply a wire which we can pass data to our flipflops and we use it to pass the data
from the shift-registers to the flipflops
 

the direction decides to shift left or right so if direction was 1 then shift-register shift to left
and if it bacomes 0 it shifts to the right 