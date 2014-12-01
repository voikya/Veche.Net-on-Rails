module Government
  class WeatherGenerator
    require 'rubystats/normal_distribution'
    require 'solareventcalculator'

    attr_reader :date, :dst, :tz_offset
    TIMEZONE = "Europe/Moscow"
    STD_DEV = 2.0
    COORDINATES = {
      :novegrade => {latitude: 58.683333, longitude: 31.283333},
      :neugrade  => {latitude: 59.950000, longitude: 30.316667}
    }
    AVERAGE_TEMPERATURES = {
      :novegrade => {
        1 => -12..-6,
        2 => -12..-5,
        3 => -7..0,
        4 => 0..8,
        5 => 7..17,
        6 => 10..21,
        7 => 12..22,
        8 => 11..21,
        9 => 7..15,
        10 => 2..8,
        11 => -3..1,
        12 => -9..-3
      },
      :neugrade => {
        1 => -11..-5,
        2 => -10..-4,
        3 => -5..1,
        4 => 1..8,
        5 => 7..16,
        6 => 11..20,
        7 => 14..22,
        8 => 13..20,
        9 => 8..15,
        10 => 3..8,
        11 => -2..2,
        12 => -7..-2
      }
    }
    SEED_OFFSET = {novegrade: 0, neugrade: 1}

    def initialize
      @unzoned_date = DateTime.now
      @date = @unzoned_date.in_time_zone(TIMEZONE)
      @dst = ((4..10) === @date.month)
      @seed = @date.year * @date.month * @date.day
    end

    def tz_offset
      @dst ? 4 : 3
    end

    def for(location)
      srand (@seed + SEED_OFFSET[location])

      avg_high = AVERAGE_TEMPERATURES[location][@date.month].max
      avg_low = AVERAGE_TEMPERATURES[location][@date.month].min
      today_high = Rubystats::NormalDistribution.new(avg_high, STD_DEV).rng.round
      today_low = Rubystats::NormalDistribution.new(avg_low, STD_DEV).rng.round
      current_temp = calculate_current_temp(today_high, today_low)

      {
        :high => today_high,
        :low => today_low,
        :current => current_temp,
        :weather => current_weather(current_temp)
      }
    end

    def nighttime?(location)
      lat = COORDINATES[location][:latitude]
      lon = COORDINATES[location][:longitude]
      calculator = SolarEventCalculator.new(@unzoned_date, lat, lon)
      sunrise = calculator.compute_civil_sunrise(TIMEZONE)
      sunset = calculator.compute_civil_sunset(TIMEZONE)
      !(sunrise..sunset).cover?(@date) rescue false
    end

    def daytime?(location)
      !nighttime?(location)
    end

    private

    def calculate_current_temp(max, min)
      hour = @date.hour
      hourly_change = (max - min) / 12.0
      # Assume rising temperature from 0300-1500, falling from 1500-0300
      case hour
        when 3...15
          offset_from_min = hour - 3  # Positive
          offset_from_max = hour - 15 # Negative
        when 0...3
          offset_from_min = hour - 3  # Negative
          offset_from_max = (24 - 15) + hour # Positive
        else
          offset_from_min = (hour - 24) - 3 # Negative
          offset_from_max = hour - 15 # Positive
      end
      if offset_from_min >= 0
        current = (min + hourly_change * offset_from_min).round
      else
        current = (max - hourly_change * offset_from_max).round
      end

      if current != max && current != min
        current += Kernel.rand(-1..1)
      end

      current
    end

    def current_weather(temperature)
      case Kernel.rand(1..100)
        when (0..20)
          :clear
        when (20..50)
          :partly_cloudy
        when (50..65)
          :overcast
        when (65..85)
          temperature > 0 ? :light_rain : :snow
        when (85..95)
          temperature > 0 ? :rain : :snow
        else
          temperature > 0 ? :thunderstorms : :snow
      end
    end
  end
end
