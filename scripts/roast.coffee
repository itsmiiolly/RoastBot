Insults = ["Your momas so fat she apears on radar",
"wipe your mouth. There's still a tiny bit of bullshit around your lips. ",
"if you have something to say, raise your hand and place it over your mouth.",
"yo' Mama is so stanky, when she walks by, trash plugs its nose.",
"yo' Mama is so poor, she goes to Kentucky Fried Chicken to lick other people's fingers.",
"I'm trying to see things from ",
"yo' Mama is so fat, her stomach gets home 30 minutes before she does.",
"What's the difference between "]
TheUltimateRoastp2 = "'s point of view, but I can't get my head that far up my ass."
TheUltimateRoastp3 = " and an ironing board?...An ironing board's legs are hard to open"
module.exports = (robot) ->
    robot.hear /roast (.*)/i, (res) ->
        User = res.match[1]
        TheInsult = res.random Insults

        if TheInsult == Insults[5]
            res.send " "+TheInsult+"@"+User+TheUltimateRoastp2
        else if TheInsult == Insults[7]
            res.send " "+TheInsult+"@"+User+TheUltimateRoastp3
        else
            res.send "@"+User+" "+TheInsult
