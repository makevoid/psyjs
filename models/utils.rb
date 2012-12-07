# encoding: utf-8

require 'date'

class Date

  WDAYS_ITA = %w(domenica lunedì martedì mercoledì giovedì venerdì sabato)
  MONTHS_ITA = %w(gennaio febbraio marzo aprile maggio giugno luglio agosto settembre ottobre novembre dicembre)


  TMP_YEAR = 1904

  @@base = {
    "Primavera"   => Date.new(TMP_YEAR, 3, 20),
    "Estate"      => Date.new(TMP_YEAR, 6, 21),
    "Autunno"     => Date.new(TMP_YEAR, 9, 22),
    "Inverno"     => Date.new(TMP_YEAR, 12, 21)
  }

  @@seasons = {
    "Primavera"   => (@@base["Primavera"]..@@base["Estate"]-1),
    "Estate"      => (@@base["Estate"]..@@base["Autunno"]-1),
    "Autunno"     => (@@base["Autunno"]..@@base["Inverno"]-1),
    "Inverno"     => (@@base["Inverno"]..Date.new(TMP_YEAR+1, 3, 20)),
  }

  def season
    date = Date.new TMP_YEAR, self.month, self.day

    season = @@seasons.find do |name, range|
      range.include? date
    end

    season ? season.first : "Inverno"
  end

end