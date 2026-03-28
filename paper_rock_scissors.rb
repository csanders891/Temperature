paperRockScissors = Array.new
paperRockScissors = ["Paper", "Rock", "Scissors"]        

 points = 10
 playerScore = 0
 computerScore = 0

while computerScore >= playerScore
    points.times do
        pp "Paper, Rock, or Scissors"
        pp "1. Paper"
        pp "2. Rock"
        pp "3. Scissors"

        #choose paper, rock, or scissors
        selection = gets.chomp.to_i

        while selection < 1 || selection > 3
            pp "Invalid entry.  Try again"
            pp "Paper, Rock, or Scissors"
            pp "1. Paper"
            pp "2. Rock"
            pp "3. Scissors"

            selection = gets.chomp.to_i
        end

        if selection == 1
            playerSelection = "Paper"
        
        elsif selection == 2
            playerSelection = "Rock"
        
        elsif selection == 3
            playerSelection = "Scissors"
        end
        
        pp "You chose: " + playerSelection

        computerSelection = paperRockScissors.sample

        pp "The computer chose: " + computerSelection

        #you pick paper
        if playerSelection == "Paper" 
            if computerSelection == "Rock"
                pp "Paper covers rock"
                pp "You get a point"
                playerScore = playerScore + 1
            
            elsif
                computerSelection == "Scissors"
                pp "Scissors cuts paper"
                pp "The computer gets a point"
                computerScore = computerScore + 1
            
            else
                pp "No score"
            end
        
        #you pick rock
        elsif playerSelection == "Rock"
            if computerSelection == "Paper"
                pp "Paper covers rock"
                pp "The computer gets a point"
                computerScore = computerScore + 1

            elsif computerSelection == "Scissors"
                pp "Rock smashes scissors"
                pp "You get a point"
                playerScore = playerScore + 1
            
            else
                pp "No score"
            end

        #you pick scissors
        else 
            playerSelection == "Scissors"
            if computerSelection == "Paper"
                pp "Scissors cuts paper"
                pp "You get a point"
                playerScore = playerScore + 1
            
            elsif computerSelection == "Rock"
                pp "Rock smashes scissors"
                pp "The computer gets a point"
            computerScore = computerScore + 1
            
            else
                pp "No score"
            end
        end
    end

    #talling the scores
    pp "Your score: " + playerScore.to_s
    pp "The Computer's score: " + computerScore.to_s
    
    #you win
    if playerScore > computerScore
        pp "Congratulations!!!!! You win"
    
    #you lose
    elsif playerScore < computerScore
        pp "You lose"
        pp "1. Continue"
        pp "2. End"
        choice = gets.chomp.to_i
        while choice < 1 || choice > 2
            pp "Invalid entry.  Try again"
            choice = gets.chomp.to_i
        end

        if choice == 2
            pp "Game Over"
            break
        end


        pp "Resetting the scores...."      
        playerScore = 0
        computerScore = 0
        points = 10

    #we have a tie
    else 
        playerScore == computerScore
        pp "We have a tie"
        pp "Let's break that tie"
        pp "Next point wins"  
        if points == 10
            points = 1
        end    
    end
end
