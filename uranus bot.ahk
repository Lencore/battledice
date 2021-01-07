#SingleInstance
#Persistent
#Include %A_ScriptDir%\JSON.ahk
BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
admins := [290522124]
prodarray := ["rudov", "rucon", "ruport", "rubank", "rucryp", "runak", "rurate", "uzdov", "uzcon", "uzport", "uzbank", "uzcryp", "uznak", "uzrate"]
/*

; ################ ??? ?? ???? ???

	Buttons=
( 
  { "keyboard":[ ["%buttontext%"] ], "resize_keyboard" : true } 
)

	Inline=
( 
	{"inline_keyboard":[ [ {"text": "Command One" , "callback_data" : "Command1"}, {"text" : "Some button (Cmd3)",  "callback_data" : "Command3"} ] ], "resize_keyboard" : true } 
)
*/
	Remove=
( 
	{"remove_keyboard" : true } 
)




rudov  := "📈 <b>Доверительное управление</b>~~Доверительное управление подразумевает передачу вашего капитала (большой суммы денег) финансовому эксперту, который будет использовать его для активной торговли на бирже и получения прибыли. Клиент платит процент с чистой прибыли, которую приносит трейдер, либо процент от всей суммы, управляемой экспертом.~~Для работы на условиях доверительного управления вам требуется от $10,000 свободных денег.~~<b>Нажмите кнопку «Оставить заявку», чтобы заказать звонок нашего эксперта и получить подробную информацию об услуге.</b>"
rucon  := "📄 <b>Финансовая и инвестиционная консультация</b>~~Эксперты Uranus Invest помогут вам разобраться во всех вопросах, связанных с финансовой сферой и инвестированием, например:~~— Как начать инвестировать и какую платформу выбрать?~— Что делать, если досталось большое наследство?~— Куда положить большую сумму, кроме банка?~— Сколько можно получить за год при инвестировании?~— Как правильно распределить финансы?~~<b>Нажмите кнопку «Оставить заявку», чтобы заказать звонок эксперта и рассказать о своей проблеме, а также узнать подробности о платной консультации.</b>"
ruport := "💼 <b>Создание инвестиционного портфеля</b>~~Если вы имеете весомый денежный капитал и хотите приобрести ценные бумаги, эксперты Uranus Invest помогут с правильным выбором бумаг, распределением рисков и диверсификацией. Вы можете выбрать один из готовых инвестиционных портфелей, либо заказать разработку индивидуального — с учетом всех ваших пожеланий.~~<b>Нажмите «Оставить заявку», чтобы заказать звонок нашего эксперта и получить подробную информацию об услуге.</b>"
rubank := "🇨🇭 <b>Открытие счета в Швейцарском банке</b>~~Банки Швейцарии считаются эталоном: они предлагают лучшее обслуживание, услуги по мировым стандартам и идут в ногу с технологиями. Компания Uranus Invest помогает резидентам Узбекистана и стран СНГ открыть банковский счет в подходящем банке Швейцарии.~~Помимо лучших банков с высокими депозитами, клиенты могут открыть счет в банках среднего класса, которые требуют депозит до 5,000 долларов, но имеют все те же преимущества и качество обслуживания.~~<b>Нажмите кнопку «Оставить заявку», чтобы заказать звонок нашего эксперта и получить консультацию по открытию счета.</b>"
rucryp := "🔐 <b>Инвестирование в криптовалюту</b>~~Направление криптовалюты — достойная альтернатива инвестированию в фондовую и валютную биржу, однако для получения прибыли требуются другие знания и понимание системы. Эксперты Uranus Invest помогут вам определиться со стратегией, нужными активами и планами на будущее, чтобы долго и стабильно зарабатывать на инвестировании в криптовалюту.~~<b>Нажмите кнопку «Оставить заявку», чтобы заказать звонок нашего эксперта и получить подробную информацию об услуге.</b>"
runak  := "💵 <b>Накопительные программы</b>~~Если вы умеете зарабатывать, но не умеете откладывать и копить, эксперты Uranus Invest составят для вас индивидуальный план с пошаговой инструкцией, помогут поставить нужные цели и достичь их.~~Нужно накопить на машину к 2025? Или на квартиру к 2030? Это самые популярные случаи, с которыми обращаются наши клиенты и которые можно решить.~~<b>Нажмите кнопку «Оставить заявку», чтобы заказать звонок нашего эксперта и получить подробную информацию об услуге.</b>"
rurate := "📋 <b>Экспертная оценка стратегий</b>~~Если вы уже получили стратегию, накопительную программу или инвестиционный портфель от другого эксперта, но не уверены, что полученный продукт правильный и эффективный, вы можете обратиться к нашим экспертам для независимой оценки. ~~<b>Нажмите кнопку «Оставить заявку», чтобы заказать звонок нашего эксперта и получить подробную информацию об услуге.</b>"

uzdov  := "📈 <b>Ishonchli boshqaruv</b>~~Ishonchli boshqaruv Sizning mablag'laringizni (ko'p miqdordagi pul mablag'larini) moliya bo'yicha malakali mutaxassis (ekspert)ga topshirilishini, ekspert esa, o'z navbatida, sarmoyalarni birjada  savdo-sotiqni faol tarzda amalga oshirib foyda olish uchun ishlatishini nazarda tutadi. Mijoz treyder keltirgan sof foydadan yoki ekspert mutaxassis boshqarayotgan butun summadan foizni to'laydi. Ishonchli boshqaruv shartlarida ishlash uchun Sizga kamida $10,000 miqdorida erkin muomalaga layoqatli pul mablag'lar kerak bo'ladi.~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib xizmat haqida batafsil axborotni olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"
uzcon  := "📄 <b>Moliya sohasi va sarmoya kiritish bo'yicha maslaxat</b>~~Uranus Invest mutaxassis ekspertlari moliya sohasi va sarmoya kiritish bilan bog'liq barcha masalarni tushunib yetishingizga ko'maklashadilar, jumladan: ~~— Sarmoya kiritishni qanday qilib boshlash va qaysi platformani tanlash?~— Katta meros olgan bo'lsam uni nima qilish mumkin?~— Ko'p miqdordagi pul mablag'larini bankdan tashqari qayerga topshirish mumkin?~— Sarmoya kiritgan taqdirda bir yil mobaynida qancha daromad olish mumkin?~— Moliyaviy mablag'larni qanday qilib to'g'ri taqsimlash mumkin?~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib Siz duch kelgan muammo haqida xabar berib pullik maslaxat xizmatlari haqida batafsil axborotni olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"
uzport := "💼 <b>Investitsion portfelni yaratish</b>~~Juda ko'p miqdordagi pul mablag'lariga ega bo'lib qimmatli qog'ozlarni sotib olmoqchi bo'lsangiz, Uranus expert mutaxassislari qimmatli qog'ozlarni to'g'ri tanlashda, tavakkalchiliklarni taqsimlashda va portfel tarkibini tuzishda Sizga ko'maklashadi. Siz shakllantirilgan investitsion portfelni tayyorligicha sotib olishingiz yoki o'zingiz istagan tarkibdagi individual portfel tuzishni buyurtirishingiz mumkin.~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib xizmat haqida batafsil axborotni olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"
uzbank := "🇨🇭 <b>Shveytsariya banklarida hisobni ochish</b>~~Shveytsariya banklari xalqaro bank sohasining na'munaviy muassasalari deb hisoblanishi bejiz emas, axir ular eng yuqori darajada dunyo standartlariga muvofiq xizmat ko'rsatib, ilgari texnologiyalardan foydalanishadi. Uranus Invest O'zbekiston va MDH mamlakatlari rezidentlariga ma'qul kelgan Sveytsariya bankida hisob ochishga ko'maklashadi.~~Depozitlarga eng yuqori foiz to'lanadigan eng yaxshi banklardan tashqari mijozlar imtiyozlari va xizmat ko'rsatish sifati huddi shunday bo'lgan 5,000 AQSh dollarigacha bo'lgan miqdorni depozitga qo'yishni talab etuvchi o'rta darajadagi banklarda ham hisobni ochishlari mumkin. ~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib hisobni ochish haqida maslahat olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"
uzcryp := "🔐 <b>Kriptovalyutaga sarmoya kiritish</b>~~Kriptovalyuta yunalishi qimmatli qog'ozlar va valyuta birjasiga munosib muqobil yo'nalishdir, biroq, bu sohada foyda olish uchun maxsus bilim va tizim faoliyati haqida tushunchaga ega bo'lish kerak. Uranus Invest kriptovalyutaga sarmoya kiritish orqali uzoq muddatda va barqaror ravishda daromad ko'rish uchun Sizlarga strategiya, zarur bo'lgan aktivlar va kelajakka rejalarni tuzishga ko'maklashadi.~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib xizmat haqida batafsil axborotni olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"
uznak  := "💵 <b>Jamg'arib borish dasturlari</b>~~Agarda pulni ishlab topishni bilsangizda, pullarni yig'ish va jamg'arish qo'lingizdan kelmasa, Uranus Invest ekspert mutaxassislari Siz uchun maxsus reja va uni amalga oshirish bo'yicha bosqichma bosqich yoriqnomasini tuzib, to'g'ri maqsadlarni qo'yib ularga erishishga ko'maklashadilar.~~2025 yilgacha mashina xarid qilmoqchimisiz?Yoki 2030 yilgacha xonadonni sotib olmoqchimisiz? Bular mijozlarimiz bizga murojaat qilganda eng ko'p uchraydigan va, albatta, o'z yechimini topishlari mumkin bo'lgan holatlar.~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib xizmat haqida batafsil axborotni olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"
uzrate := "📋 <b>Strategiyalarni ekspert baholashi</b>~~Agar Siz boshqa ekspert mutaxassisdan strategiya, jamg'arib borish dasturi yoki investitsiya portfelini olgan bo'lsangiz, biroq, ushbu qo'lingizda kiritgan maxsul munosib va samarali ekanligiga ishonchingiz komil bo'lmasa, bizlarning mutaxassislarizga mustaqil baho berishlari uchun murojaat qilishingiz mumkin. ~~<b>Bizning ekspert mutaxassisimizdan qo'ng'iroqni buyrtirib xizmat haqida batafsil axborotni olish uchun «Ro’yhatdan o’tish» tugmasini bosing.</b>"

ruHomeMenu=
( 
  { "keyboard":[ ["🎓 Курс по трейдингу 2021"], ["⚡️ Торговые сигналы и аналитика"], ["📄 Каталог услуг", "ℹ️ О нашей компании"], ["☎️ Контакты", "🇺🇿 Tilni o'zgartirish"] ], "resize_keyboard" : true }  
)

ruBack=
( 
  { "keyboard":[ ["« Назад"] ], "resize_keyboard" : true }  
)

ruSendPhoneMenu=
( 
  { "keyboard":[ [{ "text" : "📱 Отправить свой телефон","request_contact" : true }], ["« Назад"] ], "resize_keyboard" : true }  
)

ruPh2=
( 
  { "keyboard":[ [{ "text" : "📱 Отправить свой телефон","request_contact" : true }], ["Отмена"] ], "resize_keyboard" : true }  
)


ruProdMenu=
( 
  { "keyboard":[ ["Доверительное управление"], ["Финансовая / инвест консультация"], ["Создание инвестиционного портфеля"], ["Открытие счета в швейцарском банке"], ["Инвестирование в криптовалюту"], ["Накопительные программы"], ["Экспертная оценка стратегий"], ["« Назад"] ], "resize_keyboard" : true }  
)

ruBudgetMenu=
( 
  { "keyboard":[ ["$ 0 - 1,000", "$ 1,000 - 5,000"], ["$ 5,000 - 10,000", "$ 10,000 - 50,000"], ["$ 50,000 и более"], ["« Назад"] ], "resize_keyboard" : true }  
)


ruApplyMenu=
(
	{ "keyboard":[ ["Оставить заявку"], ["« Назад", "В главное меню"] ], "resize_keyboard" : true } 
)

ruLocationMenu=
(
	{ "keyboard":[ ["Город Ташкент"], ["Другой город", "Другая страна"], ["« Назад"] ], "resize_keyboard" : true } 
)

ruAgreeTradingMenu=
(
	{ "keyboard":[ ["Оформить подписку"], ["« Назад"] ], "resize_keyboard" : true } 
)

ruCancel=
(
	{ "keyboard":[ ["Отмена"] ], "resize_keyboard" : true } 
)

ruTimingMenu=
(
	{ "keyboard":[ [ "1 месяц / $5", "3 месяца / $12"], ["6 месяцев / $20", "12 месяцев / $30"], ["« Назад"] ], "resize_keyboard" : true } 
)

ruPaymentMenu=
(
	{ "keyboard":[ ["UzCard (UZS)", "Visa / MasterCard (RUB)"], ["Humo (UZS)", "ЮMoney (RUB)", "Qiwi (RUB)"], ["WebMoney (5 валют)"], ["« Назад"] ], "resize_keyboard" : true } 
)

ruWebMoneyMenu=
(
	{ "keyboard":[ ["Рос. рубли / WMR", "Рос. рубли / WMP"], ["Узбекские сумы / WMY", "Доллары США / WMZ"], ["Евро / WME", "Тенге / WMK"], ["« Назад"] ], "resize_keyboard" : true } 
)


ruOk=
( 
	{"inline_keyboard":[ [ {"text": "Подтвердить подписку" , "callback_data" : "ok"} ] ], "resize_keyboard" : true } 
)

ruNext=
( 
	{"inline_keyboard":[ [ {"text": "Далее ▶️" , "callback_data" : "next"} ] ], "resize_keyboard" : true } 
)

ruSendZayavka=
( 
	{"inline_keyboard":[ [ {"text": "⚡️ Оставить заявку" , "callback_data" : "sendz"} ], [ {"text": "« Выбрать другой пакет" , "callback_data" : "rechoose"} ] ], "resize_keyboard" : true } 
)

ruPlans=
( 
	{"inline_keyboard":[ [ {"text": "Стандартный — $ 99" , "callback_data" : "standart"} ], [ {"text": "Расширенный — $ 149" , "callback_data" : "extended"} ], [ {"text": "Индивидуальный — $ 499" , "callback_data" : "individual"} ] ], "resize_keyboard" : true } 
)



	uzHomeMenu=
	( 
	  { "keyboard":[ ["📄 Xizmatlar katalogi", "ℹ️ Bizning kompaniya haqida"], ["☎️ Aloqalar", "🇷🇺 Сменить язык"] ], "resize_keyboard" : true }  
	)

	uzBack=
	( 
	  { "keyboard":[ ["« Ortga"] ], "resize_keyboard" : true }  
	)

	uzSendPhoneMenu=
	( 
	  { "keyboard":[ [{ "text" : "📱 O'z raqamingizni jo'nating","request_contact" : true }], ["« Ortga"] ], "resize_keyboard" : true }  
	)

	uzProdMenu=
	( 
	  { "keyboard":[ ["Ishonchli boshqaruv"], ["Moliyaviy / investitsiya bo'yicha konsalting"], ["Investitsiya portfelini yaratish"], ["Shveytsariyada bank hisob raqamini ochish"], ["Kripto valyutasiga sarmoya kiritish"], ["Yig'ish dasturlari"], ["Strategiyalarni ekspert baholash"], ["« Ortga"] ], "resize_keyboard" : true }  
	)

	uzBudgetMenu=
	( 
	  { "keyboard":[ ["$ 0 - 1,000", "$ 1,000 - 5,000"], ["$ 5,000 - 10,000", "$ 10,000 - 50,000"], ["$ 50,000 и более"], ["« Ortga"] ], "resize_keyboard" : true }  
	)


	uzApplyMenu=
	(
		{ "keyboard":[ ["Ro’yhatdan o’tish"], ["« Ortga", "Asosiy bo’limga qaytish"] ], "resize_keyboard" : true } 
	)

	uzLocationMenu=
	(
		{ "keyboard":[ ["Toshkent shahri"], ["Boshqa shahri", "Boshqa mamlakati"], ["« Ortga"] ], "resize_keyboard" : true } 
	)




UzCard = 8600570416867561
Humo = 9860280101134391
Mastercard = 5536913831180464
Yoomoney = 4100111321706151
Qiwi := "+998935492310"
WMZ := "Z271149965164"
WMR := "R349480018827"
WMK := "K776250691337"
WME := "Y762478856085"
WMY := "E334749894374"
WMP := "P448332636348"




ruHome := "<b>Добро пожаловать в Uranus Invest</b>~~Наша компания — единственный в Узбекистане инвестиционный консалтинг, созданный в партнерстве с Торгово-промышленной Палатой Швейцарии.~~Эксперты Uranus Invest помогут вам начать инвестировать в фондовую, валютную и криптовалютную биржи, создать собственный инвестиционный портфель, получить профессиональные консультации и открыть счет в Швейцарском банке.~~👇🏻 <b>Используйте кнопки ниже, чтобы перейти к нужному разделу</b>"
ruLanguageChanged := "Язык изменен на русский"
ruSendPhone := "👌🏻 <b>Отлично.</b>~~Пожалуйста, отправьте ваш номер телефона, чтобы мы могли с вами связаться"
ruSendLocation := "<b>👍🏻 Хорошо.</b>~~Пожалуйста, выберите место, в котором вы проживаете в данный момент"
ruSendProd := "📄 <b>Каталог услуг компании</b>~~Нажимайте кнопки ниже, чтобы открыть описание выбранной услуги. Если вас заинтересовала услуга, вы можете оставить заявку на обратный звонок."
ruThanks := "<b>✅ Мы получили вашу заявку.</b>~~Мы скоро свяжемся с вами, чтобы обсудить подробности. Хорошего дня."
ruErrorNumber := "🚫 Ошибка номера. Введите местный номер телефона в удобном формате"
ruErrorLocation := "🚫 Вы отправили что-то не то. Нажмите одну из кнопок ниже"
ruContacts := "☎️ <b>Контакты компании</b>~~Вы можете связаться с нами любым удобным способом в рабочее время. Кроме того, в наших социальных сетях регулярно публикуются полезные материалы по финансам и инвестированию, рекомендуем к подписке.~~☎️ <b>Телефон:</b> +998 98 369 90 69~🔹 <b>Telegram:</b> @UranusInvestHelp~✉️ <b>Эл. почта:</b> info@uranusinvest.com~~🌐 <b>Сайт компании:</b> www.uranusinvest.com~🔸 <b>Instagram:</b> instagr.am/uranus.invest~🔹 <b>Facebook:</b> fb.me/uranusinvest~▫️ <b>Telegram-канал:</b> @UranusInvest"
ruResendProd := "Выберите другую услугу, которая вас интересует"
ruResendPhone := "Отправьте другой номер телефона"
ruAbout := "🔹 <b>Uranus Invest</b> — финансовый и инвестиционный консалтинг, основанный в 2019 году.~~Компания является членом <b>Торгово-промышленной Палаты Швейцарии</b>, услуги компании лицензированы согласно законодательству Республики Узбекистан. ~~Uranus Invest оказывает <b>консультационные услуги</b> в сфере финансов и инвестирования, доверительного управления, создания инвестиционного портфеля, открытия банковских счетов в Швейцарии, инвестирования в криптовалюту, накопительных программ и оценке инвестиционных стратегий.~~🔹 <b>Феруз Алиев</b> — руководитель компании, дипломированный международный инвестиционный консультант и член Торгово-промышленной Палаты Швейцарии. Полная информация доступна по этой ссылке~~☎️ <b>Номер телефона:</b> +998 98 369 90 69~🌐 <b>Сайт компании:</b> www.uranusinvest.com~✉️ <b>Эл. почта:</b> info@uranusinvest.com"
ruChatSet := "Теперь новые заявки будут приходить в этот чат"
ruChatDeleted := "Этот чат отключен от системы бота"
ruSendBudget := "<b>Какой капитал вы готовы выделить?</b>~~Отправьте сумму денег, которой вы сейчас обладаете для инвестирования. Указывайте полную сумму вне зависимости от того, уверены ли вы сейчас в своем выборе.~~⚠️ <i>Можете не волноваться за свои данные — мы не передаем их третьим лицам, эту информацию видят только специалисты Uranus Invest и используют ее для подготовки к разговору.</i>"

ruAboutTrading := "⚡️ <b>Торговые сигналы и аналитика</b>~~Это доступ в закрытый премиум канал, в котором каждый день публикуются сигналы для торговли и аналитика по валютному, фондовому и криптовалютному рынку. Информация учит не просто открывать и закрывать сделки, а начать думать и торговать самостоятельно.~~✅ <b>Что вы получаете, подписываясь на канал:</b>~~— Ежедневные торговые сигналы: точки входа, стоп лоссы, тейк профиты;~— Технический и фундаментальный анализ рынка;~— Торговля на новостях;~— Прогнозы по рынку на неделю вперед;~— Понимание сути торговли на валютном и фондовом рынке;~— Адаптация к разным условиям рынка: медвежьим или бычьим;~— Готовые советники, роботы, алгоритмы и индикаторы для торговли;~— Доступ к магазину эксклюзивных курсов, пособий и алгоритмам.~~Информацию предоставляют трейдеры с многолетним опытом — Азиз Абдусаломов из Alpari и Феруз Алиев из Uranus Invest.~~⚡️ <b>Научитесь зарабатывать на рынке онлайн под руководством профессионалов</b>~~👇🏻 Нажмите кнопку ниже, чтобы начать оформление подписки"
ruSendTime := "🕗 <b>Выберите срок подписки</b>~~После подтверждения оплаты вы автоматически получите ссылку для входа, по истечению выбранного срока вы будете удалены из канала. Продлить подписку можно в любой момент.~~👇🏻 <b>Выберите необходимый срок</b>"
ruSendTime2 := "🕗 <b>У вас есть подписка, выберите срок продления</b>~~После подтверждения оплаты срок подписки будет автоматически продлен, по истечению выбранного срока вы будете удалены из канала.~~👇🏻 <b>Выберите необходимый срок</b>"
ruSendPayment := "💰 <b>Выберите способ оплаты</b>~~Подписку можно оплатить в 5 валютах, включая рубли и узбекские сумы. При конвертации суммы доллары берется курс ЦБ на текущий день.~~👇🏻 <b>Выберите сервис, через который вам удобнее всего произвести оплату</b>"
ruSendProof := "💰 <b>Произведите оплату</b>~~Скопируйте реквизиты и переведите ${}. Затем сделайте скриншот чека, где будет видно сумму, а также дату и время перевода. Сделанный скриншот отправьте в этот чат.~~После проверки вам будет выдана ссылка для входа. Срок подписки начнет истекать сразу после присоединения к каналу. ~~👇🏻 <b>Пришлите скриншот об оплате по этим реквизитам</b>"
ruErrorProof := "⛔️ <b>Оплата не прошла проверку</b>~~Пожалуйста, пришлите скриншот со всей необходимой информацией: сумма перевода, дата перевода, время перевода. ~~Если возникли проблемы, напишите нам на @UranusInvestHelp"
ruAcceptProof := "✅ <b>Ваша оплата была получена</b>~~Нажмите на ссылку ниже и присоединитесь к каналу, а затем вернитесь сюда и нажмите кнопку <b>«Подтвердить подписку»</b>.~~{}~~⚠️ Если вы не нажмете на кнопку, вы будете <b>исключены из канала</b> через несколько часов как неподтвержденный участник. Если <b>по вашей ссылке в канал попадет кто-то еще</b>, вы также будете исключены из канала за <b>нарушение</b>. Каждому участнику выдается индивидуальная ссылка.~~🔄 <b>Чтобы продлить подписку в будущем</b>, просто зайдите в этот раздел еще раз через главное меню и оплатите новый тариф. Срок новой подписки суммируется с активной.~~👇🏻 <b>Нажмите кнопку ниже, когда подпишетесь на канал</b>"
ruAcceptProof2 := "✅ <b>Ваша оплата была получена</b>~~Вы можете продолжать пользоваться каналом. Для продолжения нажмите кнопку ниже."
ruSuccessful := "Ваша подписка подтверждена, вы в главном меню"
ruWebMoney := "Выберите валюту для оплаты через WebMoney"

ruKurs1 := "🎓<b> Трейдинг для начинающих — онлайн курс по торговле на валютной бирже</b>~~Профессиональный трейдер за 10 занятий простым языком расскажет, как начать торговать на Forex и получать прибыль, а не играть как в казино. По окончании курса вы:~~— Заработаете свою первую прибыль на валютной бирже;~— Поймете, как работает торговая платформа и как не терять на ней деньги;~— Научитесь «читать» рынок и предсказывать движение графиков;~— Освоите фундаментальный и графический анализ;~— Научитесь создавать собственные торговые стратегии;~— Получите сертификат об окончании курса.~~📅 <b>Старт занятий</b> — 18 января~~👇🏻 <b>Нажмите «Далее», чтобы узнать подробности</b>"
ruKurs2 := "📌 <b>Как будет проходить курс</b>~~Все уроки проводятся через Zoom, а задать вопрос преподавателю и пообщаться с другими студентами можно в закрытой группе в Telegram. ~~🕘  <b>Длительность уроков</b> — 90 минут (1.5 часа)~🗓  <b>Частота уроков</b> — 3 раза в неделю (через день)~👥  <b>Студентов в каждой группе</b> — 5 человек~🏁  <b>Старт занятий</b> — 18 января~~По окончании курса вам будет выдан именной сертификат от компании Uranus Invest — в электронном виде или в бумажном, если вы живете в Ташкенте.~~👇🏻 <b>Нажмите «Далее», чтобы перейти к тарифам</b>"
ruKurs3 := "<a href=""telegra.ph/file/7bfea1077022d0b6d6176.png"">💰</a> <b>Стоимость обучения</b>~~Мы предлагаем два основных тарифа — <b>Стандартный</b> и <b>Расширенный</b>. Разницу между ними можно посмотреть <b>на картинке</b> под этим сообщением.~~Если вы не хотите заниматься в группе, мы предоставим для вас <b>индивидуальное обучение</b> — это обучение с преподавателем по голосовой связи один на один, личное сопровождение на торгах + записи всех групповых занятий. <b>Стоимость индивидуального обучения — $499.</b>~~👇🏻 <b>Нажмите на подходящий тариф под картинкой</b>"
RuStandart := "⚡️ <b>Стандартный пакет обучения</b>~~Чтобы забронировать свое место в группе, вам нужно оставить заявку и оплатить полную стоимость обучения. Мы принимаем оплату по Payme и Click, а также наличными в пределах города Ташкент.~~— 10 онлайн-уроков в Zoom~— Доступ в закрытую группу~— Ответы на вопросы от преподавателя~~💰 <b>Стоимость выбранного пакета</b> — $ 99~~👇🏻 Нажмите кнопку ниже, чтобы оставить заявку. Мы перезвоним, чтобы ответить на ваши вопросы и забронировать место. Место на обучение считается забронированным после оплаты, заявка вас ни к чему не обязывает"
RuExtended := "⚡️ <b>Расширенный пакет обучения</b>~~Чтобы забронировать свое место в группе, вам нужно оставить заявку и оплатить полную стоимость обучения. Мы принимаем оплату по Payme и Click, а также наличными в пределах города Ташкент.~~— 10 онлайн уроков в Zoom~— Доступ в закрытую группу~— Ответы на вопросы от преподавателя~— Записи всех уроков~— Недельный доступ к уникальной стратегии и торговому роботу~~💰 <b>Стоимость выбранного пакета</b> — $ 149~~👇🏻 Нажмите кнопку ниже, чтобы оставить заявку. Мы перезвоним, чтобы ответить на ваши вопросы и забронировать место. Место на обучение считается забронированным после оплаты, заявка вас ни к чему не обязывает"
RuIndividual := "⚡️ <b>Индивидуальный пакет обучения</b>~~Чтобы забронировать свое место в группе, вам нужно оставить заявку и оплатить полную стоимость обучения. Мы принимаем оплату по Payme и Click, а также наличными в пределах города Ташкент.~~— Индивидуальное обучение~— Доступ в закрытую группу~— Живая торговля и лайв-общение с преподавателем~— Записи уроков обычного курса~— Месячный доступ к уникальной стратегии и торговому роботу~~💰 <b>Стоимость выбранного пакета</b> — $ 499~~👇🏻 Нажмите кнопку ниже, чтобы оставить заявку. Мы перезвоним, чтобы ответить на ваши вопросы и забронировать место. Место на обучение считается забронированным после оплаты, заявка вас ни к чему не обязывает"
RuGot := "✅ <b>Получили вашу заявку</b>~~Мы перезвоним вам в ближайшее время, чтобы ответить на вопросы и уточнить детали. Оставайтесь на связи по указанному номеру. Спасибо."
ruSendPhone2 := "Пожалуйста, отправьте рабочий номер телефона"
ruSendName := "Как вас зовут?"







	uzHome := "<b>Uranus Invest ga xush kelibsiz!</b>~~Bizning kompaniyamiz — Shveysariya Savdo-sanoat Palatasi bilan hamkorlikda tashkil etilgan, O'zbekistondagi yagona investitsiya konsalting tashkilotidir.~~Uranus Invest ekspertlari Sizga fond, valyuta va kriptovalyuta birjalariga investitsiya kiritishga, o'z investitisiya portfelingizni yaratishga, professional konsalting xizmati olish va Shveysariya bankida hisob ochishga yordam berishadi.~~👇🏻 <b>Kerakli bo'limga o'tish uchun quyidagi tugmalardan foydalaning</b>"
	uzLanguageChanged := "O'zbek tiliga o'zgartirildo"
	uzSendPhone := "👌🏻 <b>Zo'r.</b>~~Iltimos, biz siz bilan bog'lanishimiz uchun telefon raqamingizni yuboring"
	uzSendLocation := "<b>👍🏻 Yaxshi.</b>~~Iltimos, o'zingiz yashaydigan mintaqani tanlang"
	uzSendProd := "📄 Kompaniyaning xizmatlar katalogi~~Tanlangan xizmat haqida ma'lumot olish uchun quyidagi tugmalarni bosing. Agar xizmat Sizni qiziqtirsa, qaytib qo'ng'iroq qilishimiz uchun ariza qoldirishingiz mumkin."
	uzThanks := "<b>✅ Biz sizning arizangizni qabul qildik.</b>~~Tafsilotlarni muhokama qilish uchun siz bilan tez orada bog'lanamiz. Xayrli kun."
	uzErrorNumber := "🚫 Xato raqam. Mahalliy telefon raqamini qulay shaklda jo'nating"
	uzErrorLocation := "🚫 Siz mavjud bo'lmagan joyni yubordingiz"
	uzContacts := "☎️ <b>Kompaniya bilan aloqa</b>~~Siz biz bilan o'zingizga qulay istalgan yo'l bilan ish vaqtida bog'lanishingiz mumkin. Bundan tashqari, bizning ijtimoiy tarmoqlardagi barcha sahifalarimizda moliya va investitsiya bo'yicha foydali materiallar e'lon qilib boriladi, obuna bo'lishni tavsiya qilamiz.~~☎️ <b>Telefon:</b> +998 98 369 90 69~🔹 <b>Telegram:</b> @UranusInvestHelp~✉️ <b>Elektron pochta:</b> info@uranusinvest.com~~🌐 <b>Kompaniya sayti:</b> www.uranusinvest.com~🔸 <b>Instagram:</b> instagr.am/uranus.invest~🔹 <b>Facebook:</b> fb.me/uranusinvest~▫️ <b>Telegram-kanal:</b> @UranusInvest"
	uzResendProd := "Boshqa qiziqtirgan xizmatni tanglang"
	uzResendPhone := "Boshqa telefon raqamini yuboring"
	uzAbout := "🔹 <b>Uranus Invest</b> — 2019-yilda asos solingan, moliyaviy va investitisiya konsalting tashkiloti.~~Kompaniya <b>Shveysariya Savdo-sanoat Palatisining</b> a'zosi hisoblanadi, kompaniyaning barcha xizmatlari O'zbekiston Respublikasi qonunchiligiga asosan lisenziyalangan.~~Uranus Invest moliya va investitisiya, ishonchli boshqaruv, investitisiya portfelini yaratish, Shveysariya banklarida hisob ochish, kriptovalyutaga investitsiya kititish, jamg'arma dasturlari va investitsiya strategiyalarini baholash sohalarida konsalting xizmatlarini ko'rsatadi.~~🔹 <b>Feruz Aliev</b> — kompaniya rahbari, oliy ma'lumotli xalqaro investitsiya konsalti, Shveysariya Savdo-sanoat Palatasi a'zosi. Batafsil ma'lumotni quyidagi havolalardan olishingiz mumkin :~~☎️ <b>Telefon raqami:</b> +998 98 369 90 69~🌐 <b>Kompaniya sayti:</b> www.uranusinvest.com~✉️ <b>Elektron pochta:</b> info@uranusinvest.com"
	uzChatSet := "Теперь новые заявки будут приходить в этот чат"
	uzChatDeleted := "Этот чат отключен от системы бота"
	uzSendBudget := "<b>Siz qancha kapital berishga tayyormisiz?</b>~~Hozirda mavjud bo'lgan mablag'ni investitsiya uchun yuboring. Hozir tanlaganingizga ishonchingiz komilligidan qat'i nazar, to'liq miqdorini ko'rsating.~~⚠️ <i>Ma'lumotlaringiz haqida tashvishlanishingiz shart emas - biz uni uchinchi shaxslarga etkazmaymiz, bu ma'lumotlarni faqat Uranus Invest mutaxassislari ko'rishadi va undan suhbatga tayyorgarlik ko'rish uchun foydalanadilar.</i>"






SetTimer, tgupdates, 500


tgupdates:
{
	stack := {}
	clipped := GetUpdates((offset+1))	
	;clipboard := clipped
	;msgbox % clipped
	parsed := JSON.Load(clipped)

	loop % parsed.result.MaxIndex()
		stack.Push(parsed.result[A_index])

	For key, tg in stack
	{

		;msgbox % key 
		;msgbox % tg.update_id
		;msgbox % tg.callback_query.data

		update_id 		:= tg.update_id
		offset			:= tg.update_id
		text 			:= tg.message.text
		name 			:= tg.message.from.first_name
		username		:= tg.message.from.username
		from_id 		:= tg.message.from.id
		chat_id 		:= tg.message.chat.id
		message_id 		:= tg.message.message_id
		dice 			:= tg.message.dice.value
		diceemoji 		:= tg.message.dice.emoji
		forward_date 	:= tg.message.forward_date
		chat_type 		:= tg.message.chat.type
		addedtogroup 	:= tg.message.new_chat_member.id
		date    		:= tg.message.date
		photo			:= tg.message.photo[3].file_id
		location1       := tg.message.location.latitude
		location2		:= tg.message.location.longitude
		channel_post	:= tg.channel_post



		if ( photo = "")
		{
			photo		:= tg.message.photo[2].file_id
			;msgbox % photo
			if ( photo = "")
			{
				photo		:= tg.message.photo[1].file_id
				;msgbox % photo
			}
		}
		contact 		:= tg.message.contact.phone_number


		iniread, where, %A_ScriptDir%\users\%from_id%.ini, sys, where




; #########################################################################################################
		if ( tg.callback_query.data != "" )
		{	
			
			if ( tg.callback_query.data = "uzlang" )
			{
				userid := tg.callback_query.from.id
				txt := % "Xush kelibsiz"
				iniwrite, uz, %A_ScriptDir%\users\%userid%.ini, sys, lang
				iniwrite, home, %A_ScriptDir%\users\%userid%.ini, sys, where
				inlinedone(tg.callback_query.id)
				deleteMessage(tg.callback_query.from.id, tg.callback_query.message.message_id)
				SendMessageWithButton(uzHome, tg.callback_query.message.chat.id, 0, uzhomemenu)
			}

			else if ( tg.callback_query.data = "rulang" )
			{
				userid := tg.callback_query.from.id
				txt := % "Добро пожаловать"
				iniwrite, ru, %A_ScriptDir%\users\%userid%.ini, sys, lang
				iniwrite, home, %A_ScriptDir%\users\%userid%.ini, sys, where
				inlinedone(tg.callback_query.id)
				deleteMessage(tg.callback_query.from.id, tg.callback_query.message.message_id)
				SendMessageWithButton(ruHome, tg.callback_query.message.chat.id, 0, ruhomemenu)
			}

			else if ( tg.callback_query.data = "ok" )
			{
				exportChatInviteLink(-1001473832098)
				id := tg.callback_query.message.chat.id
				iniread, lang, %A_ScriptDir%\users\%id%.ini, sys, lang
				iniwrite, home, %A_ScriptDir%\users\%id%.ini, sys, where
				SendMessageWithButton(%lang%Home, id, 0, %lang%HomeMenu)
				inlinedone(tg.callback_query.id) 
				DeleteMessage(id, tg.callback_query.message.message_id)
			}

			else if ( tg.callback_query.data = "next" )
			{
				id := tg.callback_query.from.id
				iniread, lang, %A_ScriptDir%\users\%id%.ini, sys, lang
				iniread, where, %A_ScriptDir%\users\%id%.ini, sys, where2
				if ( where = "home" )
				{
					EditMessageText(rukurs2, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
					iniwrite, kurs2, %A_ScriptDir%\users\%id%.ini, sys, where2
					editMessageReplyMarkup(ruNext, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
					inlinedone(tg.callback_query.id) 
				}
				else if ( where = "kurs2" )
				{
					EditMessageText(rukurs3, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
					iniwrite, kurs3, %A_ScriptDir%\users\%id%.ini, sys, where2
					editMessageReplyMarkup(ruPlans, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
					inlinedone(tg.callback_query.id) 
				}
			}

			else if ( tg.callback_query.data = "standart" )
			{
				id := tg.callback_query.from.id
				EditMessageText(RuStandart, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				iniwrite, standart, %A_ScriptDir%\users\%id%.ini, sys, where2
				editMessageReplyMarkup(ruSendZayavka, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				inlinedone(tg.callback_query.id) 
			}

			else if ( tg.callback_query.data = "extended" )
			{
				id := tg.callback_query.from.id
				EditMessageText(RuExtended, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				iniwrite, extended, %A_ScriptDir%\users\%id%.ini, sys, where2
				editMessageReplyMarkup(ruSendZayavka, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				inlinedone(tg.callback_query.id) 
			}

			else if ( tg.callback_query.data = "individual" )
			{
				EditMessageText(RuIndividual, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				iniwrite, individual, %A_ScriptDir%\users\%id%.ini, sys, where2
				editMessageReplyMarkup(ruSendZayavka, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				inlinedone(tg.callback_query.id) 
			}

			else if ( tg.callback_query.data = "sendz" )
			{
				id := tg.callback_query.from.id
				iniread, lang, %A_ScriptDir%\users\%id%.ini, sys, lang
				iniread, where, %A_ScriptDir%\users\%id%.ini, sys, where2
				iniwrite, %where%, %A_ScriptDir%\users\%id%.ini, temp, plan
				iniwrite, sendphone2, %A_ScriptDir%\users\%id%.ini, sys, where
				SendMessageWithButton(ruSendPhone2, id, 0, ruph2)
				inlinedone(tg.callback_query.id)
				deleteMessage(tg.callback_query.from.id, tg.callback_query.message.message_id)
			}

			else if ( tg.callback_query.data = "rechoose" )
			{
				id := tg.callback_query.from.id
				EditMessageText(rukurs3, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				iniwrite, kurs3, %A_ScriptDir%\users\%id%.ini, sys, where2
				editMessageReplyMarkup(ruPlans, tg.callback_query.message.message_id, tg.callback_query.message.chat.id)
				inlinedone(tg.callback_query.id) 
			}

			what := SubStr(tg.callback_query.data, 1, 1)

			if ( what = "*" )
			{
				id := SubStr(tg.callback_query.data, 2)
				userid := tg.callback_query.message.chat.id
				date := tg.callback_query.message.date
				iniread, activated, %A_ScriptDir%\users\%id%.ini, trading, activated
				if ( activated = 0 or activated = "ERROR" )
				{
					iniread, name, %A_ScriptDir%\users\%id%.ini, sys, name
					iniread, lang, %A_ScriptDir%\users\%id%.ini, sys, lang
					iniread, time, %A_ScriptDir%\users\%id%.ini, trading, time
					iniread, price, %A_ScriptDir%\users\%id%.ini, trading, price
					iniread, payment, %A_ScriptDir%\users\%id%.ini, trading, payment
					enddate := date + time
					startdate := date
					iniwrite, 1, %A_ScriptDir%\users\%id%.ini, trading, activated
					iniwrite, %startdate%, %A_ScriptDir%\users\%id%.ini, trading, startdate
					iniwrite, %enddate%, %A_ScriptDir%\users\%id%.ini, trading, enddate
					iniread, subs, %A_ScriptDir%\subs.ini, subs, count
					subs += 1
					iniwrite, %subs%, %A_ScriptDir%\subs.ini, subs, count
					link := exportChatInviteLink(-1001473832098)
					ToSend := format(%lang%AcceptProof, link)
					SendMessageWithInlineButton(ToSend, id, 0, %lang%ok)
				}
				else if ( activated = 1 )
				{
					iniread, name, %A_ScriptDir%\users\%id%.ini, sys, name
					iniread, lang, %A_ScriptDir%\users\%id%.ini, sys, lang
					iniread, time, %A_ScriptDir%\users\%id%.ini, trading, time
					iniread, price, %A_ScriptDir%\users\%id%.ini, trading, price
					iniread, payment, %A_ScriptDir%\users\%id%.ini, trading, payment
					iniread, enddate, %A_ScriptDir%\users\%id%.ini, trading, enddate
					enddate := enddate + time
					iniwrite, %enddate%, %A_ScriptDir%\users\%id%.ini, trading, enddate
					ToSend := format(%lang%AcceptProof2, link)
					SendMessageWithInlineButton(ToSend, id, 0, %lang%ok)
				}
				inlinedone(tg.callback_query.id)                                 
				EditPhotoRequest("✅ Одобрено " tg.callback_query.from.first_name, tg.callback_query.message.message_id, tg.callback_query.message.chat.id, id, Name, Price, Payment)
			}
			else if ( what = "^" )
			{
				id := SubStr(tg.callback_query.data, 2)
				userid := tg.callback_query.message.chat.id
				iniread, name, %A_ScriptDir%\users\%id%.ini, sys, name
				iniread, lang, %A_ScriptDir%\users\%id%.ini, sys, lang
				iniread, time, %A_ScriptDir%\users\%id%.ini, trading, time
				iniread, price, %A_ScriptDir%\users\%id%.ini, trading, price
				iniread, payment, %A_ScriptDir%\users\%id%.ini, trading, payment
				SendMessage(%lang%ErrorProof, id, 0)
				inlinedone(tg.callback_query.id)                                 
				EditPhotoRequest("⛔️ Отклонено " tg.callback_query.from.first_name, tg.callback_query.message.message_id, tg.callback_query.message.chat.id, id, Name, Price, Payment)
			}



		}

		else if ( text != "" )
		{

			if ( text = "/start" )
			{
				IfNotExist, %A_ScriptDir%\users\%from_id%.ini
				{
					name := UriEncode(name)
					FileAppend,, %A_ScriptDir%\users\%from_id%.ini
					iniwrite, %name%, %A_ScriptDir%\users\%from_id%.ini, sys, name
					iniwrite, %username%, %A_ScriptDir%\users\%from_id%.ini, sys, username
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
					txt := % "Новый пользователь: <a href=""tg://user?id=" . from_id . """>" . name . "</a>"
					iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
					sendMessage(txt, approvechat, 0)

					txttemp := "🇷🇺 Выберите язык использования~🇺🇿 Foydalanish tilini tanlang"               
						keyboard=
					( 
					  {"inline_keyboard":[ [ {"text": "🇷🇺 Русский" , "callback_data" : "rulang"}, {"text": "🇺🇿 O'zbekcha" , "callback_data" : "uzlang"} ] ], "resize_keyboard" : true } 
					)
						SendMessageWithInlineButton(txttemp, from_id, 0, keyboard)
					
				}
				else
				{
					iniread, where, %A_ScriptDir%\users\%from_id%.ini, sys, where2
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%Home, from_id, 0, %lang%HomeMenu)
					

				}
			}
			else if ( text = "/start trading")
			{
				IfNotExist, %A_ScriptDir%\users\%from_id%.ini
				{
					iniwrite, ru, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					name := UriEncode(name)
					FileAppend,, %A_ScriptDir%\users\%from_id%.ini
					iniwrite, %name%, %A_ScriptDir%\users\%from_id%.ini, sys, name
					iniwrite, %username%, %A_ScriptDir%\users\%from_id%.ini, sys, username
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
					txt := % "Новый пользователь: <a href=""tg://user?id=" . from_id . """>" . name . "</a>"
					iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
					sendMessage(txt, approvechat, 0)
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where2
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					SendMessageWithInlineButton(%lang%Kurs1, from_id, 0, %lang%Next)
					
				}
				else
				{
					iniwrite, ru, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniread, where, %A_ScriptDir%\users\%from_id%.ini, sys, where2
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where2
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					SendMessageWithInlineButton(%lang%Kurs1, from_id, 0, %lang%Next)

					

				}
			}





			else if ( text = "⚡️ Торговые сигналы и аналитика" ) and ( where = "home" )
			{
				iniwrite, signals, %A_ScriptDir%\users\%from_id%.ini, sys, where
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				SendMessageWithButton(%lang%AboutTrading, from_id, 0, %lang%AgreeTradingMenu)
			}

			else if ( text = "🎓 Курс по трейдингу 2021" ) and ( where = "home" )
			{
				iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where2
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				SendMessageWithInlineButton(%lang%Kurs1, from_id, 0, %lang%Next)
			}

			else if ( text = "Оформить подписку" ) and ( where = "signals" )
			{
				iniwrite, choosetime, %A_ScriptDir%\users\%from_id%.ini, sys, where
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniread, activated, %A_ScriptDir%\users\%from_id%.ini, trading, activated
				if ( activated = 0 or activated = "ERROR" )
				{
					SendMessageWithButton(%lang%SendTime, from_id, 0, %lang%TimingMenu)
				}
				else if ( activated = 1 )
				{
					SendMessageWithButton(%lang%SendTime2, from_id, 0, %lang%TimingMenu)
				}
			}

			else if ( where = "choosetime" )
			{
				/*
				if ( text = "1 день" )
				{
					iniwrite, choosepayment, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, 86400, %A_ScriptDir%\users\%from_id%.ini, trading, time
					iniwrite, 1, %A_ScriptDir%\users\%from_id%.ini, trading, price
					SendMessageWithButton(%lang%SendPayment, from_id, 0, %lang%PaymentMenu)
				}
				*/
				if ( text = "1 месяц / $5" )
				{
					iniwrite, choosepayment, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, 2592000, %A_ScriptDir%\users\%from_id%.ini, trading, time
					iniwrite, 5, %A_ScriptDir%\users\%from_id%.ini, trading, price
					SendMessageWithButton(%lang%SendPayment, from_id, 0, %lang%PaymentMenu)
				}
				else if ( text = "3 месяца / $12" )
				{
					iniwrite, choosepayment, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, 7776000, %A_ScriptDir%\users\%from_id%.ini, trading, time
					iniwrite, 12, %A_ScriptDir%\users\%from_id%.ini, trading, price
					SendMessageWithButton(%lang%SendPayment, from_id, 0, %lang%PaymentMenu)
				}
				else if ( text = "6 месяцев / $20" )
				{
					iniwrite, choosepayment, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, 15552000, %A_ScriptDir%\users\%from_id%.ini, trading, time
					iniwrite, 20, %A_ScriptDir%\users\%from_id%.ini, trading, price
					SendMessageWithButton(%lang%SendPayment, from_id, 0, %lang%PaymentMenu)
				}
				else if ( text = "12 месяцев / $30" )
				{
					iniwrite, choosepayment, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, 31104000, %A_ScriptDir%\users\%from_id%.ini, trading, time
					iniwrite, 30, %A_ScriptDir%\users\%from_id%.ini, trading, price
					SendMessageWithButton(%lang%SendPayment, from_id, 0, %lang%PaymentMenu)
				}
				else if ( text = "« Назад")
				{
					iniwrite, signals, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					SendMessageWithButton(%lang%AboutTrading, from_id, 0, %lang%AgreeTradingMenu)
				}
			}

			else if ( where = "choosepayment" )
			{
				if ( text = "UzCard (UZS)" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, UzCard, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(UzCard, from_id, 0)
				}
				else if ( text = "Visa / MasterCard (RUB)" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, Mastercard, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(Mastercard, from_id, 0)
				}
				else if ( text = "Humo (UZS)" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, Humo, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(Humo, from_id, 0)
				}
				else if ( text = "ЮMoney (RUB)" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, Yoomoney, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(Yoomoney, from_id, 0)
				}
				else if ( text = "Qiwi (RUB)" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, Qiwi, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(Qiwi, from_id, 0)
				}
				else if ( text = "WebMoney (5 валют)" )
				{
					iniwrite, WebMoney, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					SendMessageWithButton(%lang%WebMoney, from_id, 0, %lang%WebMoneyMenu)
				}
				else if ( text = "« Назад")
				{
					iniwrite, choosetime, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniread, activated, %A_ScriptDir%\users\%from_id%.ini, trading, activated
					if ( activated = 0)
					{
						SendMessageWithButton(%lang%SendTime, from_id, 0, %lang%TimingMenu)
					}
					else
					{
						SendMessageWithButton(%lang%SendTime2, from_id, 0, %lang%TimingMenu)
					}
				}
			}

			else if ( where = "WebMoney" )
			{
				if ( text = "Доллары / WMZ" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, WMZ, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(WMZ, from_id, 0)
				}
				else if ( text = "Рос. рубли / WMR" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, WMR, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(WMR, from_id, 0)
				}
				else if ( text = "Рос. рубли / WMP" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, WMP, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(WMP, from_id, 0)
				}
				else if ( text = "Тенге / WMK" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, WMK, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(WMK, from_id, 0)
				}
				else if ( text = "Узбекские сумы / WMY" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, WMY, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(WMY, from_id, 0)
				}
				else if ( text = "Евро / WME" )
				{
					iniwrite, sendproof, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, WME, %A_ScriptDir%\users\%from_id%.ini, trading, payment
					iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
					ToSend := format(%lang%SendProof, price)
					SendMessageWithButton(ToSend, from_id, 0, %lang%Back)
					SendMessage(WME, from_id, 0)
				}
			}

			else if ( text = "/adminchat" ) and ( from_id = "290522124" )
			{
				iniread, lastchat, %A_ScriptDir%\adminchat.ini, chat, id
				iniwrite, %chat_id%, %A_ScriptDir%\adminchat.ini, chat, id
				SendMessage(uzchatset, chat_id, 0)
				SendMessage(uzchatdeleted, lastchat, 0)
			}

			else if ( text = "📄 Каталог услуг" or text = "📄 Xizmatlar katalogi" ) and ( where = "home" )
			{
				iniread, where, %A_ScriptDir%\users\%from_id%.ini, sys, where
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, sendprod, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%SendProd, from_id, 0, %lang%ProdMenu)
			}

			else if ( text = "🇺🇿 Tilni o'zgartirish" )
			{
				iniwrite, uz, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				SendMessageWithButton(uzLanguageChanged, from_id, 0, uzHomeMenu)
			}

			else if ( text = "🇷🇺 Сменить язык" )
			{
				iniwrite, ru, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				SendMessageWithButton(ruLanguageChanged, from_id, 0, ruHomeMenu)
			}

			else if ( text = "☎️ Контакты" or text = "☎️ Aloqalar" ) and ( where = "home")
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				sendmessage(%lang%Contacts, from_id, 0)
			} 

			else if ( text = "ℹ️ О нашей компании" or text = "ℹ️ Bizning kompaniya haqida" ) and ( where = "home")
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				sendmessage(%lang%About, from_id, 0)
			} 

			else if ( text = "« Назад" or text = "« Ortga")
			{
				iniread, where, %A_ScriptDir%\users\%from_id%.ini, sys, where
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				if ( where = "SendProd" or where = "signals" )
				{
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%home, from_id, 0, %lang%homemenu)
				}
				
				else if ( where = "dov" or where = "port" or where = "cryp" or where = "bank" or where = "con" or where = "nak" or where = "rate" )
				{
					iniwrite, sendprod, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendProd, from_id, 0, %lang%ProdMenu)
				}

				else if ( where = "sendbudget" )
				{
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniread, lastwhere, %A_ScriptDir%\orders\order%from_id%.ini, order, prod
					iniwrite, %lastwhere%, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%%lastwhere%, from_id, 0, %lang%applymenu)
				}

				else if ( where = "sendphone" )
				{
					iniread, ismoney, %A_ScriptDir%\orders\order%from_id%.ini, order, money
					if ( money = "ERROR" )
					{
						iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
						iniread, lastwhere, %A_ScriptDir%\orders\order%from_id%.ini, order, prod
						iniwrite, %prod%, %A_ScriptDir%\users\%from_id%.ini, sys, where
						SendMessageWithButton(%lang%lastwhere, from_id, 0, %lang%applymenu)
					}
					else
					{
						iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
						iniwrite, sendbudget, %A_ScriptDir%\users\%from_id%.ini, sys, where
						SendMessageWithButton(%lang%sendbudget, from_id, 0, %lang%budgetmenu)
					}
				}
	
				else if ( where = "sendlocation" )
				{
					iniwrite, sendphone, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%ResendPhone, from_id, 0, %lang%SendPhoneMenu)
				}

				else if ( where = "choosetime")
				{
					iniwrite, signals, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					SendMessageWithButton(%lang%AboutTrading, from_id, 0, %lang%AgreeTradingMenu)
				}

				else if ( where = "choosepayment")
				{
					iniwrite, choosetime, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniread, activated, %A_ScriptDir%\users\%from_id%.ini, trading, activated
					if ( activated = 0)
					{
						SendMessageWithButton(%lang%SendTime, from_id, 0, %lang%TimingMenu)
					}
					else
					{
						SendMessageWithButton(%lang%SendTime2, from_id, 0, %lang%TimingMenu)
					}
				}

				else if ( where = "sendproof" )
				{
					iniwrite, choosepayment, %A_ScriptDir%\users\%from_id%.ini, sys, where
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					SendMessageWithButton(%lang%SendPayment, from_id, 0, %lang%PaymentMenu)
				}
			}


			else if ( text = "Доверительное управление" or text = "Ishonchli boshqaruv" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, dov, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%dov, from_id, 0, %lang%applyMenu)
			}

			else if ( text = "Финансовая / инвест консультация" or text = "Moliyaviy / investitsiya bo'yicha konsalting" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, con, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%con, from_id, 0, %lang%applymenu)
			}

			else if ( text = "Создание инвестиционного портфеля" or text = "Investitsiya portfelini yaratish" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, port, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%port, from_id, 0, %lang%applymenu)
			}

			else if ( text = "Открытие счета в швейцарском банке" or text = "Shveytsariyada bank hisob raqamini ochish" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, bank, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%bank, from_id, 0, %lang%applymenu)
			}

			else if ( text = "Инвестирование в криптовалюту" or text = "Kripto valyutasiga sarmoya kiritish" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, cryp, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%cryp, from_id, 0, %lang%applyMenu)
			}

			else if ( text = "Накопительные программы" or text = "Yig'ish dasturlari" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, nak, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%nak, from_id, 0, %lang%applymenu)
			}

			else if ( text = "Экспертная оценка стратегий" or text = "Strategiyalarni ekspert baholash" and where = "SendProd" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, rate, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%rate, from_id, 0, %lang%applymenu)
			}


			else if ( text = "Оставить заявку" or text = "Ro’yhatdan o’tish")
			{
				if ( where = "dov" or where = "port" or where = "cryp" or where = "bank" )
				{
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					FileAppend,, %A_ScriptDir%\orders\order%from_id%.ini
					iniwrite, %from_id%, %A_ScriptDir%\orders\order%from_id%.ini, order, id
					iniwrite, %where%, %A_ScriptDir%\orders\order%from_id%.ini, order, prod
					iniwrite, sendbudget, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%sendbudget, from_id, 0, %lang%budgetmenu)
				}
				else if ( where = "con" or where = "nak" or where = "rate" )
				{
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					FileAppend,, %A_ScriptDir%\orders\order%from_id%.ini
					iniwrite, %from_id%, %A_ScriptDir%\orders\order%from_id%.ini, order, id
					iniwrite, %where%, %A_ScriptDir%\orders\order%from_id%.ini, order, prod
					iniwrite, sendphone, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%sendphone, from_id, 0, %lang%sendphonemenu)
				}
			}


			else if ( where = "sendbudget" )
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, %text%, %A_ScriptDir%\orders\order%from_id%.ini, order, money
				iniwrite, sendphone, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%sendphone, from_id, 0, %lang%sendphonemenu)
			}


			else if ( text = "Отмена" ) and ( where = "sendname" or where = "sendphone2" )
			{
				iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%Home, from_id, 0, %lang%homemenu)
			}

			else if ( where = "sendname" )
			{
				iniwrite, %text%, %A_ScriptDir%\users\%from_id%.ini, temp, name
				iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%Got, from_id, 0, %lang%homemenu)
				Kurs(from_id)
			}

			


				else if ( text = "🏠 В главное меню" or text = "🏠 Asosiy bo’limga qaytish")
				{
					iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%home, from_id, 0, %lang%homemenu)
				}

			





			else if ( where = "sendlocation" and text != "« Назад" and text != "« Ortga")
			{
				iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
				iniwrite, %text%, %A_ScriptDir%\orders\order%from_id%.ini, order, location
				iniwrite, home, %A_ScriptDir%\users\%from_id%.ini, sys, where
				SendMessageWithButton(%lang%Thanks, from_id, 0, %lang%homemenu)
				SendOrder(from_id)
			}




			else if ( where = "sendphone" and text != "« Назад" and text != "« Ortga")
			{
				if ( StrLen(text) = 14 and SubStr(text, 1, 5) = "`%2B9989")
				{
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, %text%, %A_ScriptDir%\orders\order%from_id%.ini, order, phone
					iniwrite, sendlocation, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendLocation, from_id, 0, %lang%LocationMenu)
				}
				else if ( StrLen(text) = 9 and SubStr(text, 1, 1) = "9")
				{
					text := "`%2B998" text
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, %text%, %A_ScriptDir%\orders\order%from_id%.ini, order, phone
					iniwrite, sendlocation, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendLocation, from_id, 0, %lang%LocationMenu)
				}
				else if ( StrLen(text) = 13 and SubStr(text, 1, 5) = "9989" )
				{
					text := "`%2B" text
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, %text%, %A_ScriptDir%\orders\order%from_id%.ini, order, phone
					iniwrite, sendlocation, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendLocation, from_id, 0, %lang%LocationMenu)
				}
				else
				{
					SendMessage(%lang%ErrorNumber, from_id, 0)
				}
			}

			else if ( where = "sendphone2" and text != "Отмена" )
			{
				if ( StrLen(text) = 13 and SubStr(text, 1, 5) = "+9989")
				{
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, %text%, %A_ScriptDir%\users\%from_id%.ini, temp, phone
					iniwrite, sendname, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendName, from_id, 0, %lang%Cancel)
				}
				else if ( StrLen(text) = 9 and SubStr(text, 1, 1) = "9")
				{
					text := "`%2B998" text
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, %text%, %A_ScriptDir%\users\%from_id%.ini, temp, phone
					iniwrite, sendname, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendName, from_id, 0, %lang%Cancel)
				}
				else if ( StrLen(text) = 12 and SubStr(text, 1, 5) = "9989" )
				{
					text := "`%2B" text
					iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
					iniwrite, %text%, %A_ScriptDir%\users\%from_id%.ini, temp, phone
					iniwrite, sendname, %A_ScriptDir%\users\%from_id%.ini, sys, where
					SendMessageWithButton(%lang%SendName, from_id, 0, %lang%Cancel)
				}
				else
				{
					SendMessage(%lang%ErrorNumber, from_id, 0)
				}
			}
		}
		else if ( where = "sendPhone" and contact != "" )
		{
			iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
			iniwrite, `%2B%contact%, %A_ScriptDir%\orders\order%from_id%.ini, order, phone
			iniwrite, sendlocation, %A_ScriptDir%\users\%from_id%.ini, sys, where
			SendMessageWithButton(%lang%SendLocation, from_id, 0, %lang%LocationMenu)
		}

		else if ( where = "sendPhone2" and contact != "" )
		{
			iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
			iniwrite, `%2B%contact%, %A_ScriptDir%\users\%from_id%.ini, temp, phone
			iniwrite, sendname, %A_ScriptDir%\users\%from_id%.ini, sys, where
			SendMessageWithButton(%lang%SendName, from_id, 0, %lang%Cancel)
		}

		else if ( where = "sendproof" and photo != "" )
		{
			iniread, lang, %A_ScriptDir%\users\%from_id%.ini, sys, lang
			iniread, payment, %A_ScriptDir%\users\%from_id%.ini, trading, payment
			iniread, time, %A_ScriptDir%\users\%from_id%.ini, trading, time
			iniread, price, %A_ScriptDir%\users\%from_id%.ini, trading, price
			SendToApproving2(from_id, name, price, payment, photo)
			SendMessageWithButton("Получили, скоро проверим оплату...", from_id, 0, remove)
		}

		else if ( channel_post != "" )
		{
			iniread, timer, %A_ScriptDir%\subs.ini, subs, timer
			date := tg.channel_post.date
			razn := date - timer
			;msgbox, %date% - %timer%
			;msgbox % razn
			if ( razn > 3600 )
			{
				iniwrite, %date%, %A_ScriptDir%\subs.ini, subs, timer
				iniread, subs, %A_ScriptDir%\subs.ini, subs, count
				plus := subs + 5
				members := getChatMembersCount(-1001473832098)
				if ( plus < members )
				{
					;msgbox % members
					iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
					SendMessage("⚠️ В канале обнаружены лишние люди, проверьте подписчиков", approvechat, 0)
					exportChatInviteLink(-1001473832098)
				}
				loop, files, %A_ScriptDir%\users\*.ini
				{
					iniread, activated, %A_ScriptDir%\users\%A_Loopfilename%, trading, activated
					if ( activated = 1 )
					{
						iniread, enddate, %A_ScriptDir%\users\%A_Loopfilename%, trading, enddate
						if ( enddate < date )
						{
							iniwrite, 0, %A_ScriptDir%\users\%A_Loopfilename%, trading, activated
							new := subs - 1
							iniwrite, %new%, %A_ScriptDir%\subs.ini, subs, count
							StringReplace, id, A_Loopfilename, .ini, , All
							kickChatMember(-1001473832098, id)
							SendMessage("Ваша подписка на канал истекла", id, 0)
						}
					}
				}
			}
		}
	}
}

; #####################################################################################################################

URIEncode(str, encoding := "UTF-8")
{
   PrevFormat := A_FormatInteger
   SetFormat, IntegerFast, H

   VarSetCapacity(var, StrPut(str, encoding))
   StrPut(str, &var, encoding)
  
   While code := NumGet(Var, A_Index - 1, "UChar")  
   {
      bool := (code > 0x7F || code < 0x30 || code = 0x3D)   
      UrlStr .= bool ? "%" . SubStr("0" . SubStr(code, 3), -1) : Chr(code)
   }
   SetFormat, IntegerFast, % PrevFormat
   Return UrlStr
}

StrPutVar(Str, ByRef Var, Enc = "")
{
	Len := StrPut(Str, Enc) * (Enc = "UTF-16" || Enc = "CP1200" ? 2 : 1)
	VarSetCapacity(Var, Len, 0)
	Return, StrPut(Str, &Var, Enc)
}


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



SendMessageWithButton(text, chat_id, reply, keyboard)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	;text := UriEncode(text)
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendMessage?text=" . text . "&chat_id=" . chat_id . "&reply_to_message_id=" . reply . "&reply_markup=" . Keyboard . "&parse_mode=HTML"
	json_message := URLDownloadToVar(url)
	json_load := JSON.load(json_message)
	link := json_load.result.message
	return link
	;msgbox % json_message 
}

SendMessageWithInlineButton(text, chat_id, reply, keyboard)
{ 
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	;text := UriEncode(text)
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendMessage?text=" . text . "&chat_id=" . chat_id . "&reply_to_message_id=" . reply . "&reply_markup=" . Keyboard . "&parse_mode=HTML"
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
	return
}

SendMessage(text, chat_id, reply)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	;text := UriEncode(text)
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendMessage?text=" . text . "&chat_id=" . chat_id . "&reply_to_message_id=" . reply . "&parse_mode=HTML&disable_web_page_preview=True"
	
	json_message := URLDownloadToVar(url)
	;msgbox, sending %json_message%
	return
}

GetUpdates(offset="", updlimit=100, timeout=0)     
{			
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	If (updlimit>100)
		updlimit := 100
	url := "https://api.telegram.org/bot" BotToken "/getupdates?offset=" offset "&limit=" updlimit "&timeout=" timeout
	clipped := URLDownloadToVar(url)					
	return clipped
}

inlinedone(id) 
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	url := "https://api.telegram.org/bot" BotToken "/answerCallbackQuery?callback_query_id=" id "&show_alert=true"
	;url := "https://api.telegram.org/bot" BotToken "/answerCallbackQuery?text=Notification&callback_query_id=" id "&show_alert=true"
	json_message := URLDownloadToVar(url)
}

forward(to, from, message_id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/forwardMessage?chat_id=" . to . "&from_chat_id=" . from . "&message_id=" . message_id
	json_message := URLDownloadToVar(url)
	return
}

DeleteMessage(chat_id, message_id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	url := "https://api.telegram.org/bot" . BotToken . "/deleteMessage?chat_id=" . chat_id . "&message_id=" . message_id
	json_message := URLDownloadToVar(url)
}

SendToApproving(NewId, NewName, NewGroup, NewGrade, NewPaid, NewPhone, NewPhoto)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	approvechat = 290522124
	keyboard=
	( 
		{"inline_keyboard":[ [ {"text": "✅ Одобрить" , "callback_data" : "`%2B%newid%"}, {"text" : "🚫 Отклонить",  "callback_data" : "^%newid%"} ] ], "resize_keyboard" : true } 
	)
	if ( NewPaid = 1)
		NewPaid := "контракт"
	else
		NewPaid := "бюджет"
	text := "<b>Новая заявка:</b>~~Системный ID: <a href=""tg://user?id=" . NewID . """>" . NewID . "</a>~~<b>Имя:</b> " NewName "~<b>Группа:</b> " NewGroup " (" NewGrade " курс)~<b>Тип обучения:</b> " NewPaid "~<b>Телефон:</b> " NewPhone "~~Нажмите одну из кнопок ниже для обработки"
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?chat_id=" . approvechat . "&photo=" . NewPhoto . "&parse_mode=HTML&caption=" . text . "&reply_markup=" . keyboard
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

EditPhotoRequestStaff(status, message_id, chat_id, NewId, NewName, NewPosition, NewPhone, NewPhoto)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	approvechat = 290522124
	text := "<b>Новая заявка:</b>~~Системный ID: <a href=""tg://user?id=" . NewID . """>" . NewID . "</a>~~<b>Имя:</b> " NewName "~<b>Должность:</b> " NewPosition "~<b>Телефон:</b> " NewPhone "~~" status
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/editMessageCaption?parse_mode=HTML&caption=" . text . "&message_id=" . message_id . "&chat_id=" . chat_id
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

SendProfile(from_id, text, photo)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?chat_id=" . from_id . "&photo=" . Photo . "&parse_mode=HTML&caption=" . text
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

SendProfileGroupmate(from_id, text, photo, keyboard)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?chat_id=" . from_id . "&photo=" . Photo . "&parse_mode=HTML&caption=" . text . "&reply_markup=" . keyboard
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

SendToApprovingStaff(newid, NewName, NewPosition, NewPhone, NewPhoto)
{
	;msgbox % newphoto
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	approvechat = 290522124
	keyboard=
	( 
		{"inline_keyboard":[ [ {"text": "✅ Одобрить" , "callback_data" : "*%newid%"}, {"text" : "🚫 Отклонить",  "callback_data" : "-%newid%"} ] ], "resize_keyboard" : true } 
	)
	text := "<b>Новая заявка:</b>~~Системный ID: <a href=""tg://user?id=" . NewID . """>" . NewID . "</a>~~<b>Имя:</b> " NewName "~<b>Должность:</b> " NewPosition "~<b>Телефон:</b> " NewPhone "~~Нажмите одну из кнопок ниже для обработки"
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?chat_id=" . approvechat . "&photo=" . NewPhoto . "&parse_mode=HTML&caption=" . text . "&reply_markup=" . keyboard
	json_message := URLDownloadToVar(url)
}

SendCabinet(from_id, photo, caption, keyboard)
{
	StringReplace, caption, caption, ~, `%0A, All
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?chat_id=" . from_id . "&photo=" . photo . "&caption=" . caption . "&parse_mode=HTML&reply_markup=" . keyboard
	json_message := URLDownloadToVar(url)
}

SendOrder(id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
	iniread, name, %A_ScriptDir%\users\%id%.ini, sys, name
	iniread, language, %A_ScriptDir%\users\%id%.ini, sys, lang
	iniread, course, %A_ScriptDir%\orders\order%id%.ini, order, prod
	iniread, money, %A_ScriptDir%\orders\order%id%.ini, order, money

	language := StrReplace( language, "ru", "русский")
	language := StrReplace( language, "uz", "узбекский")

	course := StrReplace( course, "dov", "доверительное управление")
	course := StrReplace( course, "con", "консультация")
	course := StrReplace( course, "port", "создание инвест портфеля")
	course := StrReplace( course, "bank", "открытие счета")
	course := StrReplace( course, "cryp", "инвестирование в крипту")
	course := StrReplace( course, "nak", "накопительные программы")
	course := StrReplace( course, "rate", "оценить продукт")

	iniread, phone, %A_ScriptDir%\orders\order%id%.ini, order, phone
	iniread, location, %A_ScriptDir%\orders\order%id%.ini, order, location

	location := StrReplace( location, "Toshkent shahri", "Ташкент")
	location := StrReplace( location, "Boshqa shahri", "другой город")
	location := StrReplace( location, "Boshqa mamlakati", "другая страна")


	if ( money = "")
	{
		text := "<b>Новая заявка:</b>~~<b>Клиент:</b> <a href=""tg://user?id=" . ID . """>" . name . "</a>~<b>Услуга:</b> " . course . "~<b>Телефон:</b> " . phone . "~<b>Где живет:</b> " . location . "~<b>Язык:</b> " . language
	}
	else
	{
		text := "<b>Новая заявка:</b>~~<b>Клиент:</b> <a href=""tg://user?id=" . ID . """>" . name . "</a>~<b>Услуга:</b> " . course . "~<b>Телефон:</b> " . phone . "~<b>Где живет:</b> " . location . "~<b>Язык:</b> " . language
	}
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendMessage?text=" . text . "&chat_id=" . approvechat . "&parse_mode=HTML"
	json_message := URLDownloadToVar(url)
	FileDelete, %A_ScriptDir%\orders\order%id%.ini
}

SendToApproving2(Id, Name, Price, Payment, Screen)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
	keyboard=
	( 
		{"inline_keyboard":[ [ {"text": "✅ Выдать доступ" , "callback_data" : "*%id%"}, {"text" : "🚫 Оплата не прошла",  "callback_data" : "^%id%"} ] ], "resize_keyboard" : true } 
	)
	text := "<b>Новая оплата:</b>~~Telegram ID: <a href=""tg://user?id=" . ID . """>" . ID . "</a> (можно нажать)~~<b>Имя:</b> " Name "~<b>Сумма оплаты:</b> $" price "~<b>Способ оплаты:</b> " Payment "~~Нажмите одну из кнопок ниже для обработки"
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendphoto?chat_id=" . approvechat . "&photo=" . Screen . "&parse_mode=HTML&caption=" . text . "&reply_markup=" . keyboard
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

EditPhotoRequest(status, message_id, chat_id, Id, Name, Price, Payment)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id

	text := "<b>Новая оплата:</b>~~Telegram ID: <a href=""tg://user?id=" . ID . """>" . ID . "</a> (можно нажать)~~<b>Имя:</b> " Name "~<b>Сумма оплаты:</b> $" price "~<b>Способ оплаты:</b> " Payment "~~" status
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/editMessageCaption?parse_mode=HTML&caption=" . text . "&message_id=" . message_id . "&chat_id=" . chat_id
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

exportChatInviteLink(id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	url := "https://api.telegram.org/bot" . BotToken . "/exportChatInviteLink?chat_id=" . id
	json_message := URLDownloadToVar(url)
	json_load := JSON.load(json_message)
	link := json_load.result
	return link
}

getChatMembersCount(id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	url := "https://api.telegram.org/bot" . BotToken . "/getChatMembersCount?chat_id=" . id
	json_message := URLDownloadToVar(url)
	json_load := JSON.load(json_message)
	link := json_load.result
	return link
}

kickChatMember(ch, id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	url := "https://api.telegram.org/bot" . BotToken . "/kickChatMember?chat_id=" . ch . "&user_id=" . id
	json_message := URLDownloadToVar(url)
}

EditMessageText(text, message_id, chat_id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	StringReplace, text, text, ~, `%0A, All
	StringReplace, text, text, +, `%2B, All
	url := "https://api.telegram.org/bot" . BotToken . "/editMessageText?parse_mode=HTML&text=" . text . "&message_id=" . message_id . "&chat_id=" . chat_id
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

editMessageReplyMarkup(buttons, message_id, chat_id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
	url := "https://api.telegram.org/bot" . BotToken . "/editMessageReplyMarkup?parse_mode=HTML&reply_markup=" . buttons . "&message_id=" . message_id . "&chat_id=" . chat_id
	json_message := URLDownloadToVar(url)
	;msgbox % json_message
}

Kurs(id)
{
	BotToken = 1024152843:AAG2c2SgW-8rM5IOGXiSrbHY2xZQhWCzpgk
	iniread, approvechat, %A_ScriptDir%\adminchat.ini, chat, id
	iniread, name, %A_ScriptDir%\users\%id%.ini, temp, name
	iniread, phone, %A_ScriptDir%\users\%id%.ini, temp, phone
	iniread, plan, %A_ScriptDir%\users\%id%.ini, temp, plan

	language := StrReplace( language, "ru", "русский")
	language := StrReplace( language, "uz", "узбекский")

	plan := StrReplace( plan, "standart", "стандартный за $99")
	plan := StrReplace( plan, "extended", "расширенный за $149")
	plan := StrReplace( plan, "individual", "индивидуальный за $499")

	text := "<b>Заявка на обучение:</b>~~<b>Клиент:</b> <a href=""tg://user?id=" . ID . """>" . name . "</a>~<b>Тариф:</b> " . plan . "~<b>Телефон:</b> " . phone 
	
	StringReplace, text, text, ~, `%0A, All
	url := "https://api.telegram.org/bot" . BotToken . "/sendMessage?text=" . text . "&chat_id=" . approvechat . "&parse_mode=HTML"
	json_message := URLDownloadToVar(url)
}