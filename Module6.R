poi1 <- qpois(runif(1000),2)
poi2 <- qpois(runif(1000),2)
poi3 <- qpois(runif(1000),2)

poi_combined = poi1 + poi2 + poi3

poi_total <- qpois(runif(1000),6)

poi_combined = sort(poi_combined)

poi_total = sort(poi_total)

plot(poi_combined,poi_total)
lines(x= c(1:15),y = c(1:15),col='blue', add= T)

exp1 <- qexp(runif(1000),.5)
exp2 <- qexp(runif(1000),.5)
exp3 <- qexp(runif(1000),.5)

exp_combined = exp1 + exp2 + exp3

exp_total <- qgamma(runif(1000),shape=3, rate = .5)

exp_combined = sort(exp_combined)

exp_total = sort(exp_total)

plot(exp_combined[51:950],exp_total[51:950], col= 'green')
lines(x= c(1:12),y = c(1:12),col='blue', add= T)