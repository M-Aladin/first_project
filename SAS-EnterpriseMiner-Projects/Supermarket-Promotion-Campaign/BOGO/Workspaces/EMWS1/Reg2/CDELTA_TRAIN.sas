if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'AFFLUENCEGRADE'
'DAYCAREPRODUCTS'
'LOYALTYCLASS'
'MOBILEAPPLICATIONS'
'NIGHTREPAIRPRODUCTS'
'PREVIOUSCAMPAIGN'
'REP_AGE'
'REP_GENDER'
'TOTALSPEND'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg2: Rejected using stepwise selection";
end;
end;
