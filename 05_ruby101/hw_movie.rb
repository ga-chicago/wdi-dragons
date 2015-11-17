class Movie
  def initialize(*args)
    @title = args[0]
    if args.length > 1
      @include_year = true
      @year = args[1]
    end
  end

  #setter
  def set_title(title)
    @title = title
  end
  #getter
  def get_title
    @title
  end

  #setter
  def set_year(year)
    @year = year
  end
  #getter
  def get_year
    @year
  end

  #setter
  def set_include_year(include_year)
    @include_year = include_year
  end
  #getter
  def get_include_year
    @include_year
  end

  def full_title
    if @include_year
      return "#{@title}, released in #{@year}"
    else
      return @title
    end
  end
end
