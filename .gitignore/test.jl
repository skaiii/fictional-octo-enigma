#Ersetzen von NULL-Werten in DataFrames --> Replacement Optional --> Standardmäßig Null
function replaceNAs(df,replacement = 0)
    amount_columns = length(df)
    amount_rows = length(df[1])

    for i = 1:amount_columns
        for j = 1:amount_rows
            if isna(df[j,i])
                df[j,i] = 0 
            end
        end
    end
    
    df
end 
