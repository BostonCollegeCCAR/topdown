

//net interest income
reg bhck4074 mortgagerate_AD primerate_AD HPIL_AD
predict xb
rename xb NIIadverse
reg bhck4074 mortgagerate_SA primerate_SA HPIL_SA
predict xb
drop NIIseverelyadverse
rename xb NIIseverelyadverse
reg bhck4074 mortgagerate_BL primerate_BL HPIL_BL
predict xb
rename xb NIIbaseline

//interest income

//baseline
reg bhck4107 mortgagerate_BL YTY_BL v10_BL BBBcorp_BL CPIinflation_BL
predict xb
rename xb interestincome_BL

//adverse
reg bhck4107 mortgagerate_AD YTY_AD v10_AD BBBcorp_AD CPIinflation_AD
predict xb
rename xb interestincome_AD

//severely adverse
reg bhck4107 mortgagerate_SA YTY_SA v10_SA BBBcorp_SA CPIinflation_SA
predict xb
rename xb interestincome_SA

//noninterestincome

//baseline
reg bhck4079 RGDPgrowth_BL UR_BL
predict xb
rename xb noninterestincome_BL

//adverse
reg bhck4079 RGDPgrowth_AD UR_AD
predict xb
rename xb noninterestincome_AD

//severely adverse
reg bhck4079 RGDPgrowth_SA UR_SA
predict xb
rename xb noninterestincome_SA

//noninterestexpense

//baseline
reg bhck4093 UR_BL CREPI_BL
predict xb
rename xb noninterestexpense_BL

//adverse
reg bhck4093 UR_AD CREPI_AD
predict xb
rename xb noninterestexpense_AD

//severely adverse
reg bhck4093 UR_SA CREPI_SA
predict xb
rename xb noninterestexpense_SA



tsline interestincome_BL interestincome_AD interestincome_SA
tsline noninterestincome_BL noninterestincome_AD noninterestincome_SA
tsline noninterestexpense_BL noninterestexpense_AD noninterestexpense_SA
tsline NIIadverse NIIseverelyadverse NIIbaseline



