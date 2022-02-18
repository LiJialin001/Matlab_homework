function endValue=tradeStock(initialInvestment, price, buy, sell)
transactionCost = 12.95;
stocks = 0;
endValue = initialInvestment;
for n=1:length(price)
    if ~isempty(find(sell==n, 1)) && stocks~=0
        if endValue>=transactionCost
            endValue = endValue + stocks*price(n) - transactionCost;
            stocks = 0;
        end
    elseif ~isempty(find(buy==n, 1))
        if endValue>=transactionCost + price(n)
            if mod((endValue-transactionCost),price(n)) >= transactionCost
                stocks = stocks+floor((endValue-transactionCost)/price(n));
                endValue = mod((endValue-transactionCost),price(n));
            else
                stocks = stocks+floor((endValue-transactionCost)/price(n))-1;
                endValue = mod((endValue-transactionCost),price(n))+price(n);
            end
        end
    end
end
endValue = endValue + stocks*price(end);
end

