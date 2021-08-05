module TripsHelper
    def mortality_rate(trip)
      (trip.e_chick.to_f / trip.s_chick.to_f).round(2) * 100
    end

    def net_profit(trip)
        expense = (trip.trans.to_i + trip.labour.to_i + trip.other.to_i)
        puts "--------------------- #{trip.trans.to_i} -------------------"
        puts "--------------------- #{trip.labour.to_i} -------------------"
        puts "--------------------- #{trip.other.to_i} -------------------"
        puts "--------------------- #{expense.to_i} -------------------"


        net = trip.gross.to_i - expense.to_i
    end
end
