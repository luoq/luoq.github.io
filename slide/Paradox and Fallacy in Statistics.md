# Paradox and Fallacy in Statistics

luoq08@gmail.com

## Paradox 

*  A *veridical paradox* produces a result that appears absurd but is demonstrated to be true nevertheless
*  A *falsidical paradox* establishes a result that not only *appears* false but actually *is* false, due to a fallacy in the demonstration. 
*  fallacy: an often plausible argument using false or invalid inference

## Misleading Statistics

![](https://d2f99xq7vri1nk.cloudfront.net/AllDinosGrey_1.png)

https://www.autodeskresearch.com/publications/samestats

## Base rate fallacy

> Alice plays piano well, is she more likely a composer or an accountant?

* $$ p(A_i|B)=p(B|A_i) p(A_i)/p(B),  \frac{p(A_1|B)}{p(A_2|B)}=\frac{p(B|A_1)}{P(B|A_2)} \frac{P(A_1)}{p(A_2)}$$
* base rate $p(A_i)$ is the conversion factor between $p(B|A_i)$ and $p(A_i|B)$
* the cause of this error is confusion between $p(B|A_i)$ and $p(A_i|B)$ and ignoring $p(A_i)$
* If presented with base information and specific information, the mind tends to ignore the former and focus on the latter
* sometimes the error is in estimating $p(B|A_i)$

https://www.inc.com/peter-economy/what-college-degree-will-make-you-rich.html

> So, what college degree will make you rich? Perhaps no college degree at all. Here's the breakdown for the world's 100 wealthiest people, according to Approved Index:
>
> - 32% No college degree
> - 22% Engineering
> - 12% Business
> - 10% Other
> - 9% Arts
> - 8% Economics
> - 3% Finance
> - 2% Science
> - 2% Mathematics

## Prosecutor's fallacy

* **argument of rarity**:  probability of winning the lottery without cheating is tiny, so the winner is cheating
* **Multiple Testing**:  a crime-scene DNA sample is compared against a database of 20,000 men, a match is found. If the probability of match by chance is 1 in 10000, the chance of getting at least one match is $1-(1-1/10000)^20000\approx 86\%$

$P(I|E)=P(E|I)P(I)/P(E), Odds(I|E)=\frac{P(E|I)P(I)}{P(E|\bar{I})P(\bar{I})}=Odds(I)P(E|I)/P(E|~I)\geq Odds(I)P(E|I)$

## Simpson's Paradox(Reversal Paradox)

The ratio of Lisa and Bart's success

|      | Week1   | week2   | TOTAL   |
| ---- | ------- | ------- | ------- |
| Lisa | 0/1     | 3/4     | **3/5** |
| Bart | **1/4** | **1/1** | 2/5     |

Let $N_i$ be sample size in experiment i and $s_i$ the success rate, the global success rate is $ s = \frac{\sum_i N_i s_i}{\sum_i N_i}=\sum_i w_i s_i, w_i=N_i/(\sum_i N_i)$ where $w_i$ is unrelated with $s_i$

![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Simpson_paradox_balances.svg/640px-Simpson_paradox_balances.svg.png)





### UC Berkeley Gender Bias

|       | Applicants | Admitted |
| ----- | ---------- | -------- |
| Men   | 8442       | **44%**  |
| Women | 4321       | 35%      |

| Department | Admitted(M) | Applicants(M) | Applicants(F) | Admitted(F) |
| ---------- | ----------- | ------------- | ------------- | ----------- |
| A          | 62%         | 825           | 108           | **82%**     |
| B          | 63%         | 560           | 25            | **68%**     |
| C          | **37%**     | 325           | 593           | 34%         |
| D          | 33%         | 417           | 375           | **35%**     |
| E          | **28%**     | 191           | 393           | 24%         |
| F          | 6%          | 373           | 341           | **7%**      |



## Berkson's paradox

Two independent events will be negatively correlated given that at least one of them occurs.

### why are handsome men such jerks

http://www.slate.com/blogs/how_not_to_be_wrong/2014/06/03/berkson_s_fallacy_why_are_handsome_men_such_jerks.html

![](http://www.slate.com/content/dam/slate/blogs/how_not_to_be_wrong/traingle-of-acceptable-men.jpg.CROP.promovar-mediumlarge.jpg)

* selection bias
* $0<P(A)<1,0<P(B)<1,P(A|B)=P(A)\Rightarrow P(A|B,A\cup B)<P(A|A\cup B)$
* d-separation in bayesian network, collider

![](https://openi.nlm.nih.gov/imgs/512/165/1995541/PMC1995541_1471-2105-8-S6-S5-3.png)



## Ecological fallacy

inference about individual vs inference about group

### mean and median

* Group A: 80% of people got 40 points and 20% of them got 95 points. The mean score is 51 points.
* Group B: 50% of people got 45 points and 50% got 55 points. The mean score is 50 points.
* Although Group A has a higher mean score, 80% of the time a random individual of A will score lower than a random individual of B

### Individual and aggregate correlations

even if at the individual level, wealth is positively correlated to tendency to vote Republican, we observe that wealthier states tend to vote Democratic

![](http://blog.statwing.com/wp-content/uploads/2012/12/Income-vs-Republican.png)



![](http://blog.statwing.com/wp-content/uploads/2012/12/Republican-Vote-Share.jpg)

$cov(\sum_i X_i, \sum_i Y_i)=\sum_i cov(X_i, Y_i)+\sum_{i\not =j} cov(X_i, Y_j)$

$Y_i=\alpha+\beta X_i+u_i, cov(X_i, u_i)=0$

$\sum_i Y_i =\alpha N+\beta \sum_i X_i+\sum_i u_i, cov(\sum_i X_i, \sum_i u_i)\not = 0$

## Two Envelope Problem

> You are given two indistinguishable envelopes each containing money, one contains twice as much as the other. ... Having chosen an envelope at will, but before inspecting it, you are given the chance to switch envelopes. Should you switch? 

Wrong

* Assume chose envelope ($A$) contains $x$, then the other ($B$) contains $x/2$ or $2 x$ with equal probability
* the expected value in the other envelope is $5/4 x$
* you should switch



Correct

*  Given the envelope with less money contains $x$($M=x$),  $E(A|M=x)=E(B|M=x)=3/2 x$
*  So $E(A-B)=E(E(A-B|M)|M)=0$  unconditionally

What's wrong

* $p(A=x)=1/2 q_x + 1/2 q_{x/2}$ with $q_x=p(M=x)$
* $p(B=2 x|A=x)=1/2 q_x/p(A=x)=q_x/(q_x+q_{x/2})$ $p(B=x/2|A=x)=1/2 q_{x/2}/p(A=x)=q_{x/2}/(q_x+q_{x/2})$
* no reason for above quantities to be 1/2


## Sleeping Beauty Problem

### problem

- Sleeping Beauty put to sleep at Sunday. 
- A fair coin is tossed
- Head => Awaken at Monday => End
- Tail => Awaken at Monday, put to sleep => Awaken at Tuesday => End
- After each awaking, a question is asked: "What's the credence of head?"
- Beauty knows the process before experiment. She can not remember or know the data.

The answer is 1/2 or 1/3?

In 500 experiments: 500 (H,Mon) 500 (T, Mon) 500 (T,Tue)

### Operationalization

- Place a bet.
- All awakenings count vs only one bet count per coin toss

## St.Petersburg paradox

How much would you pay for the lottery with payout $P(2^n)=\frac{1}{2^{n+1}}, n=0,1,2\dots$ 

The expected payout is $\sum_{i=1}^\infty 2^n/2^{n+1}=\infty$

Is expectation what we only requires? Consider following gambles:

* 1000, 0.01; -1, 0.99 -> Expectation 10-0.99
* 20, 0.5; -1.98 0.5 -> Expectation 10-0.99
* 1e6, 1e-6;  -1, (1-1e-6)-> Expectation 1e-6
* insurance

### utility

![](http://reducing-suffering.org/wp-content/uploads/2014/09/diminishing-marginal-utility.jpg)

$\Delta E(U) = \sum_{k=1}^\infty\frac{1}{2^k}\left[\ln(w + 2^{k-1} - c) - \ln(w)\right] \geq 0$

### Ergodicity

* Expectation: average in parallel universes
* alternative: average in time
* If they the same, the quantity is ergodic.

An example: invest at 1, rise to 1.5 or decrease to 0.6 with equal probability.

* expectation 1.05: in parallel universe or repeat buying 1 many times
* start with 1.0, reinvest all money repeatedly. $1/2(\log(1.5)+\log(0.6))\approx -0.0527$

$(\prod_{i=1}^N r_i)^{1/N}, 1/N \sum_{i=1}^N \log(r_i)$

![](http://aip.scitation.org/na101/home/literatum/publisher/aip/journals/content/cha/2016/cha.2016.26.issue-2/1.4940236/production/images/medium/1.4940236.figures.f2.gif)

$\bar{g}=\sum_{k=1}^\infty 1/2^k (\log(w-c+2^{k-1})-\log(w))$

Requirement: $w-c+1>0$

![](http://rsta.royalsocietypublishing.org/content/roypta/369/1956/4913/F1.large.jpg?width=800&height=600&carousel=1)

The acceptable cost is dependent on $w$.

## Shannon's demon

### Problem

A stock has equal probability to double or half each money. Can you make money from investing in it?

* Buy and Hold: $1/2(\log(2)+\log(1/2))=0$
* Invest fixed ratio $l$ of wealth rebalancing each day. Maximizing $1/2(log(1+l)+\log(1-1/2 l)$) ,with $l=1/2$, the expected log growth is $\log(\frac{3}{2\sqrt{2}})\approx 0.059$

![](https://i.imgur.com/iOYc5Z2.png)

## Bertrand Paradox

## Gianlino's Disc

https://brilliant.org/problems/gianlinos-disc-2/

## correlation vs cointegreation

http://epchan.blogspot.com/2006/11/cointegration-is-not-same-as.html

## Jeffreys-Lindley paradox

## Reference

wikipedia

http://theconversation.com/paradoxes-of-probability-and-other-statistical-strangeness-74440

https://stats.stackexchange.com/questions/23779/most-interesting-statistical-paradoxes

### ecological paradox

http://blog.statwing.com/the-ecological-fallacy/

### St.Petersburg paradox

http://aip.scitation.org/doi/full/10.1063/1.4940236

http://rsta.royalsocietypublishing.org/content/369/1956/4913

### Shannon's demon

[Fortune's Formula: The Untold Story of the Scientific Betting System That Beat the Casinos and Wall Street](https://www.goodreads.com/book/show/186124.Fortune_s_Formula)