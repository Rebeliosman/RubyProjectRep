class Game
    def initialize(slovo)
      @letters = get_letters(slovo)
      @errors = 0
      @good_letters = []
      @bad_letters = []
      @status = 0
    end

    def get_letters(slovo)
      if (slovo == nil || slovo == "")
        abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
      end
      return slovo.split("")
    end

    def ask_next_letter
      puts "Введите следующую букву"
      letter = ""
        while letter == "" do
          letter = STDIN.gets.encode("UTF-8").chomp
        end
        next_step(letter)
    end

    def next_step(bukva)
      if @status == -1 || @status == 1
        return
      end

      if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
        return
      end

      if @letters.include? bukva
        @good_letters << bukva

        if @good_letters.uniq.sort == @letters.uniq.sort
          @status = 1
        end
      else
        @bad_letters << bukva
        @errors += 1

        if @errors >= 7
          @status = -1
        end
      end
    end
    def status
      return @status
    end

    def errors
      return @errors
    end

    def letters
      return @letters
    end

    def good_letters
      return @good_letters
    end

    def bad_letters
      return @bad_letters
    end

end
