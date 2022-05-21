class Output

    def self.display(orders)
        puts ""
        puts "           Invoice:"
        puts "--------------------------------"
        totalPrice = 0
        i = 0
        orders.each { |order, filledFoodPacks|  #for each food type
            puts "#{order[1]} #{order[0]}s"
            subtotalPrice = 0
            filledFoodPacks.each { |pack, qty|      # for each pack
                puts "   - #{qty} x #{pack.qty} packs @ $#{pack.price}"
                subtotalPrice += qty*pack.price
                totalPrice += subtotalPrice
            }
            puts "                           $#{'%.2f' % subtotalPrice}"
            i += 1
        }
        puts "--------------------------------"
        puts "TOTAL                      $#{'%.2f' % totalPrice}"
    end
end