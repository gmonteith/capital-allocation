.
Equivalent Annual Cost (EAC) is the cost per year of owning and operating an
asset over its entire lifespan. Equivalent Annual Worth (EAW) is the benefit of
owning an asset over its lifetime. The EAC or EAW is calculated by multiplying
the NPV, or Present Worth (PW) as it is sometimes known, of a project, by the
Capital Recovery Factor established in
.pdfhref -L -D sec-10.6 Chapter 10.6
and shown below.
.EQ I
caprec(=)
.EN
If we turn back a few pages to
.pdfhref -L -D sec-17.4 Chapter 17.4
we can see that in the example we established a NPV of \[Po]53,745. If we
wished to convert this to an Equivalent Annual Worth we would multiply the NPV
by the Capital Recovery factor. In the example in Chapter 17.4 the interest
rate #i# is 15%, and the number of years #n# is 5.
.EQ I
NPV lm 53,745 (A/P, 15%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
53,745 ncaprec(0.15, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
53,745 times ~^ 0.29832
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]16,033
.EN
It is important to grasp the meaning of the numbers when the NPV is converted
into an annuity. We are answering the question: given an NPV of \[Po]53,745
what would the annuity be over the same time period with the same interest
rate? With our knowledge of equivalence from Chapter 2 we know that the annuity
value and the NPV are equal.
.LP
Accountants tend to favour NPV and engineers the EAC or EAW, the difference in
preference is purely down to familiarity and professional education as opposed
to the actual merits of either method.  
.LP
The equivalent annual methods or annuity methods are best for comparing costs
or savings that are measured in years. Also stating that this investment will
cost or save \[Po]5,000 pounds per year makes intuitive sense to many people
who are already familiar with annual budgets.
.LP
We will also demonstrate in Chapter 19 that equivalent annual measures are
particularity useful when comparing projects of different lengths. For instance
a stainless steel pump may last longer than a brass design. The question is:
"Does the longer life of the stainless steel pump make up for its higher
initial cost?" Equivalent annual costs make the analysis of this scenario clear
and easy to understand.
.LP
Equivalent Annual Worth uses the same sign conventions as the NPV. If you are
dealing only with costs, so you are calculating an EAC, the convention is that
the costs are all positive. The important rule is to be consistent with the
signs that you use and not to mix EAC and EAW. If there are costs and benefits
then use EAW.
.sp
.
.B1
.B
.ce
.SM
Note
.LP
The same discount rate is used through out the examples for the sake of
simplicity. This is not accurate as interest is tax deductible and would reduce
the cost of capital.
.sp
.B2
.
.sp
.\" .XXXX \\n(cn 1 "Examples"
.LP
For the purposes of the following examples the government allowable
depreciation or Writing Down Allowance is 18% as represented by #d#, the
discount rate #i# is 15%, the tax #t# is 29% for Self Assessment Tax and 19%
for Corporation Tax.
.LP
Use the Capital Cost Tax Factor flow charts in Appendix B to aid with the after
tax calculations. Unless otherwise stated it is \fBalways\fP presumed that
Corporation Tax commences at time period two.
.LP
This section and the ones following rely heavily on the equations from
.pdfhref -L -D ch10 chapter 10
on Engineering Economics. I will usually state the chapter in which the
equation was derived, but it may help to have the equations from
.pdfhref -L -D apC Appendix
to hand to avoid too much page turning.
.LP
The last point is the use of the terms "investment cost" and "capital cost".
When a project is made you would view it as an "investment cost". However, when
you are working out the tax that "investment cost" has been placed on the
balance sheet and is refereed to as a "capitalised cost". This "capitalised
cost" refers to the cost of the asset on the balance sheet.
.
.\" .XXXX 0 2 "No Salvage Value"
.XXXX \\n(cn 1 "No Salvage Value"
.LP
You have decided that the slurry pump used in the diary needs replacing. The
new slurry pump has an initial purchase cost of \[Po]70,000, it will cost
\[Po]10,000 to remove the old pump and install the new pump. The annual
operating costs for energy and maintenance will total \[Po]12,000, the expected
life is 10 years after which the salvage value will be zero. If the interest
rate is 15% what will be the EAC?
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			arrow down 0.7 at last box.s
			"\[Po]70,000" below at end of last arrow
			move down 0.3
			"\[Po]10,000"
			move down 0.1
			move left 0.3
			line right 0.65
			move down 0.1
			move left 0.33
			"\[Po]80,000"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "1"
			arrow down 0.35 at last box.s
			"\[Po]12,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "2"
			arrow down 0.35 at last box.s
			"\[Po]12,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "3"
			arrow down 0.35 at last box.s
			"\[Po]12,000" below at end of last arrow
			line dashed right 0.3 from last box.e
			line down 0.20 dashed right 0.15
			line up 0.40 dashed right 0.15
			line down 0.20 dashed right 0.15
			line dashed right 0.3 
			box invis wid 0.25 ht 0.15 "8"
			arrow down 0.35 at last box.s
			"\[Po]12,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "9"
			arrow down 0.35 at last box.s
			"\[Po]12,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "10"
			arrow down 0.35 at last box.s
			"\[Po]12,000" below at end of last arrow
		]
box invis "i = 15/100" wid 0.6 ht 0.25 with .s at A.n + (0.3,0.2)
box invis "n = 10" wid 0.6 ht 0.25 with .n at A.s + (0.3,0.5)
.PE
.UL Method
.sp 0.5
.RS
.IP "Step 1:" 10
Use the capital recovery factor to convert the investment costs into an
equivalent annual cost.
.IP "Step 2:" 10
Add the equivalent annual cost of the investment to the annual operating costs.
It is important to realise that the \[Po]12,000 is already an annual payment
and therefore an annuity. If you were to create a present worth from an annuity
and then convert the present worth back to an annuity you would end up where
you started. If you revert back to
.pdfhref -L -D sec-10.5 Chapter 10.5
and
.pdfhref -L -D sec-10.6 10.6
you will see that the equations for the Uniform Series Present Worth and
Capital Recovery are reciprocals of each other\(dg. The implication of the
\[Po]12,000 already being an annuity is that the series started at time period
one to be consistent with the equation derived in
.pdfhref -L -A . -D sec-3.1 Chapter 3.1
.FS
\(dg The reciprocal of a number is #1 over number#, which is its inverse.
Therefore the reciprocal of #2# is #1 over 2#. If you multiple 10 by 2 and then
by #1 over 2# you will end up where you started. #10 times ~^ 2 = 20 times ~^ 1
over 2 = 10#. The reciprocal of a fraction is its inverse, therefore the
reciprocal of #3 over 4# is #4 over 3#
.FE
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.IP "No Tax" 10
.EQ I
EAC lm
"80,000(A/P, 15.0%, 10)" + 12,000
.EN
.sp -0.6v
.EQ I
lineup =~~
80,000(0.1993) + 12,000
.EN
.sp -0.6v
.EQ I
lineup =~~
15,940 + 12,000
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]27,940
.EN
.IP "Tax" 10
For this example we will presume that you are running a limited company, tax is
payable at 20%, tax payable commences in time period 2, the investment is not
in a single asset pool and the AIA will be utilised.
.sp 0.5v
As there is no salvage value simply multiply the investment cost by the #CCTF
sub AIA2#. The tax benefit arising from the annual operating costs being an
expense of business must be be kept consistent with the tax benefits accruing
from the capital investment.
.sp 0.5v
The tax benefit will need to be separated from the cost as the first tax effect
is at time period 2 and the first cash flow at time period one.
.EQ I
"After tax EAC " lm
80,000(A/P, 15.0%, 10)( CCTF sub AIA2 )
.EN
.sp -0.6v
.EQ I
lineup { hphantom{=~~} } 
+ 12,000 - 12,000(t)(P/F, 15%, 1)
.EN
.sp -0.6v
.EQ I
lineup =~~
80,000(0.1993)(0.8488) + 12,000 - 12,000(0.2)(0.8696)
.EN
.sp -0.6v
.EQ I
lineup =~~
13,533 + 12,000 - 2,087
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]23,446
.EN
It would seem more logical to multiply the initial investment by the CCTF then
the annuity factor. However, remember that the result is the same regardless of
the order in which numbers are multiplied together. #2 times ~^ 3# and #3 times
~^ 2# give the same result.
.sp 0.5v
The tax benefits associated with the \[Po]12,000 cost appears to have gone
through a strange transformation. If you refer back to
.pdfhref -L -D sec-3.1 Chapter 3.1
on ordinary annuities you will see that the series starts at time period 1 and
creates a PV at time period zero. We have a tax benefit of \[Po]12,000(t) which
is equivalent to an annuity where the series commenced at time period one,
however, in this scenario the first tax effect is a time period two so we use
the Single Payment Present Worth factor and our knowledge of equivalence to
discount by an extra period (P/F, 15%, 1).
.RE
.
.LP
Key points:
.IP \(bu 3
If there is no salvage value then calculating the after tax EAW or EAC is very
simple for the investment. The process, as we have just demonstrated, required
only that the capitalised costs be multiplied by the appropriate CCTF.
.IP \(bu 3
Ensuring the costs maintain there consistency with the capital investment adds
a little complexity at time period 2.
.IP \(bu 3
In reality the tax effect would have little bearing on the decision to invest
in the slurry pump and was probably unnecessary.
.
.XXXX 0 2 "Salvage Value"
.LP
You are thinking of investing in a GPS system for your arable operation. The
system cost \[Po]15,000 to buy and you must also pay a neighbour \[Po]1,000 per
year to access his RTK signal, to get the level of accuracy you want. You
expect to keep the system of the next 5 years after which the expected salvage
value is 15% of the purchase price. Given a cost of capital of 14%, how much
must you save in seed, fertiliser, diesel and hours each year to justify the
purchase?
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			arrow down 0.7 at last box.s
			"\[Po]15,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "1"
			arrow down 0.35 at last box.s
			"\[Po]1,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "2"
			arrow down 0.35 at last box.s
			"\[Po]1,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "3"
			arrow down 0.35 at last box.s
			"\[Po]1,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "4"
			arrow down 0.35 at last box.s
			"\[Po]1,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "5"
			arrow down 0.3 at last box.s
			"\[Po]1,000" below at end of last arrow
			arrow up 0.3 at last box.n
			"\[Po]2,250" above at end of last arrow
		]
box invis "i = 14/100" wid 0.6 ht 0.25 with .s at A.n + (0.3,-0.2)
box invis "n = 5" wid 0.6 ht 0.25 with .n at A.s + (0.3,0.0)
.PE
.UL Method
.sp 0.5
.RS
.IP "Step 1:" 10
Establish the investment cost as a present value.
.IP "Step 2:" 10
Convert the salvage value to a present value using the Single Payment Present
Worth factor.
.IP "Step 3:" 10
Convert the present values to an EAC using the Capital Recovery factor and add
the \[Po]1,000, you pay your neighbour for access to their RTK signal, which is
already an annual cost.
.RE
.LP
.sp
.KS
.UL Calculation
.sp 0.5
.RS
.EQ I
EAC lm
1,000 + left [ 15,000 - 2,250(P/F, 14%, 5) right ] times ~^ (A/P, 14%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
1,000 + left [ 15,000 - 2,250(0.5194) right ] times ~^ 0.2913
.EN
.sp -0.6v
.EQ I
lineup =~~
1,000 + left [ 15,000 - 1,169 right ] times ~^ 0.2913
.EN
.sp -0.6v
.EQ I
lineup =~~
1,000 + left [ 13,831 right ] times ~^ 0.2913
.EN
.sp -0.6v
.EQ I
lineup =~~
1,000 + 4,029
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]5,029
.EN
.KE
.RE
.
.LP
Key points:
.IP \(bu 3
In the case of an ordinary annuity there is an implied cost in the final year
for the RTK.
.IP \(bu 3
The tax has not been calculated as it is not a consideration in the decision to
invest in the equipment. If there were tax concessions for investing in the
equipment that could lower the internal investment cost then the tax would
become a consideration.
.
.XXXX 0 2 "Salvage Value"
.LP
You have decided to purchase a new ATV for use in the sheep contracting
business. The ATV cost \[Po]10,000 and you have opted to purchase a service
plan that costs \[Po]300 per year to cover maintenance for the 5 years you
expect to own the vehicle. After 5 years the estimated salvage value is
\[Po]4,000 pounds. If the cost of capital is 12% what is the equivalent annual
cost of the ATV?
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			arrow down 0.7 at last box.s
			"\[Po]10,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "1"
			arrow down 0.35 at last box.s
			"\[Po]300" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "2"
			arrow down 0.35 at last box.s
			"\[Po]300" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "3"
			arrow down 0.35 at last box.s
			"\[Po]300" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "4"
			arrow down 0.35 at last box.s
			"\[Po]300" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "5"
			arrow up 0.3 at last box.n
			"\[Po]2,000" above at end of last arrow
		]
box invis "i = 12/100" wid 0.6 ht 0.25 with .s at A.n + (0.3,-0.2)
box invis "n = 5" wid 0.6 ht 0.25 with .n at A.s + (0.3,0.0)
.PE
.UL Method
.sp 0.5
.RS
.IP "Step 1:" 10
Establish the investment cost as a present value.
.IP "Step 2:" 10
The service contract in this instance does not cover a service in the year of
disposal. The lack of service is probably a moot point as the salvage value
will in all likely hood reflect the fact that a service is required. In essence
if the ATV was serviced a given salvage value could be expected and if a
service was required the salvage value would be reduced by the cost of the
service. The result is that the equivalent costs is unchanged. However for
the purpose of this exercise we will follow the cash flow diagram. 
.sp 0.5v
The \[Po]300 cost implies an annuity over the 5 years, but the servicing is
only over 4 years. Convert the \[Po]300 into present value using the Uniform
Series Present Worth factor.
.IP "Step 3:" 10
Convert the salvage value to a present value using the Single Payment Present
Worth factor.
.IP "Step 4:" 10
Convert the present values to a EAW using the Capital Recovery factor.
.RE
.LP
.sp
.KS
.UL Calculation
.sp 0.5
.RS
.IP "No Tax" 10
.EQ I
EAC lm
left [ 10,000 + 300(P/A, 12%, 4) - 2,000(P/F, 12%, 5) right ] times ~^ (A/P, 12%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
left [ 10,000 + 300(3.0373) - 2,000(0.5674) right ] times ~^ 0.2774
.EN
.sp -0.6v
.EQ I
lineup =~~
left [ 10,000 + 911 - 1,135 right ] times ~^ 0.2774
.EN
.sp -0.6v
.EQ I
lineup =~~
left [ 9,776 right ] times ~^ 0.2774
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]2,712
.EN
.KE
.IP "Tax" 10
For the tax calculation we are going assume that you are a sole trader and your
tax is due in time period one and the CCTF for the WDA in a continuous pool
will be used. The tax rate #t# can assumed to be 29%, the declining balance
rate #d# is 18%.
.RS
.IP "Step 1:" 10
Establish the value of the appropriate CCTF.
.IP "Step 2:" 10
Calculate the after tax, after salvage present value of the investment using
the investment cost equation.
.IP "Step 3:" 10
Recalculate the EAC.
.RE
.EQ I
CCTF sub WDA = left [ cctf right ]
=~~
ncctf(0.18, 0.29, 0.12)
=~~
0.826
.EN
.EQ I
"Investment cost" lm
I left [ CCTF sub WDA right ] 
- S left [ CCTF sub WDA right ] times ~^  (P/F, i%, n)
.EN
.sp -0.6v
.EQ I
lineup =~~
10,000 left [ 0.826 right ] - S left [ 0.826 right ] times ~^ (P/F, 12%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
8,260 - 1,652 times ~^ (0.5674)
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]7,323
.EN
.
.EQ I
EAC lm
left [ 7,323 + 300(1 -t)(P/A, 12%, 4) right ] times ~^ (A/P, 12%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
left [ 7,323 + 300(1 - 0.29)(3.0373) right ] times ~^ 0.2774
.EN
.sp -0.6v
.EQ I
lineup =~~
left [ 7,323 + 647 right ] times ~^ 0.2774
.EN
.sp -0.6v
.EQ I
lineup =~~
left [ 7,970 right ] times ~^ 0.2774
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]2,211
.EN
.RE
.
.LP
Key points:
.IP \(bu 3
The calculation of the service plan over 4 years and not 5 adds additional
complexity. 
.IP \(bu 3
The tax calculation is not too onerous with the use of the investment cost
equations.
.IP \(bu 3
When calculating the after tax EAC it is important to remember that the salvage
value has been included in the investment cost equation and the cost of the
service plan must be reduced by the tax rate.
.
.KS
.XXXX 0 2 "Salvage Value"
.LP
You have decided to investigate if it is worth installing a diesel tank on the
farm as it would allow you to bulk buy your fuel. You use 90,000 litres a year
and estimates that you can save 5p per litre by buying in bulk. The diesel
storage system would cost \[Po]25,000 pounds and the maintenance would be
\[Po]150 pounds per year, and the expectation is that they would rise at 3% per
year.  After 15 years the estimated salvage value is \[Po]2,000 pounds. If the
cost of capital is 15% is this a good investment?
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			arrow down 2.0 at last box.s
			"\[Po]25,000" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "1"
			arrow up 0.35 at last box.n
			"\[Po]4,500" above at end of last arrow
			arrow down 0.35 at last box.s
			"\[Po]150" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "2"
			arrow up 0.35 at last box.n
			"\[Po]4,500" above at end of last arrow
			arrow down 0.55 at last box.s
			"\[Po]150#(1 + 0.03)#" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "3"
			arrow up 0.35 at last box.n
			"\[Po]4,500" above at end of last arrow
			arrow down 0.75 at last box.s
			"\[Po]150#(1 + 0.03) sup 2#" below at end of last arrow
			line dashed right 0.3 from last box.e
			line down 0.20 dashed right 0.15
			line up 0.40 dashed right 0.15
			line down 0.20 dashed right 0.15
			line dashed right 0.3 
			box invis wid 0.25 ht 0.25 "13"
			arrow up 0.35 at last box.n
			"\[Po]4,500" above at end of last arrow
			arrow down 0.95 at last box.s
			"\[Po]150#(1 + 0.03) sup 12#" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "14"
			arrow up 0.35 at last box.n
			"\[Po]4,500" above at end of last arrow
			arrow down 1.15 at last box.s
			"\[Po]150#(1 + 0.03) sup 13#" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "15"
			arrow up 0.35 at last box.n
			"\[Po]4,500" above at end of last arrow
			move up 0.2
			arrow up 0.3
			"\[Po]2,000" above at end of last arrow
			arrow down 1.35 at last box.s
			"\[Po]150#(1 + 0.03) sup n-1#" below at end of last arrow
		]
box invis "i = 15/100" wid 0.6 ht 0.25 with .s at A.n + (0.3,-0.2)
box invis "n = 15" wid 0.6 ht 0.25 with .n at A.s + (0.3,0.2)
.PE
.KE
There are two ways of approaching the problem:
.br
.UL "Method 1"
.sp 0.5
.RS
You could calculate the EAW by working the positive and negative cash flows
calculating the annuities as required. The logic is to establish all the cash
flows as present values and then convert them to the EAC.
.IP "Step 1:" 10
The \[Po]2,000 from the salvage must be converted to a present value using the
Single Payment Present Worth factor. 
.IP "Step 2:" 10
The maintenance charge of \[Po]150 can be converted to a annuity by using the
Geometric Gradient Present Worth factor.
.IP "Step 3:" 10
Once all the present values have been created the annuity can be established
using the Capital Recovery factor,
.IP "Step 4:" 10
This can then be added to the annual savings of of 90,000 times 0.05 which
totals \[Po]4,500 and is already an annuity.
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.EQ I
EAW lm
[ (-25,000 + 2,000(P/F, 15%, 15) - 150(P/A, 3.0%, 15.0%, 15) )
~(A/P, 15.%, 15) ]   + 4,500 
.EN
.sp -0.6v
.EQ I
lineup =~~
[ (-25,000 + 2,000(0.1229) - 150(6.7378) ) ~(0.1710) ]  + 4,500
.EN
.sp -0.6v
.EQ I
lineup =~~
[ (-25,000 + 246 - 1,011 ) ~(0.1710) ]  + 4,500
.EN
.sp -0.6v
.EQ I
lineup =~~
[ -25,765 ~(0.1710) ]  + 4,500
.EN
.sp -0.6v
.EQ I
lineup =~~
-4,406  + 4,500
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]94
.EN
.RE
.
.UL "Method 2"
.sp 0.5
.RS
You could calculate the costs and the benefits separately and then subtract the
costs from the benefits. If benefits are greater than the costs then the result
will be positive and the investment maybe viable. Remember that the costs and
benefits should both be calculated using positive values in this scenario.
.IP "Benefits" 10
.RS
.IP "Step 1:" 10
First the salvage value of \[Po]2,000 must be discounted to create a present
value using the Single Payment Present Worth factor in
.pdfhref -L -A . -D sec-10.2 Chapter 10.2
.IP "Step 2:" 10
Use the Capital Recovery factor to convert the present worth into an equivalent
benefit.
.IP "Step 3:" 10
The equivalent benefit can be combined with the 5p savings on each litre to
give the total benefits. Again the benefits per litre are already stated in
annual terms so no additional calculations are required.
.RE
.IP "Costs" 10
.RS
.IP "Step 1:" 10
The maintenance costs need to be converted to a present value using the
Geometric Gradient Present Worth factor.
.IP "Step 2:" 10
This present value can be added to the initial cost and this can be converted
to an equivalent cost using the Capital Recovery factor.
.RE
.LP
Once the costs and benefits have been established the difference between the
two can be established and the viability of investment can be assessed.
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.EQ I
Benefits lm 
"2,000(P/F, 15%, 15)(A/P, 15%, 15)" + (90,000 times ~^ 0.05)
.EN
.sp -0.6v
.EQ I
lineup =~~
2,000(0.1229)(0.1710) + 4,500
=
42 + 4,500
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]4,542
.EN
.sp
.EQ I
Costs lineup =~~
left ( 150(P/A, 3.0%, 15.0%, 15) 25,000 right ) (A/P, 15.%, 15)
.EN
.sp -0.6v
.EQ I
lineup =~~
left ( 150(6.7378) 25,000 right ) (0.1710) 
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]4,448
.EN
.
.EQ I
EAW lineup =~~ benefits - costs
.EN
.sp -0.6v
.EQ I
lineup =~~
4,542 - 4,448\(dd
.EN
.FS
\(dd A little reminder on the signs. We said that both the costs and the
benefits should be calculated with the sign of quality being positive. If the
costs had been negative, and we maintain the premise that the costs are
subtracted from the benefits to establish the answer, we would have a negative
result. The subtraction would have become # \[Po]4,542 - (-\[Po]4,448) #, when
the parenthesis are removed it becomes # \[Po]4,542 + \[Po]4,448 # which equals
# \[Po]8,990#! If you made the costs negative and the benefits positive you
would have to add the results together. # \[Po]4,542 + (-\[Po]4,448) # becomes
# \[Po]4,542 - \[Po]4,448) # which equals \[Po]94. There is a footnote in
.pdfhref -L -D ftB@1 appendix B
which covers very briefly the logic of mathematical signs.
.FE
.sp -0.6v
.EQ I
lineup =~~
\[Po]94
.EN
.
.RE
.LP
Key points:
.IP \(bu 3
The proposition is marginal before the tax and you would be ill advised to make
the investment.
.IP \(bu 3
As the investment decisions is marginal before tax the added effort of
calculating the tax would only further reduce the NPV. If an investment is
unattractive before tax it is seldom worth the effort of calculating the tax
impact.
.IP \(bu 3
It is worth noting that the salvage value is often so heavily discounted that
it has little impact on the calculation. It can be seen in the benefits
calculation that the salvage has a EAW of 42.
.
.KS
.XXXX 0 2 "EAC - Overhaul Cost"
.LP
You have an option to extend the life of a piece of equipment by 3 years with
an overhaul at year 5. If the cost of the overhaul is \[Po]4,500, and the cost
of capital is 10% what is the EAC for the overhaul?
.LP
The first stage is to understand the pattern of cash flows.
.PS
A: [ box invis wid 0.25 ht 0.25 "0"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "1"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "2"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "3"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "4"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "5"
			arrow down 0.50 at last box.s
			"\[Po]4,500" below at end of last arrow
			line dashed up at last box.n
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "6"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "7"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.25 "8"
		]
box invis "i = 10/100" wid 0.6 ht 0.25 with .s at A.n + (0.0,-0.2)
box invis "n = 8" wid 0.6 ht 0.25 with .n at A.s + (0.0,0.3)

EL: box invis wid 1.0 ht 0.2 "Extended Life" at A.n + (1.4, -0.3)
arrow dashed left 0.3 from EL.w
arrow dashed right 0.3 from EL.e
.PE
.KE
.UL Method
.sp 0.5
.RS
It is presumed that you are having this discussion before the purchase of the
machine and not at year 5 and therefore the overhaul cost is spread over the
life of the piece of equipment and not just the period by which it is extended.
.IP "Step 1:" 10
Convert the overhaul cost to a present value using the Single Payment Present
Worth factor.
.IP "Step 2:" 10
Convert the present value to an annuity over 8 years using the Capital Recovery
factor.
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.EQ I
EAC lm
4,500 (P/F, 10%, 3) (A/P, 10%, 8)
.EN
.sp -0.6v
.EQ I
lineup =~~
4,500(0.7513)(0.1874)
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]644
.EN
.RE
Key points:
.IP \(bu 3
This is unlikely to be a capitalised cost so there is no need to complete a tax
calculation.
.IP \(bu 3
The value is very small and therefore the tax is unlikely to be a
consideration.
.
.XXXX 0 2 "Deferred Annuity"
.LP
You have decided to purchase a new 4WD for the farm. The 4WD comes with 3 years
free servicing after which time it will incur servicing costs of \[Po]1,500
pounds per year. If the interest rate is 12% what is a EAC of the repair costs
over the 10 year life of the 4WD? 
.sp -1
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "1"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "2"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "3"
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "4"
			arrow down 0.35 at last box.s
			"\[Po]1,500" below at end of last arrow
			line dashed right 0.3 from last box.e
			line down 0.20 dashed right 0.15
			line up 0.40 dashed right 0.15
			line down 0.20 dashed right 0.15
			line dashed right 0.3 
			box invis wid 0.25 ht 0.15 "8"
			arrow down 0.35 at last box.s
			"\[Po]1,500" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "9"
			arrow down 0.35 at last box.s
			"\[Po]1,500" below at end of last arrow
			line right 0.3 from last box.e
			box invis wid 0.25 ht 0.15 "10"
			arrow down 0.35 at last box.s
			"\[Po]1,500" below at end of last arrow
		]
box invis "i = 12/100" wid 0.6 ht 0.25 with .s at A.n + (0.6,0.2)
box invis "n = 10" wid 0.6 ht 0.25 with .n at A.s + (0.6,0.1)
.PE
This particular type of cash flow is called a deferred annuity. There are two
approaches to the problem:
.sp 0.5
.br
.UL "Method 1"
.sp 0.5
.RS
Convert everything to a present value and then calculate the EAC.
.IP "Step 1:" 10
Establish the annuity value for 7 years using the Uniform Series Present Worth
Factor. This will establish a PV at year 3,
.IP "Step 2:" 10
However, this will now need to been shifted to time of purchase using the
Single Payment Present Worth.
.IP "Step 3:" 10
Lastly the PV at time of purchase can now be converted to an annuity over the
10 year life using the Capital Recovery Factor.
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.EQ I
EAC lm 
1,500(P/A, 12%, 7)(P/F, 12%, 3)(A/P, 12%, 10)
.EN
.sp -0.6v
.EQ I
lineup =~~
1,500(4.564)(0.712)(0.177) 
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]863
.EN
.RE
.
.UL "Method 2"
.sp 0.5
.RS
Convert everything to a future value and then calculate the EAC.
.IP "Step 1:" 10
Establish the FV of the 7 year annuity for the serving costs using the Uniform
Series Compound Amount.
.IP "Step 2:" 10
The FV can now be converted to an annuity over the 10 year life using the
Uniform Series Sinking Fund factor.
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.EQ I
EAC lm 
1,500(F/A, 12%, 7)(A/F, 12%, 10)
.EN
.sp -0.6v
.EQ I
lineup =~~
1,500(10.089)(0.0570) 
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]863
.EN
.RE
Key points:
.IP \(bu 3
Method 2 has less steps and is mathematically simpler.
.IP \(bu 3
The reason that method 2 has one less step is that the \[Po]1,500 is stated in
terms of its value at year 3, the start of the servicing cost. Therefore, it
can be compound forward to reach a future value, is this is unclear refer back
to
.pdfhref -L -A , -D ch2 Chapter 2
but when establishing a present value the \[Po]1,500 must be discounted to
establish its equivalent value in terms of year zero.
.IP \(bu 3
In this scenario we are not proposing to capitalise the cost and the tax is not
a consideration in the investment decision.
.
.XXXX 0 2 "Repeated Renewals - start time period zero"
.LP
You have installed a new wash facility for your livestock haulage business with
a design life of 25 years. The wash includes a steam cleaner that cost
\[Po]5,000 pounds which will last 5 years. The steam cleaner has no salvage
value and the energy costs are not separated from other costs. If the cost of
capital is 13% find the Equivalent Annual Cost for a series of 5 steam
cleaners?
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			arrow down 0.35 at last box.s
			"\[Po]5,000" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "5"
			arrow down 0.35 at last box.s
			"\[Po]5,000" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "10"
			arrow down 0.35 at last box.s
			"\[Po]5,000" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "15"
			arrow down 0.35 at last box.s
			"\[Po]5,000" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "20"
			arrow down 0.35 at last box.s
			"\[Po]5,000" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "25"
		]
box invis "i = 13/100" wid 0.6 ht 0.25 with .s at A.n + (0.5,0.2)
box invis "n = 10" wid 0.6 ht 0.25 with .n at A.s + (0.5,-0.3)
.PE
.LP
.UL Method
.sp 0.5
.RS
Each steam cleaner lasts 5 years, and has the same cost, so each steam cleaner
will have the same EAC. As the EAC is uniform over each 5 year period it is the
EAC for the 25 year design life.
.RE
.sp
.KS
.UL Calculation
.sp 0.5
.RS
.EQ I
EAC lm 5,000(A/P, 13%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
5,000(0.2843)
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]1,422
.EN
.KE
.RE
Key points:
.IP \(bu 3
This principle can be generalised for the costs of a project that are incurred
periodically but not every year.
.IP \(bu 3
EAW and EAC provide a simple solution to problems where repeated renewals
occur. If the results are to be reliable then two constants must be accepted:
.RS
.IP 1.
The repeated costs are constant.
.IP 2.
The interval is constant.
.RE
.
.XXXX 0 2 "Repeated Renewals - no initial or final cash flow"
.LP
You have installed a number of new roads on his farm with a design life of 25
years. The total length of the roads is 2.3 KM. The roads will require
maintenance to the surface every 5 years at a cost of 30 pounds per meter. If
the cost of capital is 11% find the EAC for the series of operations to
resurface the road.
.LP
The first stage is to understand the pattern of cash flows.
.PS
A: [ box invis wid 0.25 ht 0.15 "0"
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "5"
			arrow down 0.35 at last box.s
			"Resurface" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "10"
			arrow down 0.35 at last box.s
			"Resurface" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "15"
			arrow down 0.35 at last box.s
			"Resurface" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "20"
			arrow down 0.35 at last box.s
			"Resurface" below at end of last arrow
			line right 0.7 from last box.e
			box invis wid 0.25 ht 0.15 "25"
			arrow down 0.7 at last box.s
			"New Road" below at end of last arrow
		]
box invis "i = 11/100" wid 0.6 ht 0.25 with .s at A.n + (0.5,0.2)
box invis "n = 10" wid 0.6 ht 0.25 with .n at A.s + (0.5,0.1)
.PE
.UL Method
.sp 0.5
.RS
As the cash flow diagram shows there are only 4 resurfacing operations. The
road does not require resurfacing when it is initially constructed, and in the
25th year you are not going to resurface the road and then replace it.
.IP "Step 1:" 10
In five years time you will have had to have saved #2,300 times ~^ 30# pounds
to resurface the roads. Therefore, the resurfacing cost must be multiplied by
the Uniform Series Sinking Fund annuity factor.
.IP "Step 2:" 10
This annuity will then be constant until year 20, after which there is no
requirement to occur funds to resurface the road as it will be replaced. The
annuity must be converted to a present value using the Uniform Series Present
Worth factor.
.IP "Step 3:" 10
We have created an annuity and converted it to a present value. However, the
present value now needs to be apportioned over the life of 25 years. Use the
Capital Recovery factor with #n# equal to 25.
.RE
.sp
.UL Calculation
.sp 0.5
.RS
.IP "No Tax" 10
.EQ I
EAC lm (2,300 times ~^ 30) (A/F, 11%, 5) (P/A, 11, 20) (A/P, 11, 25)
.EN
.sp -0.6v
.EQ I
lineup =~~
69,000(0.1606)(7.9633)(0.1187)
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]10,475
.EN
.RE
Key points:
.IP \(bu 3
It is important to understand the pattern of cash flows before attempting the
calculation and the cash flow diagrams is useful visual aid.
.LP
