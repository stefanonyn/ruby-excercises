chapter_num = 1
chapter_pages = [['Getting Started','1'],['Numbers','9'],['Letters','13']]

puts 'Table of Contents'.center(80)
puts ''

chapter_pages.each do |chap|

	chap_name = chap[0]
	chap_page = chap[1]
	beginning = 'Chapter ' + chapter_num.to_s + ':   ' + chap_name
	final = chap_page
	
	puts beginning.ljust(40) + final.rjust(20)
	chapter_num += 1
end
