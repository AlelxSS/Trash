require 'telegram/bot'
token = '497028477:AAERLo-AfA-NwqvcngZtuM5BvUq-wxVCLOM'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Ой, ну привееет, #{message.from.first_name}")
	#Greetings
	when /привет|здарова/
		#some variants of answers
		case rand(5)
		when 4
			puts "Аагга.."
		else
			puts "Привет"
		end
	#so then we just checking questions
	when /почему/
		case rand(3)
		when 0
			puts "Потому"
		when 1
			puts "Потому что"
		else
			puts "Покочену"
		end
	when /зачем/
		case rand(3)
		when 0
			puts "А вот затем"
		when 1
			puts "Надо"
		else
			puts "За шкафом"
		end
	when /что/
		puts "Что-то"
	when /кто/
		puts "Кто-то"
	when /кого/
		puts "кого-то"
	when /где/
		puts "Где-то"
	when /как\s|как$/
		puts "Как-то"
	when /кому/
		puts "Кому-то"
	when /когда/
		puts "Не знаю"
	when /какой/
		puts "Какой-то"
	when /куда/
		puts "Куда-то"
	when /чей/
		puts "Общий"
	#unusual questions
	when /\?/
		case rand(4)
		when 0
			puts "Ой все"
		when 1
			puts "Не знаю"
		when 2
			puts "Отстань"
		else
			puts "...молчание..."
		end
	#if we can't recognize message...
	else
		case rand(4)
		when 0
			puts "Аагга.."
		else
			puts "...молчание..."
		end
	end
  end
end
