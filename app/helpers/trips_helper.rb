module TripsHelper
    def mortality_rate(trip)
      (trip.e_chick.to_f / trip.s_chick.to_f).round(2) * 100
    end

    def expense(trip)
      expense = (trip.trans.to_i + trip.labour.to_i + trip.other.to_i)
      expense.to_i
    end

    def net_profit(trip)
        net = trip.gross.to_i - expense(trip)
    end

end
