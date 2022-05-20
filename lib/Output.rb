class Output

    def self.display(invoice)
        puts " Invoice:"
        puts "--------------------------------"
        totalPrice = 0
        invoice.each { |foodOrder, packHash|
            puts "#{foodOrder.qty} #{foodOrder.name}"
            foodItemTotalPrice = 0
            packHash.each { |pack, qty|
                puts "   - #{qty} x #{pack.qty} @ $#{pack.price}"
                foodItemTotalPrice += qty*pack.qty*pack.price
                totalPrice += foodItemTotalPrice
            }
            puts "                    $#{'%.2f' % foodItemTotalPrice}"
        }
        puts "--------------------------------"
        puts "TOTAL               $#{'%.2f' % totalPrice}"
    end

end