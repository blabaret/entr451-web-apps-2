class DiceController < ApplicationController


    #def index
    # render the file in /views/dice/index.html.erb
    #end

    def index
        #die 1 = "something"
        @die1 = rand(1..6)
        @die2 = rand(1..6)
        @total = @die1 + @die2
    end

end
