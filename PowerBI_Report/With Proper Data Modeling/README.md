## 🛠️ DATA MODEL
- **Fact Table**: SessionFact
- **Dimension Tables**: DimDate, DimSession, Tanant

## Relationships
- SessionFact.SessionID to DimSession.SessionID (Many to one)
- SessionFact.DateKey to DimDate.DateKey (Many to one)
- SessionFact.Tenant to Tenant.Tenant (Many to one)
- DimSession.TenantName to Tenant.TenantName (Many to one) (Inactive)

## Measures
- Average Session Time = 
VAR SessionDurations = 
    ADDCOLUMNS(
        VALUES(SessionFact[Session_ID]),
        "SessionDuration",
        DATEDIFF(
            CALCULATE(MIN(SessionFact[DateKey])),
            CALCULATE(MAX(SessionFact[DateKey])),
            MINUTE
        )
    )
RETURN
AVERAGEX(SessionDurations, [SessionDuration])
- Sessions by Hour = 
CALCULATE(
    COUNT(SessionFact[Session_ID])
)
- Sessions per URL = 
COUNT(SessionFact[Session_ID])
