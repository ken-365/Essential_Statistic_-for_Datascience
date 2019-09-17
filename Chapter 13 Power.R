# # Chapter 13 exercise 
# 1.Define power in your own words.

# Ans =	Power is the probability that experimenter of researcher can correctly reject a false null hypothesis.

# 2.List 3 measures one can take to increase the power of an experiment. Explain why your measures result in greater power.
#Ans
# a.	Sample size. the larger the sample size, the higher the power since increasing sample size toward population provide researcher with more information and better estimate to correctly reject false null hypothesis.
# b.	Standard deviation. The smaller the SD, the higher the power since smaller SD means reducing measurement error.
# c.	Significant level. The lower the significant level, the lower the power. The test become more restrict and therefor the lower chance for the null hypothesis will be rejected.

# 3.Population 1 mean = 36   
#   Population 2 mean = 45
#   Both population standard deviations are 10.
#   Sample size (per group) 16.
# What is the probability that a t test will find a 
# significant difference between means at the 0.05 level? 
# Give results for both one- and two-tailed tests. 
# Hint: the power of a one-tailed test at 0.05 level 
# is the power of a two-tailed test at 0.10.
pop.mean1 = 36
pop.mean2 = 45
sd = 10
var = 100
n = 16
Om = sqrt(var/n + var/n)
# find difference between mean 
diff.mean = pop.mean2 - pop.mean1 ; diff.mean
#find t value
t= diff.mean/ Om ; t
p2 = .0163
p1 = p2 /2 ; p1

# 5. Alan, while snooping around his grandmother's basement stumbled upon a shiny object protruding from under a stack of boxes . When he reached for the object a genie miraculously materialized and stated: 
#"You have found my magic coin. If you flip this coin an infinite number of times you will notice that heads will show 60% of the time." Soon after the genie's declaration he vanished, never to be seen again. 
# Alan, excited about his new magical discovery, approached his friend Ken and told him about what he had found. Ken was skeptical of his friend's story, 
# however, he told Alan to flip the coin 100 times and to record how many flips resulted with heads.
# (a) What is the probability that Alan will be able convince Ken that his coin has special powers by finding a p value below 0.05 (one tailed).
# Use the Binomial Calculator (and some trial and error)
# (b) If Ken told Alan to flip the coin only 20 times, what is the probability that Alan will not be able to convince Ken (by failing to reject the null hypothesis at the 0.05 level)?


a) Normal distribution for coin 
n= 100
pi = 0.5
prob.over.57 = 0.066
prob.over.58 = 0.0443
then 58
# using Binomial Calculator pi = 0.6
a) ans = 0.6225
b)
n= 20

prob over 14 = 0.0207
# using Binomial Calculator pi = 0.6
ans = 1-0.1256 ;ans =.8744

