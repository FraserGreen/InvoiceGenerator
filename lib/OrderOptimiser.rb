class OrderOptimiser

    # Passes orders to minCostOrder to get packs and returns hash of all optimised orders
    # in the format {item1 => packs, item 2 => packs}
    def self.optimise(items)

        orders = {}
        items.to_a.each_index { |i|
            foodPacks = AvailableFood.packs[items.keys[i]] # get all available packs, replace 0 with varaible
            bestpacks = getMinCostOrder(foodPacks, items.values[i])
            if (bestpacks == nil)
                # if given quantity is unable to be filfilled, gives a pack with 0 quantity.
                orders[items.to_a[i]] = {foodPacks[0] => 0}
            else
                orders[items.to_a[i]]  = bestpacks
            end
        }
        return orders 
    end

    # returns a hash of the packs chosen in the form {pack1 => qty, pack2 => qty , ...} 
    # such that the total cost is minimised, and given item quantity is fulfilled.
    def self.getMinCostOrder(packs, totalqty)
        weights = []
        values = []
        best = 0
        output = {}

        packs.each {|pack|
            weights << pack.qty
            values << pack.price
        }
        indices =  OrderOptimiser.sumSubset(weights, totalqty, values, [])
        copy = indices
        valuestotal = []
        indices.each {|subarray|
            indicesvalues = []
            subarray.length.times {|i|
                indicesvalues[i] = values[subarray[i]]
            }
            valuestotal << indicesvalues.sum 
        }
        best = valuestotal.index(valuestotal.min)

        if (best == nil)
            return nil
        end
        copy[best].each {|ind|
            if output[packs[ind]] == nil
                output[packs[ind]] = 1
            else
            output[packs[ind]] = output[packs[ind]]+1
            end
        }
        return output

    end

    # returns arrays of packs we can complete order with
    # for example, if you wanted 10 watermelons, it would return [[1,1]],
    # each number is the pack index:
    # [[pack[1],pack[1]]
    # pack[1] is the 5 pack @ $6.99
    # therefore we need 2 x 5 packs @ $5.99 to fulfill an order of 10 watermelons.
    #
    # NOTE: this method does not find the optimal selection of pack, just all possible packs combinations
    #       that can fill the order. Optimal selection is done in getMinCostOrder()
    def self.sumSubset(quantities, totalqty, values, array, partial = [])
        s = 0
        partial.length.times{ |i|
            s+= quantities[partial[i]]
        }
    
        # check if the partial sum is equals to totalqty
        if s == totalqty  
            array << partial
        end
        if s >= totalqty 
            return array # if we reach the number why bother to continue
        end
        
        for i in (0..quantities.length()-1) 
            n = i
            sumSubset(quantities, totalqty, values, array, partial + [n])
        end
        return array
    end

    # def OptimiseKnapsack(items)
    #     orders = {}
    #     inf = 2147483647

        
    #     items.to_a.each_index { |i|
    #         # filledFoodPacks = {}
    #         # foodPacks = AvailableFood.packs[items.keys[i]] # get all available packs, replace 0 with varaible
    #         # filledFoodPacks[foodPacks[0]] = 1 #todo change to quantity of packs variable
    #         # orders[items.to_a[i]] = filledFoodPacks
    #         ##########
    #         ##########
            
    #         # if qty ordered is too small, give them the smallest pack
    #         # min = inf
    #         # smallestPack = {}
    #         # foodPacks.length.times { |i|
    #         #     if foodPacks[i].qty < min
    #         #         min = foodPacks[i].qty 
    #         #         smallestPack[{foodPacks[i] => 1}]
    #         #     end
    #         # }
    #         # # puts min
    #         # if (items.values[i] <= min)
    #         #     orders[items.to_a[i]] = smallestPack
    #         # else
    #         #     orders[items.to_a[i]] = knapsack(x,y,z)
    #         # end
            
            
    #         ###########
    #         ###########
            
    #     }
    #     return orders 
    # end
    
    # def self.knapsack(weights, values, minWeight) #int array, int array, int

        # modified knapsack problem: minimum unbounded knapsack, exact if possible.
        
        # https://stackoverflow.com/questions/47608725/knapsack-but-exact-weight
        

        ######
        # TODO: decide whether to force exact if possible, or to leave it as minimum always
        # TODO optimise() inserts params
        # TODO find a way to know how many packs of x were made use of by the algo
        ######
        # n = weights.length;
        # inf = 2147483647

        # dp = Array.new(n+1,inf){Array.new(minWeight+1,inf)}

        
        # (1).upto(n) { |i|

        #     (minWeight + 1).times { |j|

        #         if (j <= 0)
        #             dp[i][j] = 0
        #         elsif (i == 0 && j > 0) 
        #             dp[i][j] = inf
        #         elsif (i > 0 && j > 0)
        #             dp[i][j] = [dp[i-1][j], dp[i][j - weights[i-1]] + values[i-1]].min
        #         end
        #     }
        # }

        ####

        # dp = Array.new(minWeight+1,inf){Array.new(n+1,inf)}

        # (1).upto(n) { |j|

        #     (1).upto(minWeight) { |w|

        #         if (w <= 0)
        #             dp[w][j] = 0
        #         elsif (j == 0 && w > 0) 
        #             dp[w][j] = inf
        #         elsif (j > 0 && w > 0)
        #             dp[w][j] = [dp[w][j-1], dp[w- weights[j-1]][j-1] + weights[j-1]].min
        #         end
        #     }

        # }
        ####
        
        # indicesUsed = {} #index => qty used
        ###

        # i = dp.length - 1
        # j = minWeight
        # while (i > 0) 
        #   k = dp[i][j]
        #   if (k != dp[i - 1][j]) 
        #     puts "here"
        #     if (indicesUsed[values[i - 1]] == nil) 
        #     indicesUsed[values[i - 1]] = 1 #todo get index not value
        #     else
        #         indicesUsed[values[i - 1]] += 1 #todo get index not value
        #     end
        #     j -= weights[i - 1]
        #   end
        #   i -= 1
        # end

        ###
        
        # weight = minWeight
        
        # (n).downto(0) do |i|
        #     if (dp[i][weight] != dp [i-1][weight])
        #         puts "Here"
        #         if (indicesUsed[values[i - 1]] == nil) 
        #             indicesUsed[values[i - 1]] = 1 #todo get index not value
        #         else
        #             indicesUsed[values[i - 1]] += 1 #todo get index not value
        #         end
        #     weight -= weights[i-1]
        #     end
        #   end

        # ###
        # puts indicesUsed

        # return dp[n][minWeight]
    # end

end