class Cli
    attr_reader :user

    def welcome_menu
        puts "Welcome to Animal Party."
        puts "What is your name?"
        user_name = gets.chomp
        set_user(user_name)
    end

    def set_user(user_name)
        @user = User.new(user_name)
        game_start
    end

    def game_start
        puts "What is your favorite animal?"
        user_choice = gets.chomp.downcase
        animal_choices(user_choice)
    end

    def animal_choices(choice)
        if choice == 'cat'
            puts "Meow, meow #{user.name}"
        elsif choice == 'dog'
            puts "Woof woof #{user.name}"
        else
            puts "Not a good choice. Try again."
            game_start
        end
    end

    
end