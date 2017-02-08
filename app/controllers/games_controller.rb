class GamesController < ApplicationController

  def landing_page
    render("games/landing_page.html.erb")
  end

  def play_rock

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "you tied"
      @image = "fa fa-hand-rock-o fa-5x"
    elsif @computer_move == "paper"
      @outcome = "you lose"
      @image = "fa fa-hand-paper-o fa-5x"
    else
      @outcome = "you win"
      @image = "fa fa-hand-scissors-o fa-5x"
    end
    render("games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "you win"
    elsif @computer_move == "paper"
      @outcome = "you tied"
    else
      @outcome = "you lose"
    end
    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "you lose"
    elsif @computer_move == "paper"
      @outcome = "you win"
    else
      @outcome = "you tied"
    end
    render("games/play_scissors.html.erb")
  end
end
