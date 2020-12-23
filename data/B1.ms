.I
.\" .so Format/format.tmac
.\" .so Format/equation.tmac
.\" .so Format/pic.tmac
.\" .
.\" .nr HM 0.7i
.\" .APPENDIX_SUB "INVESTMENT COST EQUATIONS - TIME PERIOD 1"
.\" .
.\" .SH 1
.\" AIA or Yearly Allowance
.\" .XS
.\" .ti 0.25i
.\" AIA or Yearly Allowance
.\" .XE
.\" .LP
The flow chart for the AIA when it is assumed there is a continuing pool is as
follows:
.PS C
.ps 8

CCTF: box "#space 0 CC = +- ^I^ left [ ^cctfaia right ] #" width 1.3 height 0.5 rad 0.3
		arrow down 0.3 at CCTF.s

Q1: rhombus(0.5, 0.9) "Is there a salvage value?"
		line left 0.1 at Q1.w
		yes
		line left 1.1
		line down 0.2
		task(1.8, 0.5, "Decrease CC by the PV of the" "salvage value ")
		Y1: arrow down 0.3
		line right 0.1 at Q1.e
		no
		line right 1.1
		arrow down 0.9
		F: fin

SV: box "#space 0 salvage #" with .n at Y1.end
		line down 0.3 at SV.s
		line down 0.2
		task(1.5, 0.5, \
		"Increase CC by the PV" \
		" of the tax savings lost" \
		"equal to the salvage value ")
		SV1: arrow down 0.5

PVS: box "#space 0 pvs #" width 1.8 height 0.8 with .n at SV1.end
		arrow right 0.6 at PVS.e

Q2: rhombus(0.5, 0.9) "Does the salvage value" "exceed the invesment?"
		line up 0.1 at Q2.n
		no
		line up 1.35
		AR1: arrow right to F.w
		
		line right 0.1 at Q2.e
		yes
		line right 0.35
		T1: task(1.5, 0.5,  "Increase CC by the PV of the" "capital gains ")
		Y2: arrow up 0.5 at T1.n

CGT: box "#space 0 cgt #" width 1.1 height 0.6 with .s at Y2.end
		AR2: arrow from CGT.n to F.s

.PE
.SH
Flow chart
.LP
The flow chart shows the available options when using the AIA. The key points
to understand in the logic of the flow chart are:
.IP \(bu 3
The flow chart starts by calculating the tax benefits arising from an
investment to infinity using the #CCTF sub AIA#. This is because HMRC is clear
that a balancing allowance in your main rate or special rate pool can only be
generated by the cessation of your business activities. This effectively
dislocates the tax benefits arising from the asset with its ownership and traps
any remaining value associated with a given asset after disposal in the
appropriate pool.
.IP \(bu
The continuous pool is designed with an infinite life, as previously stated the
#CCTF sub AIA# calculates tax savings to infinity, which means to establish the
tax savings at any moment in time, typically at the point the asset is disposed
of, we have to add back the tax savings lost equal to the salvage value at that
time using the equation, #pvs#. 
.IP \(bu
The flow chart assumes that the pool continues without ever becoming zero, and
there is always sufficient funds in the pool to cover the salvage value of any
asset without generating a balancing charge.
.IP \(bu
As it is presumed that there is always sufficient value in the pool to deduct
any salvage value a capital gains charge is always incurred without a balancing
charge.
.IP \(bu
The capital gains tax is calculated using the rate of tax used in the rest of
the equations. The reasons for this have been discussed at the beginning of
this appendix. The basic premise for this decision is that the capital gain
will typically happen far enough in the future, when the rate of taxation is
not know, limiting the impact on the investment cost.
.
.SH
Constants
.LP
To aid the calculations we are going to state the value of the the two CCTFs
below:
.EQ I
CCTF sub AIA lm cctfaia
=~~
1 - 0.2 over {  1 + 0.15  }
=~~
0.8261
.EN
.EQ I
CCTF sub WDA lineup =~~ cctf
=~~
1 - 0.18(0.2) over {   0.15 + 0.18 }
=~~
0.8909
.EN
The calculation for the CCTF will be covered in detail so do not fret that you
have not been given an explanation at this stage.
.
.SH 2
AIA - No salvage value
.LP
We are going to work through an example using both a table and then some
mathematics. Many people feel more comfortable with the table and it can help
in making the equations seem slightly less abstract.
.LP
The CCTF is an equation that can be used to calculate the investment cost. The
premise of the CCTF is that the tax savings are calculated to infinity and
subtracted from the investment to leave the investment cost.
.LP
For the purpose of the following examples please assume the following:
.IP \(bu 3
The operating cash flows associated with the capital investment, if shown, are
\[Po]25,000 for each year.
.IP \(bu 3
The working capital investment, if shown, is \[Po]8,000.
.IP \(bu
The amount in the pool 2 years prior to the new investment was \[Po]20,000.
.LP
In Appendix A we examined the impact of the WDA on the tax. The tax savings to
infinity before discounting were found to be:
.EQ I
"Tax savings" lm Idt
.EN
As the AIA can allows for 100% write down in the first year the equation can be
reframed for this example as:
.EQ I
"Tax savings" lm Idt
.EN
.sp -0.6v
.EQ I
lineup =~~
15,000(1)(0.2)
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]3,000
.EN
We can now construct the table below using our example scenario:
.TS
tab (#) center;
lp-2 cp-2 cp-2 cp-2 cp-2 cp-2 cp-2.
#_#_#_#_#_#_
#CF0#CF1#CF2#CF3#CF4#CF5
.T&
lp-2 
a n n n n n n .
_
CASH FLOWS#
Equipment investment#(15,000)####
Working capital#(8,000)####
Operating cash flow##25,000#25,000#25,000#25,000#25,000
Tax @ 20%##(5,000)#(5,000)#(5,000)#(5,000)#(5,000)
Salvage value#####
Working capital return######8,000
Tax savings - AIA##3,000
#_#_#_#_#_#_
Net cash flow##23,000#20,000#20,000#20,000#28,000
.sp 3p
.T&
lp-2 l l l l  
a c c c c c 
a n n n n n .
DISCOUNTED CASH FLOW#
Discount factor @15%#1#0.870#0.756#0.658#0.572#0.497
#_#_#_#_#_#_
Present value#(23,000)#20,010#15,120#13,160#11,440#13,916
_
NPV#\[Po]50,646
_
.TE
The CCTF transfers the PV of the tax benefit to the investment as it arises
from the use of a capital allowance and would therefore not be available
without a capital investment.
.LP
.KS
The graph below is a diagrammatic representation of the pool when the AIA is
utilised. The graph starts 2 years prior to our \[Po]15,000 investment at which
time the pool value was \[Po]20,000. The pool has subseqently been written down
at 18% per annum and the value in the pool at zero on the #x# axis is
theoretically \[Po]13,448
.
.sp -2
.G1
frame invis ht 1.5 wid 4.5 left solid bot solid
label left "Pool" unaligned "Value" "\[Po]" left .4
label bot "Years" 

###############################################################################
# Variables that CAN be changed.
###############################################################################
H=20000					# Existing balance in the pool
I=15000 				# Investment, this is always at year zero
S=0000 				# Salvage value. If set to 99999 then UCC=S in single asset
D=0.18 					# Declining balance rate
Y=5 						# Year at which disposal takes place
E=15 						# End of the time period
W=2 						# Number of prior years
T=1							# 1 = AIA
F=0							# 1 = single asset pool

###############################################################################
# Axis
###############################################################################
# Sets the size axis - single asset pool
if F != 0 then {
	E=8; H=0; W=0
	coord x 0,E y 0,I*(1 + 0.1)
	ticks bot out from 0 to E by 1
}

# Sets the size axis - prior years W = 0 
if W == 0 then {
	coord x 0,E y 0,H+I
	ticks bot out from 0 to E by 2
	ticks bot out at E
} else {
	coord x -W,E y 0,H + I
	ticks bot out from -W to E by 2
	ticks bot out at 0
}

#circle at Y,14321 radius .05 	# For debugging
###############################################################################
# Capital allowance curves
###############################################################################
# $1 = solid or dotted etc
# $2 = from period
# $3 = to period
# $4 = value,  prior years (H), value (v) etc 
# $5 = This value is typically zero but ensures the curve starts at power 0

# Allowance curve calculation
define pa X ( $1 * (1 - D )^( $2 ) )  X

define capcurve X
draw cc $1 thickness 1.5
for i from $2 to $3 by +1 do {
	next cc at i, pa($4,i+$5)
}
X

# Draws straight line before salvage
define flat X
draw ft $1 thickness 1.5
for i from $2 to $3 by +1 do {
	next ft at i,$4
}
X

# Draws a circle at the point on the graph after write down or salvage
define marker X
for i from $1 to $2 by +1 do {
	circle at i,pa($3,i+$4) radius 0.015
}
X

#marker(-W, E, H, W)
#flat(solid, Y-1, Y, S)
###############################################################################
# Colored lines
###############################################################################
# $1 = type - solid, dotted etc
# $2 = color
# $3 = thickness - usually 2.5
# $4 = from x
# $5 = from y
# $6 = to x
# $7 = to y

define coline X
#line solid color "$1" thickness $2 from $3,$4 to $5,$6
line $1 color "$2" thickness $3 from $4,$5 to $6,$7
X

###############################################################################
# Legend
###############################################################################
# Variables for the ledger
lby=(H+I)				#y axis (height)
lbxf=E*0.65			#from x axis
lbxt=E*0.70			#to x axis

# Permanent parts of the ledger.
coline(solid, black, 2.5, lbxf,lby, lbxt,lby)
coline(dotted, black, 2.5, lbxf,lby*0.9, lbxt,lby*0.9)
"Pool value" size -1 ljust at lbxt+0.5,lby
"Pool before change" size -1 ljust at lbxt+0.5,lby*0.9

#$1 = Color
#$2 = Place marker 
#$3 = Description
define legend X
coline(solid, $1, 2.5, lbxf,lby*$2, lbxt,lby*$2)
"$3" size -1 ljust at lbxt+0.5,lby*$2
X

###############################################################################
# Previous years
###############################################################################
if W == 0 then {						# If W = 0 do nothing. Avoids initialization error.
} else {
	for i from -W to 0 by +1 do
	{
		capcurve(solid, -W, 0, H, W)  #W required to get power to start at 0
	}
}

###############################################################################
# Variables that mark positions on the curves
###############################################################################
# Pool value at year 0 before new investment
t=pa(H,W)

# Pool value after investment at year 0
v=pa(H,W)+I

# Pool value before salvage at year Y
u=pa(v,Y)
ux=pa(v,Y-1)

# Pool value after salvage at year Y
z=pa(v,Y)-S

# Pool value after salvage at year Y-1
zx=ux-S

# Pool value at year Y if AIA is utilised
q=pa(t,Y)

# Pool value at year Y-1 if AIA is utilised
qx=pa(t,Y-1)

# Pool value at year Y if AIA is utilised - after salvage
n=pa(t,Y)-S

# Pool value at year Y-1 if AIA is utilised - after salvage
nx=pa(t,Y-1)-S

###############################################################################
# The graph
###############################################################################
# if AIA = yes && single asset pool = no && salvage = 0
if T == 1 && F == 0 && S == 0 then {
		# Vertical line investment
		coline(solid, blue, 2.5, 0,t, 0,t+I)
		legend(blue, 0.8,New investment)

		# Solid line from year 0 to end
		capcurve(solid, 0, E, t, 0) # line year 0 to Y

} else {
}

# if AIA = yes && single asset pool = no && salvage > 0
if T == 1 && F == 0 && S != 0 then {
		# Vertical line investment
		coline(solid, blue, 2.5, 0,t, 0,t+I)
		legend(blue, 0.8,New investment)

		capcurve(solid, 0, Y-1, t, 0) # line year 0 to Y-1
		flat(solid, Y-1, Y, qx)

		# Draws marker circles   
		if W == 0 then {
			marker(1, Y-1, H, 0)
		} else { 
			marker(-W+1, Y-1, H, W)
		}

		if S <= qx then {
			# circle at Y,n radius .15 	# For debugging
			# Vertical line salvage
			coline(solid, green, 2.5, Y,qx, Y,nx)
			legend(green, 0.7,Salvage value)

			# Declining balance line after salvage year Y to end
			capcurve(solid, Y, E, nx, -Y)

			# Theoretical line after salvage year Y to end
			capcurve(dotted, Y-1, E, qx, -Y+1)

			} else {

				# Vertical line salvage
				coline(solid, green, 2.5, Y,S, Y,0)
				legend(green, 0.7,Salvage value)

				# Vertical line balancing charge
				coline(solid, red, 2.5, Y+(2/12),qx, Y+(2/12),S)
				legend(red, 0.6,Balancing charge)

				# Theoretical line after salvage year Y to end
				capcurve(dotted, Y-1, E, qx, -Y+1)

			}

} else {
}


# if AIA = no && single asset pool = no && salvage = 0
if T == 0 && F == 0 && S == 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, E, v, 0)

	# Theoretical line before new investment at year 0 to end of time period.
	capcurve(dotted, 0, E, t, 0)

} else {
}

# if AIA = no && single asset pool = no && salvage > 0
if T == 0 && F == 0 && S != 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, Y-1, v, 0)
	flat(solid, Y-1, Y, ux)

		# Draws marker circles.
		if W == 0 then {
			marker(1, Y-1, H+I, 0)
		} else { 
			marker(1, Y-1, v, 0)
		}

		if S <= ux then {
			# circle at Y,n radius .15 	# For debugging
			# Vertical line salvage
			coline(solid, green, 2.5, Y,ux, Y,zx)
			legend(green, 0.7,Salvage value)

			# Declining balance line after salvage year Y to end
			capcurve(solid, Y, E, zx, -Y)

			# Theoretical line after salvage year Y to end
			capcurve(dotted, Y-1, E, ux, -Y+1)

			} else {

				# Vertical line salvage
				coline(solid, green, 2.5, Y,S, Y,0)
				legend(green, 0.7,Salvage value)

				# Vertical line balancing charge
				coline(solid, red, 2.5, Y+0.25,ux, Y+0.25,S)
				legend(red, 0.6,Balancing charge)

				# Theoretical line after salvage year Y to end
				capcurve(dotted, Y-1, E, ux, -Y+1)

			}

} else {
}


# if AIA = no && single asset pool = yes && salvage = 0
if F == 1 && S == 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, Y-1, v, 0)
	flat(solid, Y-1, Y, ux)

	marker(1, Y-1, I, 0)

	coline(solid, orange, 2.5, Y,zx, Y,0)
	legend(orange, 0.7,Balancing allowance)

} else {
}

if F == 1 && S != 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, Y-1, v, 0)
	flat(solid, Y-1, Y, ux)

	marker(1, Y-1, I, 0)

		#circle at Y,ux radius .05 	# For debugging
	
		if S < ux && S != 99999 then {

			# circle at Y,n radius .15 	# For debugging
			# Vertical line salvage
			coline(solid, green, 2.5, Y,ux, Y,zx)
			legend(green, 0.7,Salvage value) 

			coline(solid, orange, 2.5, Y,zx, Y,0)
			legend(orange, 0.6,Balancing allowance)

			} else {
			}

		if S > ux && S != 99999 then {
				# Vertical line salvage
				coline(solid, green, 2.5, Y,S, Y,0)
				legend(green, 0.7,Salvage value)

				# Vertical line balancing charge
				coline(solid, red, 2.5, Y+(2/12),ux, Y+(2/12),S)
				legend(red, 0.6,Balancing charge)
			} else {
			}

		if S == 99999 then {
				# Vertical line salvage
				coline(solid, green, 2.5, Y,ux, Y,0)
				legend(green, 0.7,Salvage value)
			} else {
			}

} else {
}
.G2
.KE
.
The graph shows that the AIA is registered in the pool but does not change the
on going writing down allowance as the purpose of the AIA is to allow a
business to take the entire tax benefits of an investment upfront. 
.
.SH
Mathematics - AIA no salvage value
.LP
If the flow chart is followed for the scenario where there is no salvage value
we have the following equation:
.
.IP "Investment Cost" 15
The first stage is to establish the after tax, after salvage present value of
the investment for the time the asset is owned, which is #5# years in this
instance.
.
The basic premise for the AIA and the yearly allowance is that the investment
cost is equal to:
.EQ I
Investment( 1 - "tax rate" )
.EN
The tax benefits accruing to an investment under AIA or the yearly allowance
can be written as:
.EQ I
It\(dg
.EN
.FS
\(dg We previously expressed the tax savings as #Idt#, however, as we have
shown that #d# is equal to 1 it can be removed from the equation to leave #It#.
.FE
However, the discounting starts at either time period one or time period two.
So we need to add a denominator that includes the discounting for the
appropriate time period. If the tax benefits are to accrue in time period one
the equation will become:
.EQ I
It over { 1 + i }
.EN
The investment cost is equal to the investment less the tax benefits:
.EQ I
I - left [ It over { 1 + i } right ]
.EN
This can be factored to give the CCTF:
.EQ I
CCFT sub AIA =~~ left [ cctfaia right ]
.EN
The investment cost can now be calculated as:
.EQ I
"Investment cost" lm -I left [ CCTF sub AIA right ]
.EN
.sp -0.6v
.EQ I
lineup =~~
-15,000^ left [ ncctfaia(0.2, 0.15) right ]
.EN
.sp -0.6v
.EQ I
lineup =~~
-15,000 left [ 0.8261 right ]
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]12,391
.EN
.
.KS
.IP "Operating Cash Flow" 15
This is an annuity and we are going to use the equation from the section on
Engineering Economics using the notation for a Uniform Series Present Worth
(P/A, i%, n).
.
.EQ I
"Operating cash flow" sub P lm 25,000(P/A, 15%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
25,000
~ left [ {  (1 + 0.15 ) sup 5 -1  } over { 0.15( 1 + 0.15 ) sup 5  } right ]
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]83,804
.EN
.KE
.IP "Tax" 15
As the AIA has has been included in the investment cost via the CCTF the tax
can be calculated as an annuity using the Uniform Series Present Worth (P/A,
i%, n).
.EQ I
Tax sub P lineup =~~
"Op cash flow" times ~^ ( "tax rate" ) times ~^ (P/A, 15%, 5) 
.EN
.sp -0.6v
.EQ I
lineup =~~
-25,000(0.2) nuspw(0.15, 5,) 
.EN
.sp -0.6v
.EQ I
lineup =~~
-25,000(0.2)(3.352)
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]16,761
.EN
.
.IP "Working Capital" 15
The working capital is made up of the initial investment of 8,000, and the
release of the same amount in year 5, which will need to be discounted using
the factor for the Single Payment Present Worth (P/F, i%, n).
.
.EQ I
"Working capital" sub P lineup =~~
-8,000 + 8,000(P/F, 15%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
-8,000 + 8,000 ( 1 + 0.15 ) sup -5
.EN
.sp -0.6v
.EQ I
lineup =~~
-4,023
.EN
.IP "NPV" 15
The Net Present Value is the sum of all of the cash inflow and outflows:
.EQ I
NPV lineup =~~
-12,391 + 83.804 - 16,761 - 4,023
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]50,629
.EN
With the use of a few equations we have show that we can eliminate the need for
all of the tables and the CCTF was established as:
.EQ I
CCTF sub AIA lm
left [ cctfaia right ] 
.EN
.
.SH 2
AIA - Salvage value
.LP
We will now look at a scenario where there is a salvage value. We are not going
to move away from calculating the NPV and focus only on the tax benefits
associated with an investment by constructing a table, a graph and by examining
the maths.
.LP
Please assume the following for this example:
.IP \(bu 3
The capital investment is \[Po]25,000.
.IP \(bu
The salvage value is \[Po]10,000.
.IP \(bu
The amount in the pool 2 years prior to the new investment was \[Po]60,000.
.LP
The only way to calculate the tax savings lost in the year 5 is to use the
equation from the flow chart without the discounting as the table includes a
discount factor.
.EQ I
"Tax savings lost" lm -S times ~^ dt over { i + d  }
.EN
.sp -0.6v
.EQ I
lineup =~~
-10,000 times ~^ 0.18(0.2) over { 0.15 + 0.18 }
.EN
.sp -0.6v
.EQ I
lineup =~~
-10,000 times ~^ 0.10909
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]1,091
.EN
.
We can now construct the table below for our scenario:
.TS
tab (#) center;
lp-2 cp-2 cp-2 cp-2 cp-2 cp-2 cp-2.
#_#_#_#_#_#_
#CF0#CF1#CF2#CF3#CF4#CF5
.T&
lp-2 
a n n n n n n .
_
CASH FLOWS#
Equipment investment#(25,000)####
Salvage value######10,000
Tax savings - AIA##5,000####
Tax savings - lost######(1,091)
#_#_#_#_#_#_
Total##5,000####8,909
.sp 3p
.T&
lp-2 l l l l  
a c c c c c 
a n n n n n .
DISCOUNTED CASH FLOW#
Discount factor @15%#1#0.870#0.756#0.658#0.572#0.497
#_#_#_#_#_#_
Present value#(25,000)#4,350####4,428
_
Investment cost#(\[Po]16,222)
_
.TE
From the information above we can construct the graph below to show the impact
on the pool.
.sp -2
.G1
frame invis ht 1.5 wid 4.5 left solid bot solid
label left "Pool" unaligned "Value" "\[Po]" left .4
label bot "Years" 

###############################################################################
# Variables that CAN be changed.
###############################################################################
H=60000					# Existing balance in the pool
I=25000 				# Investment, this is always at year zero
S=10000 				# Salvage value. If set to 99999 then UCC=S in single asset
D=0.18 					# Declining balance rate
Y=5 						# Year at which disposal takes place
E=15 						# End of the time period
W=2 						# Number of prior years
T=1							# 1 = AIA
F=0							# 1 = single asset pool

###############################################################################
# Axis
###############################################################################
# Sets the size axis - single asset pool
if F != 0 then {
	E=8; H=0; W=0
	coord x 0,E y 0,I*(1 + 0.1)
	ticks bot out from 0 to E by 1
}

# Sets the size axis - prior years W = 0 
if W == 0 then {
	coord x 0,E y 0,H+I
	ticks bot out from 0 to E by 2
	ticks bot out at E
} else {
	coord x -W,E y 0,H + I
	ticks bot out from -W to E by 2
	ticks bot out at 0
}

#circle at Y,14321 radius .05 	# For debugging
###############################################################################
# Capital allowance curves
###############################################################################
# $1 = solid or dotted etc
# $2 = from period
# $3 = to period
# $4 = value,  prior years (H), value (v) etc 
# $5 = This value is typically zero but ensures the curve starts at power 0

# Allowance curve calculation
define pa X ( $1 * (1 - D )^( $2 ) )  X

define capcurve X
draw cc $1 thickness 1.5
for i from $2 to $3 by +1 do {
	next cc at i, pa($4,i+$5)
}
X

# Draws straight line before salvage
define flat X
draw ft $1 thickness 1.5
for i from $2 to $3 by +1 do {
	next ft at i,$4
}
X

# Draws a circle at the point on the graph after write down or salvage
define marker X
for i from $1 to $2 by +1 do {
	circle at i,pa($3,i+$4) radius 0.015
}
X

#marker(-W, E, H, W)
#flat(solid, Y-1, Y, S)
###############################################################################
# Colored lines
###############################################################################
# $1 = type - solid, dotted etc
# $2 = color
# $3 = thickness - usually 2.5
# $4 = from x
# $5 = from y
# $6 = to x
# $7 = to y

define coline X
#line solid color "$1" thickness $2 from $3,$4 to $5,$6
line $1 color "$2" thickness $3 from $4,$5 to $6,$7
X

###############################################################################
# Legend
###############################################################################
# Variables for the ledger
lby=(H+I)				#y axis (height)
lbxf=E*0.65			#from x axis
lbxt=E*0.70			#to x axis

# Permanent parts of the ledger.
coline(solid, black, 2.5, lbxf,lby, lbxt,lby)
coline(dotted, black, 2.5, lbxf,lby*0.9, lbxt,lby*0.9)
"Pool value" size -1 ljust at lbxt+0.5,lby
"Pool before change" size -1 ljust at lbxt+0.5,lby*0.9

#$1 = Color
#$2 = Place marker 
#$3 = Description
define legend X
coline(solid, $1, 2.5, lbxf,lby*$2, lbxt,lby*$2)
"$3" size -1 ljust at lbxt+0.5,lby*$2
X

###############################################################################
# Previous years
###############################################################################
if W == 0 then {						# If W = 0 do nothing. Avoids initialization error.
} else {
	for i from -W to 0 by +1 do
	{
		capcurve(solid, -W, 0, H, W)  #W required to get power to start at 0
	}
}

###############################################################################
# Variables that mark positions on the curves
###############################################################################
# Pool value at year 0 before new investment
t=pa(H,W)

# Pool value after investment at year 0
v=pa(H,W)+I

# Pool value before salvage at year Y
u=pa(v,Y)
ux=pa(v,Y-1)

# Pool value after salvage at year Y
z=pa(v,Y)-S

# Pool value after salvage at year Y-1
zx=ux-S

# Pool value at year Y if AIA is utilised
q=pa(t,Y)

# Pool value at year Y-1 if AIA is utilised
qx=pa(t,Y-1)

# Pool value at year Y if AIA is utilised - after salvage
n=pa(t,Y)-S

# Pool value at year Y-1 if AIA is utilised - after salvage
nx=pa(t,Y-1)-S

###############################################################################
# The graph
###############################################################################
# if AIA = yes && single asset pool = no && salvage = 0
if T == 1 && F == 0 && S == 0 then {
		# Vertical line investment
		coline(solid, blue, 2.5, 0,t, 0,t+I)
		legend(blue, 0.8,New investment)

		# Solid line from year 0 to end
		capcurve(solid, 0, E, t, 0) # line year 0 to Y

} else {
}

# if AIA = yes && single asset pool = no && salvage > 0
if T == 1 && F == 0 && S != 0 then {
		# Vertical line investment
		coline(solid, blue, 2.5, 0,t, 0,t+I)
		legend(blue, 0.8,New investment)

		capcurve(solid, 0, Y-1, t, 0) # line year 0 to Y-1
		flat(solid, Y-1, Y, qx)

		# Draws marker circles   
		if W == 0 then {
			marker(1, Y-1, H, 0)
		} else { 
			marker(-W+1, Y-1, H, W)
		}

		if S <= qx then {
			# circle at Y,n radius .15 	# For debugging
			# Vertical line salvage
			coline(solid, green, 2.5, Y,qx, Y,nx)
			legend(green, 0.7,Salvage value)

			# Declining balance line after salvage year Y to end
			capcurve(solid, Y, E, nx, -Y)

			# Theoretical line after salvage year Y to end
			capcurve(dotted, Y-1, E, qx, -Y+1)

			} else {

				# Vertical line salvage
				coline(solid, green, 2.5, Y,S, Y,0)
				legend(green, 0.7,Salvage value)

				# Vertical line balancing charge
				coline(solid, red, 2.5, Y+(2/12),qx, Y+(2/12),S)
				legend(red, 0.6, Balancing charge)

				# Theoretical line after salvage year Y to end
				capcurve(dotted, Y-1, E, qx, -Y+1)

			}

} else {
}


# if AIA = no && single asset pool = no && salvage = 0
if T == 0 && F == 0 && S == 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, E, v, 0)

	# Theoretical line before new investment at year 0 to end of time period.
	capcurve(dotted, 0, E, t, 0)

} else {
}

# if AIA = no && single asset pool = no && salvage > 0
if T == 0 && F == 0 && S != 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, Y-1, v, 0)
	flat(solid, Y-1, Y, ux)

		# Draws marker circles.
		if W == 0 then {
			marker(1, Y-1, H+I, 0)
		} else { 
			marker(1, Y-1, v, 0)
		}

		if S <= ux then {
			# circle at Y,n radius .15 	# For debugging
			# Vertical line salvage
			coline(solid, green, 2.5, Y,ux, Y,zx)
			legend(green, 0.7,Salvage value)

			# Declining balance line after salvage year Y to end
			capcurve(solid, Y, E, zx, -Y)

			# Theoretical line after salvage year Y to end
			capcurve(dotted, Y-1, E, ux, -Y+1)

			} else {

				# Vertical line salvage
				coline(solid, green, 2.5, Y,S, Y,0)
				legend(green, 0.7,Salvage value)

				# Vertical line balancing charge
				coline(solid, red, 2.5, Y+0.25,ux, Y+0.25,S)
				legend(red, 0.6, Balancing charge)

				# Theoretical line after salvage year Y to end
				capcurve(dotted, Y-1, E, ux, -Y+1)

			}

} else {
}


# if AIA = no && single asset pool = yes && salvage = 0
if F == 1 && S == 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, Y-1, v, 0)
	flat(solid, Y-1, Y, ux)

	marker(1, Y-1, I, 0)

	coline(solid, orange, 2.5, Y,zx, Y,0)
	legend(orange, 0.7, Balancing allowance)

} else {
}

if F == 1 && S != 0 then {
	# Vertical line new investment
	coline(solid, blue, 2.5, 0,t, 0,t+I)
	legend(blue, 0.8,New investment)

	# Solid line Year 0 
	capcurve(solid, 0, Y-1, v, 0)
	flat(solid, Y-1, Y, ux)

	marker(1, Y-1, I, 0)

		#circle at Y,ux radius .05 	# For debugging
	
		if S < ux && S != 99999 then {

			# circle at Y,n radius .15 	# For debugging
			# Vertical line salvage
			coline(solid, green, 2.5, Y,ux, Y,zx)
			legend(green, 0.7,Salvage value) 

			coline(solid, orange, 2.5, Y,zx, Y,0)
			legend(orange, 0.6, Balancing allowance)

			} else {
			}

		if S > ux && S != 99999 then {
				# Vertical line salvage
				coline(solid, green, 2.5, Y,S, Y,0)
				legend(green, 0.7,Salvage value)

				# Vertical line balancing charge
				coline(solid, red, 2.5, Y+(2/12),ux, Y+(2/12),S)
				legend(red, 0.6, Balancing charge)
			} else {
			}

		if S == 99999 then {
				# Vertical line salvage
				coline(solid, green, 2.5, Y,ux, Y,0)
				legend(green, 0.7,Salvage value)
			} else {
			}

} else {
}
.G2
.
The graph shows a number of important concepts:
.IP \(bu 3
The pool is constantly being written down by the governments prescribed
writing down allowance currently set at 18%.
.IP \(bu
The new investment which utilises the AIA is shown in the pool, in blue, but
does not affect the curve as 100% is written down as soon as the investment is
recorded.
.IP \(bu
The disposal of the asset in this instance for \[Po]10,000 must be deducted
from the pool. This deduction is shown on the graph with the green vertical
line. This deduction causes tax savings to be lost which are equal to the
salvage value.
.IP \(bu
The tax savings lost are represented by the difference between the dotted line
showing the pool if there was no salvage value and the solid line after the
salvage deduction.
.
.SH
Mathematics - AIA salvage value
.LP
.UL "Investment cost - negative"
.RS
.LP
We will now work on the maths to establish the CCTF using the information in
the flow chart which yields the equation below:
.EQ I
"Investment cost" lm 
-I left [ CCTF sub AIA right ]
+
S over { ( 1 + i ) sup n }
-
pvs
.EN
We are going to focus on the second and third terms of the equation: 
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+
S over { ( 1 + i ) sup n }
-
pvs
.EN
The expression can better written as:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+
S over { ( 1 + i ) sup n }
-
Sdt over {  ( i + d ) ( 1 + i )  } 
.EN
We are going to add an additional grouping symbol, so that we can consolidate
the two terms. Before doing so we will state the rules surrounding parenthesis
for clarity:
.RS
.IP "Rule 1:" 9
When removing parenthesis preceded by a plus sign, do not change the sign of
the enclosed terms.
.IP "Rule 2:" 9
When removing parenthesis preceded by a minus sign drop the minus sign and
parenthesis, and change the sign of each enclosed term\(dg.
.RE
.FS
\(dg It is important to remember that there are two signs in mathematics. The
sign of operation, representing addition and subtraction, and the sign of
quality, informing us whether the number is positive or negative. It is
customary when writing additions horizontally to drop the sign of operation and
use only the signs of quality, furthermore if the first number is + the sign
maybe omitted. The removal of a grouping symbol is the removal of the sign of
operation. In the expression # a - ( -b + c ) = a + b -c # the sign associated
with #b# is explicit and in the expression # a - ( b + c ) = a - b
- c # the plus sign associated with #b# is implicit. The basic premise of Rules
1 and 2 with regards to the sign of operation and the first sign, implied or
otherwise, is if the sign of operation and quality are the same then they can
be consolidated into a + sign, and if they are different a - sign.
.FE
As we do not wish to make changes to the terms inside the brackets we will
precede the expression with a + sign:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ left [ 
S over { ( 1 + i ) sup n }
-
Sdt over {  ( i + d ) ( 1 + i )  } 
right ]
.EN
We can now replace the denominator encompassing the discounting with the
Single Payment Present Worth factor:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ left [ 
S
-
Sdt over {  ( i + d ) } 
right ]
times ~^ 
(P/F, i%, n)
.EN
We can now factor the #S#:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ S^ left [ 
1 - dt over {  ( i + d ) } 
right ]
times ~^ 
(P/F, i%, n)
.EN
The investment cost can now be restated as:
.EQ I
"Investment cost" lm 
-I left [ CCTF sub AIA right ]
+ S^ left [ 
1 - dt over {  ( i + d ) } 
right ]
times ~^ 
(P/F, i%, n)
.EN
In the future we will establish that # left [ 1 - dt over {  i + d  } right ] #
is the #CCTF sub WDA# which enables us to write the equation as:
.EQ I
lineup =~~
-I left [ CCTF sub AIA right ]
+
S left [ CCTF sub WDA right ]
times ~^
(P/F, i%, n)
.EN
We can now state the equation in full and check the calculation:
.EQ I
"Investment cost" lm
-I^ left [ CCTF sub AIA right ] 
+ S left [ CCTF sub WDA right ]
times ~^
( P/F, %i, n )
.EN
.sp -0.6v
.EQ I
lineup =~~
-25,000^ left [ 0.8261 right ] 
+ 10,000 left [ 0.8909 right ]
times ~^
( P/F, 15%, 5 )
.EN
.sp -0.6v
.EQ I
lineup =~~
-20,653
+ 8,909
times ~^
( 0.4972 )
.EN
.sp -0.6v
.EQ I
lineup =~~
-20,653
+ 4,430
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]16,223
.EN
.RE
.
.UL "Investment cost - positive"
.RS
.LP
The investment cost can be converted into a positive value by either
multiplying by -1 or changing the signs of the two terms:
.EQ I
"Investment cost" lineup =~~
I left [ CCTF sub AIA right ]  - S left [ CCTF sub WDA right ] (P/F, i%, n)
.EN
.sp -0.6v
.EQ I
lineup =~~
20,653
- 4,430
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]16,223
.EN
.RE
.
.SH 2 
AIA - Salvage value with capital gains
.LP
There is no graph for this eventuality as it is simply the same as the last
graph. The logic is that the pool would be large enough to allow the
subtraction of the full salvage value and the capital gains is paid on the
difference between the salvage value and the investment cost. I am not sure how
often this eventuality would occur, however, my lack of imagination is no
reason to not provide the investment cost equation.
.LP
As much as we are using the same scenario as the last example we must of course
increase the salvage value so that it exceeds the initial investment otherwise
there will not be a capital gain. Therefore, we can assume the following for
this example:
.IP \(bu 3
The capital investment is \[Po]25,000.
.IP \(bu
The salvage value is \[Po]35,000.
.IP \(bu
The amount in the pool 2 years prior to the new investment was \[Po]60,000.
This piece of information is not terribly useful without the graph and does not
impact the mathematics.
.LP
.EQ I
"Tax savings lost" lm -S times ~^ dt over { i + d  }
.EN
.sp -0.6v
.EQ I
lineup =~~
-35,000 times ~^ 0.18(0.2) over { 0.15 + 0.18 }
.EN
.sp -0.6v
.EQ I
lineup =~~
-35,000 times ~^ 0.10909
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]3,818
.EN
.
.EQ I
"Capital gains" lineup =~~ - t(S - I)
.EN
.sp -0.6v
.EQ I
lineup =~~
- 0.2(35,000 - 25,000)
.EN
.sp -0.6v
.EQ I
lineup =~~
- 0.2(10,000 )
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]2,000
.EN
.
We can now construct the table below:
.TS
tab (#) center;
lp-2 cp-2 cp-2 cp-2 cp-2 cp-2 cp-2.
#_#_#_#_#_#_
#CF0#CF1#CF2#CF3#CF4#CF5
.T&
lp-2 
a n n n n n n .
_
CASH FLOWS#
Equipment investment#(25,000)####
Salvage value######35,000
Tax savings - AIA##5,000####
Tax savings - lost######(3,818)
Capital gains######(2,000)
#_#_#_#_#_#_
Total##5,000####29,182
.sp 3p
.T&
lp-2 l l l l  
a c c c c c 
a n n n n n .
DISCOUNTED CASH FLOW#
Discount factor @15%#1#0.870#0.756#0.658#0.572#0.497
#_#_#_#_#_#_
Present value#(25,000)#4,350####14,503
_
Investment cost#(\[Po]6,147)
_
.TE
.
.SH
Mathematics - AIA salvage value with capital gains
.LP
.UL "Investment cost - negative"
.RS
.LP
We will now work on the maths to establish the CCTF using the information in
the flow chart which yields the equation below:
.EQ I
"Investment cost" lm
-I left [ CCTF sub AIA right ] +
S over { ( 1 + i ) sup n }
-
pvs
-
cgt
.EN
We are going to focus on the second, third and forth terms of the equation: 
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+
S over { ( 1 + i ) sup n }
-
pvs
-
cgt
.EN
.KS
The expression can be better written as:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ 
S over { ( 1 + i ) sup n }
-
Sdt over {  ( i + d ) ( 1 + i )  } 
-
cgt
.EN
.KE
Add the grouping symbols:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ 
left [ 
S over { ( 1 + i ) sup n }
-
Sdt over {  ( i + d ) ( 1 + i )  } 
-
cgt
right ]
.EN
We can now replace the denominator encompassing the discounting with the
Single Payment Present Worth factor:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ 
left [ 
S 
-
Sdt over {  ( i + d ) } 
-
t( S - I ) 
right ]
times ~^ 
(P/F, i%, n)
.EN
The #S# can now be factored:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ 
S left [ 
1 - dt over {  ( i + d ) } 
-
t( S - I ) 
right ]
times ~^ 
(P/F, i%, n)
.EN
Making use of the fact that # left [ 1 - dt over {  i + d  } right ] # is the
#CCTF sub WDA# the equation can be written as:
.EQ I
lineup {hphantom { -I left [ CCTF sub AIA right ] + ~~^} } 
+ left ( S left [ CCTF sub WDA right ] - t(S - I ) right ) 
times ~^
(P/F, i%, n)
.EN
We can now state the equation in full and check the calculation:
.EQ I
"Investment cost" lm 
-I left [ CCTF sub AIA right ]
+ left ( S left [ CCTF sub WDA right ] - t(S - I ) right ) 
times ~^
(P/F, i%, n)
.EN
.sp -0.6v
.EQ I
lineup =~~
-25,000 left [ 0.8261 right ]
+ left ( 35,000 left [ 0.8909 right ] - 0.2(35,000 - 25,000 ) right ) 
times ~^
(P/F, 15%, 5)
.EN
.sp -0.6v
.EQ I
lineup =~~
-20,653
+ left ( 31,182 - 2,000 ) right ) 
times ~^
(0.4972)
.EN
.sp -0.6v
.EQ I
lineup =~~
-20,653
+ 14,509
.EN
.sp -0.6v
.EQ I
lineup =~~
-\[Po]6,144
.EN
.RE
.
.UL "Investment cost - positive"
.RS
.LP
The investment cost can be converted into a positive value by either
multiplying by -1 or changing the signs of the two terms:
.EQ I
"Investment cost" lineup =~~
I left [ CCTF sub AIA right ]
- left ( S left [ CCTF sub WDA right ] - t(S - I ) right ) 
times ~^ (P/F, i%, n)
.EN
.sp -0.6v
.EQ I
lineup =~~
20,653
- 14,509
.EN
.sp -0.6v
.EQ I
lineup =~~
\[Po]6,144
.EN
.RE

