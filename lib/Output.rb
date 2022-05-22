class Output

    #displays visual invoice; calculates total and subtotals
    def self.display(orders)
        puts ""
        puts "           Invoice:"
        puts "--------------------------------"
        totalPrice = 0
        orders.each { |order, filledFoodPacks|  #for each food type
            puts "#{order[1]} #{order[0]}s"
            subtotalPrice = 0
            filledFoodPacks.each { |pack, qty|      # for each pack
                if (qty == 0)
                    puts "ERROR: cannot fulfill order; unobtainable quantity"
                end
                puts "   - #{qty} x #{pack.qty} packs @ $#{pack.price}"
                subtotalPrice += qty*pack.price
            }
            totalPrice += subtotalPrice
            puts "                           $#{'%.2f' % subtotalPrice}"
        }
        puts "--------------------------------"
        puts "TOTAL                      $#{'%.2f' % totalPrice}"
    end
end