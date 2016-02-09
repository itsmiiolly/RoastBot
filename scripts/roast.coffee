insults = ["Your momas so fat she apears on radar",
"wipe your mouth. There's still a tiny bit of bullshit around your lips. ",
"if you have something to say, raise your hand and place it over your mouth.",
"yo' Mama is so stanky, when she walks by, trash plugs its nose.",
"yo' Mama is so poor, she goes to Kentucky Fried Chicken to lick other people's fingers.",
"I'm trying to see things from ",
"yo' Mama is so fat, her stomach gets home 30 minutes before she does.",
"What's the difference between ",
"I was just looking at you, I can’t help but wonder... Was anyone else hurt in the accident?",
"you’re pretty as a picture. I guess that explains why everyone wants to hang you.",
"being ugly is no crime. Good thing too, otherwise you’d be in prison.",
"is a very influential person. I can’t tell you how many people try to emulate this person...at Halloween.",
"-( ͡° ͜ʖ ͡°)╯╲___卐卐卐卐 don't mind me just taking "]

insultConcatenate = "'s point of view, but I can't get my head that far up my ass."
insultConcatenateTwo = " and an ironing board?...An ironing board's legs are hard to open"
insultConcatenateThree = "'s family for a walk"

module.exports = (robot) ->
    robot.hear /roast (.*)/i, (res) ->
        User = res.match[1]

        insultMessage = res.random insults
        if "@" in User
            if insultMessage == insults[5]
                res.send " "+insultMessage+""+User+insultConcatenate
            else if insultMessage == insults[7]
                res.send " "+insultMessage+""+User+insultConcatenateTwo
            else if insultMessage == insults[12]
                res.send ""+insultMessage+""+User+insultConcatenateThree
            else if insultMessage == insults[8]
                res.send ""+User+" "+insultMessage
            else if insultMessage == insults[9]
                res.send ""+User+" "+insultMessage
            else if insultMessage == insults[10]
                res.send ""+User+" "+insultMessage
            else if insultMessage == insults[11]
                res.send ""+User+" "+insultMessage
            else
                res.send ""+User+" "+insultMessage
        else
            if insultMessage == insults[5]
                res.send " "+insultMessage+"@"+User+insultConcatenate
            else if insultMessage == insults[7]
                res.send " "+insultMessage+"@"+User+insultConcatenateTwo
            else if insultMessage == insults[12]
                res.send ""+insultMessage+"@"+User+insultConcatenateThree
            else if insultMessage == insults[8]
                res.send "@"+User+" "+insultMessage
            else if insultMessage == insults[9]
                res.send "@"+User+" "+insultMessage
            else if insultMessage == insults[10]
                res.send "@"+User+" "+insultMessage
            else if insultMessage == insults[11]
                res.send "@"+User+" "+insultMessage
            else
                res.send "@"+User+" "+insultMessage
