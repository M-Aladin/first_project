if upcase(NAME) = "ADVERTISEMENTZONE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "CAMPAIGNVIEWEDEMAIL" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "CLEANSERPRODUCTS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "CLUSTERGROUP" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "LOTIONPRODUCTS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "LOYALTYCLASS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "LOYALTYTIME" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "NIGHTREPAIRPRODUCTS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "PREVIOUSCAMPAIGN" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_TARGETBUY0" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "Q_TARGETBUY1" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "REGION" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "TIMESINCELASTPURCHASE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
