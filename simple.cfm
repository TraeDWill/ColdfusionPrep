<!--Here is a simple usage of Coldfusion-->
<html>
    <head>
        <cfset title = "The Start Of My Coldfusion Journey">
        <cfoutput>#title#</cfoutput>
    </head>
    <body>
        <!---Struct--->
        <cfset player=StructNew()>
        <cfset player.health = "100">
        <cfset player.magic = "100">
        <cfset player.luck = "-2">
        <cfset player.resist = "110">
        <cfloop collection="#player#" item="stats">
            <cfoutput> Player's #player# is #player[stats]#</cfoutput>
        </cfloop>

        <!---Array--->
        <cfset spices = ["Cinnamon", "Chili Powder", "Cayenne Powder", "Paprika"]>
        <cfloop array="spices" index="spice">
            <cfoutput>#spice#</cfoutput>
        </cfloop>

        <!---Query--->
        <cfquery name="players" datasource="playerDatabase">
            SELECT name, level, gold
            FROM WoW
            WHERE level GTE 100
        </cfquery>
        <cfloop query="players">
            <cfoutput>
                Player Name: #players.name#<br /> 
                Player Level: #players.level#<br />
                Player Gold: #players.gold#<br />
            </cfoutput>
        </cfloop>
                    
        <!---Conditional Logic--->
        <cfset myValue = "10">
        <cfif myValue > 11>
            <cfoutput>Winner, winner, chicken dinner</cfoutput>
        <cfelseif myvalue eq "10">
            <cfoutput>Whoa</cfoutput> 
        <cfelse>
            <cfoutput>Bummer dawg</cfoutput>
        </cfif>

    </body>

</html>