class Raven

  @@tests = []

  def self.tests
    @@tests
  end

  def self.size
    @@tests.size
  end

  def self.check(answers)
    points = 0
    answers.each do |idx, value|
      points += 1 if @@tests[idx][:right] == value
    end
    points
  end

  def self.generate
    @@tests = []
    dirs = Dir.glob "#{PATH}/public/img/raven/*"
    dirs.each_with_index do |dir, idx|

      cases_files   = Dir.glob "#{dir}/cases/*.png"
      answers_files = Dir.glob "#{dir}/answers/*.png"
      right_file    = Dir.glob "#{dir}/answers/*_v.png"

      cases = cases_files.size
      answers = answers_files.size
      right = answers_files.index right_file.first

      test = { number: idx+1, answers: answers, cases: cases, right: right }

      @@tests << test
    end
  end

end