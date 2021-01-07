




all := 0
i := 0
Loop, Files, %A_ScriptDir%\users\*.ini
{
	
	/*
	keyboard=
	( 
		{"inline_keyboard":[ [ {"text": "🎁 Получить 1000 очков" , "callback_data" : "getkilo"} ] ], "resize_keyboard" : true } 
	)
	mail := % "🎯 <b>Сыграем пару дуэлей?</b>~~Хэй, у меня тут бонус для тебя — 1000 очков.~~Используй их, чтобы победить других игроков и вырваться в топ! Кстати, если ты позовёшь в дуэль друга (по специальной ссылке), то ты получишь <b>300 очков дополнительно</b>, как только он зайдет. Но друг должен быть новым пользователем в боте."
	StringReplace, id228, A_LoopFileName, .ini, All
	json := SendMessageWithInlineButton(mail, id228, 0, keyboard)
	if ( RegExMatch(json, "true") < 10 )
		i += 1
	*/
		sleep, 40
	iniread, name, %A_ScriptDir%\users\%A_LoopFileName%, sys, name
	mail := "<b>" name ", хотите научиться предсказывать, куда пойдёт курс и как на этом заработать?</b>~~На нашем онлайн курсе вы за 10 занятий узнаете основы трейдинга и гарантированно сможете начать торговать на бирже по обдуманной стратегии.~~🎁 <b>Бонус</b> — оплатите курс сегодня и получите доступ до даты первого урока к <b>торговому индикатору Unicorn FL</b> (на скриншоте), который умеет прогнозировать движение курса плюс уникальную стратегию к нему~~👉🏻 <a href=""t.me/uranusinvestbot?start=trading"">Нажмите сюда, чтобы перейти в раздел курса и забронировать своё место</a>"
	StringReplace, id228, A_LoopFileName, .ini, All
	json := SendMessage(mail, id228, 0)
	if ( InStr(json, "false") = 0 )
		i += 1
	all += 1
	
}
txt := % "Рассылка завершена. Сообщение было отправлено " i " пользователям"
SendMessage(txt, 290522124, 0)

URLDownloadToVar(url,ByRef variable="")
{      
	try
	{  
		;msgbox % url
		hObject:=ComObjCreate("WinHttp.WinHttpRequest.5.1")
		hObject.Open("GET",url)
		hObject.Send()
		variable:=hObject.ResponseText
		return variable
	}
}

SendMessage(text, chat_id, reply)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?caption=" . text . "&chat_id=" . chat_id . "&parse_mode=HTML" . "&photo=https://telegra.ph/file/6e93f98c1d322a31e1e37.jpg"
	json_message := URLDownloadToVar(url)
	return json_message
	;msgbox, %json_message%
}

SendMessageWithInlineButton(text, chat_id, reply, keyboard)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	;text := UriEncode(text)
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendMessage?text=" . text . "&chat_id=" . chat_id . "&reply_to_message_id=" . reply . "&reply_markup=" . Keyboard . "&parse_mode=HTML"
	json_message := URLDownloadToVar(url)
	json_load := JSON.load(json_message)
	;msgbox % json_message
	;msgbox % url
	msg_id := json_load.result.message_id
	return json_message
}