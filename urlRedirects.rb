require "rubygems"
require "watir-webdriver"
require "net/http"

def gotoURLs
	browser = Watir::Browser.new(:chrome)
	mainhost = 'http://www.meaningfulbeauty.com'
	uci = Array['/lp/wbdmbrush/index.php?uci=US-MT-D-TP-GR-4857',
		        '/lp/wbdm/index.php?uci=US-MT-D-TP-GR-4860',
				'/lp/wbdm/index.php?uci=US-MT-D-TP-GR-4861',
				'/lp/comeback16/index.php?uci=US-MT-D-TP-GR-4862',
				'/lp/comeback17/index.php?uci=US-MT-D-TP-GR-4863',
				'/lp/5steps_b/index.php',
				'/lp/5steps_i/index.php',
				'/lp/5steps/index.php',
				'/lp/buynow/index.php',
				'/lp/elements/index.php',
				'/lp/elements_b/index.php',
				'/lp/elements_i/index.php',
				'/lp/freegifts/index.php',
				'/lp/mb4ms/index.php',
				'/lp/mb429f/index.php',
				'/lp/mb4brush/index.php',
				'/lp/mblpt/index.php',
				'/lp/secret1/index.php',
				'/lp/secret2/index.php',
				'/lp/secret3/index.php',
				'/lp/secret4/index.php',
				'/lp/trynewmb/index.php',
				'/lp/yourterms/index.php',
				'/lp/yourchoice/index.php']
	vanityURL = Array[
				'meaningfulbeauty.com',
				'trymeaningfulbeauty.com',
				'www.trymb.com',
				'www.trymb.com/travel',
				'www.trymb.com/brush',
				'www.trymb.com/free',
				'trynewmb.com',
				'trymb.com/new',
				'http://www.meaningfulbeauty.com/sitemap.php',
				'https://meaningfulbeauty.guthyrenker.com',
				'http://meaningfulbeauty.guthyrenker.com',
				'meaningfulbeauty.guthyrenker.com',
				'www9.meaningfulbeauty.com',
				'https://store.meaningfulbeauty.com/meaningful',
				'http://store.meaningfulbeauty.com/meaningful',
				'meaningfulbeauty.com/meaningful',
				'https://catalog.meaningfulbeauty.com',
				'http://catalog.meaningfulbeauty.com',
				'catalog.meaningfulbeauty.com',
				'meaningfulbeautysummer.com/free',
				'https://store.meaningfulbeauty.com/meaningful/?new=APGA3B&uci=US-MT-D-EM-GR-4285&auth=S5E1Hk-N&acct=288832371&zip=59715',
				'https://store.meaningfulbeauty.com/meaningful/?new=APGB3B&uci=US-MT-D-EM-GR-4286&auth=S5E--AYK&acct=288832371&zip=59715',
				'https://store.meaningfulbeauty.com/meaningful/?new=APGC3B&uci=US-MT-D-EM-GR-4287&auth=S5FItcrg&acct=288832371&zip=59715',
				'mbcatalogue.com',
				'meaningfulbeautyboutique.com',
				'shopmeaningfulbeauty.com',
				'meaningfulbeautysummer.com',
				'meaningfulbeautysummer.com/gift',
				'meaningfulbeautysummer.com/shop',
				'meaningfulbeautyfall.com',
				'mbspring.com',
				'mbspring.com/gift',
				'mbspring.com/ship',
				'meaningfulbeautyoffer.com',
				'mbfall.com',
				'mbautumn.com',
				'mbautumn.com/10',
				'mbautumn.com/gift',
				'mb.mbwelcomeback.com',
				'mbwelcomeback.com',
				'meaningfulbeautycatalog.com',
				'meaningfulbeautywinter.com',
				'www.mbsummer.com/GIFT',
				'mbsummer.com',
				'www.mbsummer.com/gift'
				]
	@urls = []
	uci.each do |i|
		# uri = mainhost + uci.at(i)
		# response = Net::HTTP.get_response(URI(uri))
		# puts response.body
		url = browser.goto mainhost + i
		@urls << url
		sleep 5
	end
	vanityURL.each do |j|
		url = browser.goto j
		@urls << url
		sleep 5
	end
	browser.close()
	puts @urls
	# browser.goto (mainhost + uci2)
	# sleep 7
	# browser.goto (mainhost + uci3)
	# sleep 7
end

gotoURLs