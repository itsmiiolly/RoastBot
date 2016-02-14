insults = ["<USER> Your momas so fat she apears on radar",
           "<USER> wipe your mouth. There's still a tiny bit of bullshit around your lips. ",
           "<USER> if you have something to say, raise your hand and place it over your mouth.",
           "<USER> yo' Mama is so stanky, when she walks by, trash plugs its nose.",
           "<USER> yo' Mama is so poor, she goes to Kentucky Fried Chicken to lick other people's fingers.",
           "I'm trying to see things from <USER> but I can't get my head that far up my arse",
           "<USER> yo' Mama is so fat, her stomach gets home 30 minutes before she does.",
           "What's the difference between <USER> and an ironing board?...An ironing board's legs are hard to open",
           "<USER> I was just looking at you, I can’t help but wonder... Was anyone else hurt in the accident?",
           "<USER> you’re pretty as a picture. I guess that explains why everyone wants to hang you.",
           "<USER> being ugly is no crime. Good thing too, otherwise you’d be in prison.",
           "<USER> is a very influential person. I can’t tell you how many people dress up as this person at Halloween.",
           "-( ͡° ͜ʖ ͡°)╯╲___卐卐卐卐 don't mind me just taking <USER>'s family for a walk.",
           "<USER> are you always this stupid, or is today a special occasion?",
           "<USER> yo Momma's so dumb, she bought tickets to Xbox Live.",
           "<USER> it looks like your face caught on fire and someone tried to put it out with a fork.",
           "<USER> don't feel bad. A lot of people have no talent.",
           "<USER> your birth certificate is an apology letter to your parents from the condom factory",
           "What’s the difference between <USER> and eggs? Eggs get laid and you don't.",
           "<USER> I'm not saying I hate you, but I would unplug your life support to charge my phone.",
           "<USER> I bet your brain feels as good as new, seeing that you never use it.",
           "<USER> Your family tree must be a cactus because everybody on it is a prick."]

module.exports = (robot) ->
    robot.hear /roast (.*)/i, (res) ->
        user = res.match[1].toLowerCase()
        if "@" not in user
            user = "@#{user}"
        res.respond insults[Math.floor(Math.random()*insults.length)].replace "<USER>", user