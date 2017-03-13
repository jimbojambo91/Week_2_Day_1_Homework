class CodeclanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    
  end

  def return_name
    return @name
  end

  def return_cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "I can talk"
  end

  def favourite_language(language)
    return "I love #{language}!"
  end


end