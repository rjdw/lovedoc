/**
* LOVEDOC has the ability to determine if someone is a match for the user.
* The user enters data based on the situation they are in, and the program
* determines the correct path to take and the possibility of success in the
* courtship of the said man or woman.
*
*
* Author: Richard Wang
* Date of Creation: 05/10/2019
*
*/


(clear) (reset)

/**
* Global variables for
* If the user was helped
* if the user considers oneself confident
* if the user considers oneself shameless
*/
(defglobal ?*userHelped* = FALSE
            ?*confident* = nil
            ?*shameless* = nil)


/**
* Backwards chaining for all situations for the relationship determination
* Sorted by order of appearance
*/


(do-backward-chaining male)
(do-backward-chaining female)
(do-backward-chaining lgbt)
(do-backward-chaining lookingForMale)
(do-backward-chaining lookingForFemale)

(do-backward-chaining otherIsTaken)


(do-backward-chaining closeFriends)
(do-backward-chaining distantFriends)
(do-backward-chaining strangers)
(do-backward-chaining relative)
(do-backward-chaining hate)


;closeFriends is true
(do-backward-chaining talkedAboutFeelingsBefore)
(do-backward-chaining likesYouBefore)
(do-backward-chaining friendzoned)
(do-backward-chaining thinkOtherLikesYou)
(do-backward-chaining trustYourJudgement)

;distantFriends is true
(do-backward-chaining weeklyMeeting)
(do-backward-chaining monthlyMeeting)
(do-backward-chaining rareMeeting)
(do-backward-chaining weeklyCommunication)
(do-backward-chaining monthlyCommunication)
(do-backward-chaining rareCommunication)

;stranger is true
(do-backward-chaining regularMeeting)
(do-backward-chaining chanceMeeting)
(do-backward-chaining workEnvironment)
(do-backward-chaining recreationalEnvironment)



/**
* Rule for the backward chaining of the male attribute
*
*/
(defrule male "male"
   (need-male ?)
=>

   (bind ?res (takeInput "Are you a male?"))
   (assert (male ?res))
)

/**
* Rule for the backward chaining of the female attribute
*
*/
(defrule female "female"
   (need-female ?)
=>

   (bind ?res (takeInput "Are you a female?"))
   (assert (female ?res))
)

/**
* Rule for the backward chaining of the genderUndisclosed attribute
*
*/
(defrule genderUndisclosed "genderUndisclosed"
   (need-genderUndisclosed ?)
=>

   (bind ?res (takeInput "Do you prefer your gender to remain undisclosed?"))
   (assert (genderUndisclosed ?res))
)

/**
* Rule for the backward chaining of the lgbt attribute
*
*/
(defrule lgbt "lgbt"
   (need-lgbt ?)
=>

   (bind ?res (takeInput "Are you a part of the lgbt community?"))
   (assert (lgbt ?res))
)

/**
* Rule for the backward chaining of the lookingForMale attribute
*
*/
(defrule lookingForMale "lookingForMale"
   (need-lookingForMale ?)
=>

   (bind ?res (takeInput "Are you looking for a male partner?"))
   (assert (lookingForMale ?res))
)

/**
* Rule for the backward chaining of the lookingForFemale attribute
*
*/
(defrule lookingForFemale "lookingForFemale"
   (need-lookingForFemale ?)
=>

   (bind ?res (takeInput "Are you looking for a female partner?"))
   (assert (lookingForFemale ?res))
)

/**
* Rule for the backward chaining of the otherIsTaken attribute
*
*/
(defrule otherIsTaken "otherIsTaken"
   (need-otherIsTaken ?)
=>

   (bind ?res (takeInput "Is your prospective partner already in a relationship?"))
   (assert (otherIsTaken ?res))
)

/**
* Rule for the backward chaining of the closeFriends attribute
*
*/
(defrule closeFriends "closeFriends"
   (need-closeFriends ?)
=>

   (bind ?res (takeInput "Are you close friends with your prospective other? (communication at least once a week)"))

   (assert (closeFriends ?res))
)

/**
* Rule for the backward chaining of the distantFriends attribute
*
*/
(defrule distantFriends "distantFriends"
   (need-distantFriends ?)
=>

   (bind ?res (takeInput "Are you distant friends with your prospective other?"))
   (assert (distantFriends ?res))
)

/**
* Rule for the backward chaining of the strangers attribute
*
*/
(defrule strangers "strangers"
   (need-strangers ?)
=>

   (bind ?res (takeInput "Is your prospective other a stranger?"))
   (assert (strangers ?res))
)

/**
* Rule for the backward chaining of the relative attribute
*
*/
(defrule relative "relative"
   (need-relative ?)
=>

   (bind ?res (takeInput "Is your prospective other a relative?"))
   (assert (relative ?res))
)

/**
* Rule for the backward chaining of the hate attribute
*
*/
(defrule hate "hate"
   (need-hate ?)
=>

   (bind ?res (takeInput "Does your prospective other clearly hate or dislike you?"))
   (assert (hate ?res))
)

/**
* Rule for the backward chaining of the talkedAboutFeelingsBefore attribute
*
*/
(defrule talkedAboutFeelingsBefore "talkedAboutFeelingsBefore"
   (need-talkedAboutFeelingsBefore ?)
=>

   (bind ?res (takeInput "Have you and your other truthfully conversed about your feelings before?"))
   (assert (talkedAboutFeelingsBefore ?res))
)

/**
* Rule for the backward chaining of the likesYouBefore attribute
*
*/
(defrule likesYouBefore "likesYouBefore"
   (need-likesYouBefore ?)
=>

   (bind ?res (takeInput "Did your prospective other previously have feeling for you?"))
   (assert (likesYouBefore ?res))
)

/**
* Rule for the backward chaining of the friendzoned attribute
*
*/
(defrule friendzoned "friendzoned"
   (need-friendzoned ?)
=>

   (bind ?res (takeInput "Were you previously friendzoned?"))
   (assert (friendzoned ?res))
)

/**
* Rule for the backward chaining of the thinkOtherLikesYou attribute
*
*/
(defrule thinkOtherLikesYou "thinkOtherLikesYou"
   (need-thinkOtherLikesYou ?)
=>

   (bind ?res (takeInput "Do you get the impression that your prospective other likes you?"))
   (assert (thinkOtherLikesYou ?res))
)

/**
* Rule for the backward chaining of the trustYourJudgement attribute
*
*/
(defrule trustYourJudgement "trustYourJudgement"
   (need-trustYourJudgement ?)
=>

   (bind ?res (takeInput "Do you trust your judgement?"))
   (assert (trustYourJudgement ?res))
)


/**
* Rule for the backward chaining of the weeklyMeeting attribute
*
*/
(defrule weeklyMeeting "weeklyMeeting"
   (need-weeklyMeeting ?)
=>

   (bind ?res (takeInput "Do you and your other meet at least once a week?"))
   (assert (weeklyMeeting ?res))
)

/**
* Rule for the backward chaining of the monthlyMeeting attribute
*
*/
(defrule monthlyMeeting "monthlyMeeting"
   (need-monthlyMeeting ?)
=>

   (bind ?res (takeInput "Do you and your other meet at least once a month?"))
   (assert (monthlyMeeting ?res))
)

/**
* Rule for the backward chaining of the rareMeeting attribute
*
*/
(defrule rareMeeting "rareMeeting"
   (need-rareMeeting ?)
=>

   (bind ?res (takeInput "Do you and your other rarely meet?"))
   (assert (rareMeeting ?res))
)

/**
* Rule for the backward chaining of the weeklyCommunication attribute
*
*/
(defrule weeklyCommunication "weeklyCommunication"
   (need-weeklyCommunication ?)
=>

   (bind ?res (takeInput "Do you and your other communicate weekly? (in a somewhat meaningful manner)"))
   (assert (weeklyCommunication ?res))
)

/**
* Rule for the backward chaining of the monthlyCommunication attribute
*
*/
(defrule monthlyCommunication "monthlyCommunication"
   (need-monthlyCommunication ?)
=>

   (bind ?res (takeInput "Do you and your other communicate monthly?"))
   (assert (monthlyCommunication ?res))
)

/**
* Rule for the backward chaining of the rareCommunication attribute
*
*/
(defrule rareCommunication "rareCommunication"
   (need-rareCommunication ?)
=>

   (bind ?res (takeInput "Do you and your other rarely communicate?"))
   (assert (rareCommunication ?res))
)

/**
* Rule for the backward chaining of the regularMeeting attribute
*
*/
(defrule regularMeeting "regularMeeting"
   (need-regularMeeting ?)
=>

   (bind ?res (takeInput "Do you and your other regularly meet?"))
   (assert (regularMeeting ?res))
)

/**
* Rule for the backward chaining of the chanceMeeting attribute
*
*/
(defrule chanceMeeting "chanceMeeting"
   (need-chanceMeeting ?)
=>

   (bind ?res (takeInput "Do you and your other meet only by chance?"))
   (assert (chanceMeeting ?res))
)

/**
* Rule for the backward chaining of the workEnvironment attribute
*
*/
(defrule workEnvironment "workEnvironment"
   (need-workEnvironment ?)
=>

   (bind ?res (takeInput "Are you and your other work colleagues?"))
   (assert (workEnvironment ?res))
)

/**
* Rule for the backward chaining of the recreationalEnvironment attribute
*
*/
(defrule recreationalEnvironment "recreationalEnvironment"
   (need-recreationalEnvironment ?)
=>

   (bind ?res (takeInput "Do you and your prospective other meet in a recreational setting? (gym, music lesson, park, etc)"))
   (assert (recreationalEnvironment ?res))
)

/**
* Rule for the situation where the prospective other is in a relationship
*
*/
(defrule otherTaken
   (otherIsTaken y)
=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   ; conditional for the shameless attribute
   (if (eq ?*shameless* y) then
      (printout t "This is quite a difficult situation to evaluate, especially considering" crlf)
      (printout t "all the possible scenarios which may have causes this situation to arise." crlf)
      (printout t "Typically, I would recommend that you wait for the relationship to be over" crlf)
      (printout t "before considering the prospective other, but since you say you are shameless," crlf)
      (printout t "I would say go for it. Make your feelings clear, and see what happens." crlf)
      (printout t "" crlf)

   else
      (printout t "This is quite a difficult situation to evaluate, especially considering" crlf)
      (printout t "all the possible scenarios which may have causes this situation to arise." crlf)
      (printout t "I would recommend that you wait for the relationship to end, or find " crlf)
      (printout t "someone else." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation you are close friends but never talk
*
*/
(defrule closeFriendsNeverTalk
   (otherIsTaken n)
   (closeFriends y)
   (talkedAboutFeelingsBefore n)
=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "It is beneficial to make your feelings known to your prospective other sooner" crlf)
   (printout t "rather than later. As they may later consider you as just a close friend." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. This of course may effect your friendship, but this is the " crlf)
      (printout t "gamble you must take. If you are confident, then stay confident. Even if" crlf)
      (printout t "you are rejected, if you wish to remain friends, then do so and do not be" crlf)
      (printout t "shy about it." crlf)
      (printout t "" crlf)

   else
      (printout t "You should wait for a good opportunity to reveal your feelings and inquire" crlf)
      (printout t "upon their's. This opportunity would most likely take the form of some " crlf)
      (printout t "private or romantic environment. Work up some courage, and articulate" crlf)
      (printout t "your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where the user is hard friendzoned
*
*/
(defrule hardFriendzone
   (otherIsTaken n)
   (closeFriends y)
   (talkedAboutFeelingsBefore y)
   (friendzoned y)
   (thinkOtherLikesYou n)

=>


   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "If you were previously friendzoned, and you do not believe much has changed" crlf)
   (printout t "then I would advise you not to ask out/inquire a second time. " crlf)

   ;conditional for the confident and shameless attribute
   (if (and (eq ?*confident* y) (eq ?*shameless* y)) then
      (printout t "Since you are confident and shameless, you could ask out/inquire on feelings" crlf)
      (printout t "once more. However, I would recommend against this course of action." crlf)
      (printout t "Nonetheless, you may ignore me and it may work out; let's see if you are " crlf)
      (printout t "truly shameless." crlf)
      (printout t "" crlf)

   else
      (printout t "Asking and talking about your feelings a second time after a rejection, while" crlf)
      (printout t "having no sign of change, does not often end well. Moreover, it is awkward" crlf)
      (printout t "even for the best of friends." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where user was friendzoned but has hope
*
*/
(defrule lightFriendzone
   (otherIsTaken n)
   (closeFriends y)
   (talkedAboutFeelingsBefore y)
   (friendzoned y)
   (thinkOtherLikesYou y)
   (trustYourJudgement y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "If you were previously friendzoned, and you now believe there is a change in" crlf)
   (printout t "emotion from your prospective other, then I would proceed with caution." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident and shameless, you could ask out/inquire on feelings" crlf)
      (printout t "once more. If you truly trust your judgement, and you are confident in yourself," crlf)
      (printout t "then there should be nothing to fear." crlf)
      (printout t "" crlf)

   else
      (printout t "You should wait for a good opportunity to reveal your feelings and inquire" crlf)
      (printout t "upon their's. This opportunity would most likely take the form of some " crlf)
      (printout t "private or romantic environment. Work up some courage, and articulate" crlf)
      (printout t "your emotions. Since you are trusting of your judgement, remain trusting" crlf)
      (printout t "and don't chicken out.")
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where the user was friendzoned and has false hope
*
*/
(defrule lightFriendzoneNonTrust
   (otherIsTaken n)
   (closeFriends y)
   (talkedAboutFeelingsBefore y)
   (friendzoned y)
   (thinkOtherLikesYou y)
   (trustYourJudgement n)

=>


   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "If you were previously friendzoned, and you now believe there is a change in" crlf)
   (printout t "emotion from your prospective other, then I would proceed with caution." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident and shameless, you could ask out/inquire on feelings" crlf)
      (printout t "once more. If you truly do not trust your judgement, then it is fine to back" crlf)
      (printout t "out. But don't just talk yourself out of it because you're afraid." crlf)
      (printout t "" crlf)

   else
      (printout t "You should wait for a good opportunity to reveal your feelings and inquire" crlf)
      (printout t "upon their's. This opportunity would most likely take the form of some " crlf)
      (printout t "private or romantic environment. Work up some courage, and articulate" crlf)
      (printout t "your emotions. Since you are not trusting of your judgement, be wary and" crlf)
      (printout t "don't be too hasty.")
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends who speak and meet often
*
*/
(defrule distantWeeklyBoth
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting y)
   (weeklyCommunication y)

=>


   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "It is beneficial to make your feelings known to your prospective other sooner" crlf)
   (printout t "rather than later. As they may later consider you as just a friend." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. This of course may effect your friendship, but this is the " crlf)
      (printout t "gamble you must take. If you are confident, then stay confident. Even if" crlf)
      (printout t "you are rejected, if you wish to remain friends, then do so and do not be" crlf)
      (printout t "shy about it." crlf)
      (printout t "" crlf)

   else
      (printout t "You should wait for a good opportunity to reveal your feelings and inquire" crlf)
      (printout t "upon their's. This opportunity would most likely take the form of some " crlf)
      (printout t "private environment, or possibly just a meeting during which you feel good." crlf)
      (printout t "Work up some courage, and articulate your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends who meet often but don't speak
*
*/
(defrule distantWeeklyNoCom
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting y)
   (weeklyCommunication n)

=>


   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "So you see each other often but never talk? Why not?" crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. This of course may effect your friendship, but you never " crlf)
      (printout t "talk anyways, nothing is lost. If you are confident, then stay confident." crlf)
      (printout t "Even if you are rejected, not be shy and keeping talking to them. Don't" crlf)
      (printout t "just avoid them forever." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Then you could" crlf)
      (printout t "let your feelings be known. Work up some courage, and articulate your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends who meet and speak monthly
*
*/
(defrule distantMonthlyBoth
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting n)
   (monthlyMeeting y)
   (monthlyCommunication y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "It is beneficial to make your feelings known to your prospective other sooner" crlf)
   (printout t "rather than later. As they may later consider you as just a friend." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. This of course may effect your friendship, but this is the " crlf)
      (printout t "gamble you must take. If you are confident, then stay confident. Even if" crlf)
      (printout t "you are rejected, if you wish to remain friends, then do so and do not be" crlf)
      (printout t "shy about it." crlf)
      (printout t "" crlf)

   else
      (printout t "You should wait for a good opportunity to reveal your feelings and inquire" crlf)
      (printout t "upon their's. This opportunity would most likely take the form of some " crlf)
      (printout t "private environment, or possibly just a meeting during which you feel good." crlf)
      (printout t "Work up some courage, and articulate your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends who meet monthly but don't speak
*/
(defrule distantMonthlyNoCom
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting n)
   (monthlyMeeting y)
   (monthlyCommunication n)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "So you see each other often but never talk? Why not?" crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. This of course may effect your friendship, but you never " crlf)
      (printout t "talk anyways, nothing is lost. If you are confident, then stay confident." crlf)
      (printout t "Even if you are rejected, not be shy and keeping talking to them. Don't" crlf)
      (printout t "just avoid them forever." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Then you could" crlf)
      (printout t "let your feelings be known. Work up some courage, and articulate your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends who rarely meet/talk
*
*/
(defrule distantRare
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting n)
   (monthlyMeeting n)
   (rareMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "If you rarely see each other, and still consider your relationship as one" crlf)
   (printout t "between friends, then it may be to your benefit. Next time you meet, try" crlf)
   (printout t "to make some good conversation. Since you two are friends, they won't " crlf)
   (printout t "think it's weird, and it will be easier to converse. If the conversation" crlf)
   (printout t "goes well, then you could ask for a number or in some other manner try to" crlf)
   (printout t "meet again or communicate more." crlf)
   (printout t "" crlf)

   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends rarely meet and still talk
*
*/
(defrule distantRareCom
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting n)
   (monthlyMeeting n)
   (rareMeeting n)
   (rareCommunication y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "So you never see each other, and talk very little. Try to meet up or talk more." crlf)
   (printout t "This is quite a difficult situation, unless you build a stronger relationship." crlf)


   (finishAdvice)
)

/**
* Rule for the situation where they are distant friends do nothing
*
*/
(defrule distantNothing
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends y)
   (weeklyMeeting n)
   (monthlyMeeting n)
   (rareMeeting n)
   (rareCommunication n)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "Try to communicate more or meet at some point. This is quite a difficult situation," crlf)
   (printout t "unless you build a stronger relationship." crlf)


   (finishAdvice)
)

/**
* Rule for the situation where they are strangers at work
*
*/
(defrule strangerWorkReg
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends n)
   (stranger y)
   (workEnvironment y)
   (regularMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "So you see each other often in a setting were it is quite easy to make passing" crlf)
   (printout t "conversation. Try to talk more and become friends." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. If you are strangers, and you get rejected, nothing is lost" crlf)
      (printout t "and nothing is gained. Just be confident." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Then you could" crlf)
      (printout t "let your feelings be known. Work up some courage, and articulate your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are strangers at recreational place
*
*/
(defrule strangerRecReg
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends n)
   (strangers y)
   (workEnvironment n)
   (recreationalEnvironment y)
   (regularMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "So you see each other often in a setting were it is quite easy to make passing" crlf)
   (printout t "conversation. Try to talk more and become friends." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, I think it is best that you act and see how the " crlf)
      (printout t "other feels. If you are strangers, and you get rejected, nothing is lost" crlf)
      (printout t "and nothing is gained. Just be confident." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Then you could" crlf)
      (printout t "let your feelings be known. Work up some courage, and articulate your emotions." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are strangers at work who meet by chance
*
*/
(defrule strangerWorkChance
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends n)
   (strangers y)
   (workEnvironment y)
   (regularMeeting n)
   (chanceMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "This may be the only opportunity you have to talk with them." crlf)
   (printout t "Do it now." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, you can immediately make your feelings known" crlf)
      (printout t "If you are strangers, and you get rejected, nothing is lost and nothing" crlf)
      (printout t "is gained. Just be yourself." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Try and find" crlf)
      (printout t "some method of communication (a number, social media, etc). This is easier " crlf)
      (printout t "depending on the environment of work." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are strangers at recreational place who meet by chance
*
*/
(defrule strangerRecChance
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends n)
   (strangers y)
   (workEnvironment n)
   (recreationalEnvironment y)
   (regularMeeting n)
   (chanceMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "This may be the only opportunity you have to talk with them." crlf)
   (printout t "Do it now." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, you can immediately make your feelings known" crlf)
      (printout t "If you are strangers, and you get rejected, nothing is lost and nothing" crlf)
      (printout t "is gained. Just be yourself." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Try and find" crlf)
      (printout t "some method of communication (a number, social media, etc)." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are strangers who meet by chance and have no relation
*
*/
(defrule strangerNoneChance
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends n)
   (strangers y)
   (workEnvironment n)
   (recreationalEnvironment n)
   (chanceMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "This may be the only opportunity you have to talk with them." crlf)
   (printout t "Do it now." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, you can immediately make your feelings known" crlf)
      (printout t "If you are strangers, and you get rejected, nothing is lost and nothing" crlf)
      (printout t "is gained. Just be yourself." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Try and find" crlf)
      (printout t "some method of communication (a number, social media, etc)." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Rule for the situation where they are strangers who meet regularly
*
*/
(defrule strangerRegChance
   (otherIsTaken n)
   (closeFriends n)
   (distantFriends n)
   (strangers y)
   (workEnvironment n)
   (recreationalEnvironment n)
   (chanceMeeting n)
   (regularMeeting y)

=>

   (printout t "" crlf)
   (printout t "Here is my advice" crlf)

   (printout t "Maybe you see each other on the train to work, or something along those" crlf)
   (printout t "lines. Be cool and friendly and just talk to them. No longer be strangers." crlf)

   ;conditional for the confident attribute
   (if (eq ?*confident* y) then
      (printout t "Since you are confident, you can immediately make your feelings known" crlf)
      (printout t "If you are strangers, and you get rejected, nothing is lost and nothing" crlf)
      (printout t "is gained. Just be yourself." crlf)
      (printout t "" crlf)

   else
      (printout t "You should try to talk with the prospective other more, in a friendly manner." crlf)
      (printout t "First build a good friendship, at least talk to them somewhat. Try and find" crlf)
      (printout t "some method of communication (a number, social media, etc)." crlf)
      (printout t "" crlf)
   )
   (finishAdvice)
)

/**
* Initial rule for the game
* Simply prints a couple lines of text regarding the game
* Then takes user inputs for the global variables of confident and shameless
*/
(defrule startup

   (declare (salience 100))

=>

   (printout t "" crlf)
   (printout t "Hi! I'm a robot who understands human emotion :)" crlf)
   (printout t "I aim to help you humans start relationships" crlf)
   (printout t "Please tell me your situation and I will do my best to help you" crlf)
   (printout t "" crlf)
   (printout t "As a note, I have no expertise in lgbt relationships" crlf)

   (printout t "" crlf)
   (printout t "Before we start I would like to ask a couple questions if you don't mind" crlf)
   (printout t "Please answer all questions with a y or a n for yes and no" crlf)
   (printout t "" crlf)

   ; bind global presets to questions
   (bind ?*confident* (takeInput "Would you consider yourself a confident person?"))
   (bind ?*shameless* (takeInput "Would you consider yourself a shameless person?"))

   (printout t "" crlf)
   (printout t "ok thats all I need to know, lets begin" crlf)

   (printout t "" crlf)

)

/*
* Begins the program
* Prints ascii art UI
* runs the system
*
* Tests if the user was helped (if the system could give advice)
*/
(deffunction begin ()
   (reset)

   (printout t "-------------------------------------------------" crlf)
   (printout t "" crlf)
   (printout t "_▀█║────────────▄▄────────────---▄▄▄" crlf)
   (printout t "──█║───────▄─▄─█▄▄█ ─────--▄▄────█║─" crlf)
   (printout t "──█║───▄▄──█ █ █ ─▄ ▄▄────█║ █║__█║" crlf)
   (printout t "──█║──█ ─█ █ █ ─▀▀──█-▀───█║ █─--▀▀▀" crlf)
   (printout t "──█║▄║█ ─█ ─▀───────█--█ ─ ▀▀──────" crlf)
   (printout t "──▀▀▀──▀▀───────────█─-█ ──────────" crlf)
   (printout t "───────▄▄─▄▄▀▀▄▀▀▄──█▄▀────────────" crlf)
   (printout t "──────███████───▄▀─────────────────" crlf)
   (printout t "──────▀█████▀▀▄▀───────────────────" crlf)
   (printout t "────────▀█▀────────────────────────" crlf)

   (run)

   (if (not ?*userHelped*) then

      (printout t "I cannot currently deduce your situation or the correct approach" crlf)
      (printout t "to its resolution. I am sorry." crlf)

   )

   (playAgain)

   (return)
)

/**
* Takes a user input based on the question string passed as the function argument
* This input must be a y, n
* otherwise the function catches the invalid input and asks for another input
*
* The input is then returned
*
*/
(deffunction takeInput (?question)

   (bind ?res "not_answered")

   (while (not (or (eq ?res y) (eq ?res n))) do
      (printout t ?question crlf)
      (bind ?temp (read t))
      (if (or (eq ?temp y) (eq ?temp n)) then
         (bind ?res ?temp)
         else
         (printout t "not a valid input" crlf)
      )
   ) ; while loop requiring that the input but y or n

   (return ?res)
)

/**
* The function finishes the advice
*
* Sets the user helped global variable to TRUE
* Prints ending advice for the user
*/
(deffunction finishAdvice ()
   ; set global variable for advice given
   (bind ?*userHelped* TRUE)

   (printout t "Be confident in whatever you do. Don't regret missed opportunities later." crlf)
   (printout t "Everyone has been rejected, it's better to try than to never know." crlf)
   (printout t "If I've helped at all please recommend me to your acquaintances." crlf)
   (printout t "" crlf)

   (return)

)

/**
* The playAgain function is called internally for running the game
* after the first run is over
*
* this function asks the user if they want to play again
* it runs the game if the user responds y
* it stops the game if the user responds n
*
*/
(deffunction playAgain ()

   (printout t "" crlf)
   (printout t "Have there been some spicy new developments :)" crlf)

   ; asks the user if they want to go again
   (bind ?again (takeInput "Do you wish to inquire upon my services once more?"))

   (if (eq ?again y) then

      (begin)

   else
      (if (eq ?again n) then

         (printout t "" crlf)
         (printout t "hope to see you again :)" crlf)
         (printout t "the highest form of praise is the introduction of new patients" crlf)
         (halt)

      )
   )

   (return)
)
