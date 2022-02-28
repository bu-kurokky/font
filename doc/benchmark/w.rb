base = "
|gif |st_count_default | 96K|6.6%|
|gif |st_count_palette | 40K|2.7%|
|apng|st_count_default |732K|51.0%|
|apng|st_count_fps10   |732K|51.0%|
|apng|st_count_palette |192K|13.3%|
|apng|st_count_palette2| 40K|2.7%|
|webp|st_count_default | 16K|1.1%|
|webp|st_count_10_q100 |1.5M|107.1%|
|webp|st_count_10_q000 |212K|14.7%|
|webp|st_count_10_lv6  |804K|56%|
|webp|st_count_10_lv0  |804K|56%|
|gif |gradation_default |1.1M|61.1%|
|gif |gradation_palette |2.2M|122%|
|apng|gradation_default |2.2M|122%|
|apng|gradation_fps10   |2.2M|122%|
|apng|gradation_palette |6.9M|383%|
|apng|gradation_palette2|1.5M|83%|
|webp|gradation_default | 35K|1.8%|
|webp|gradation_10_q100 |363K|19.6%|
|webp|gradation_10_q000 | 71K|3.8%|
|webp|gradation_10_lv6  |120K|6.5%|
|webp|gradation_10_lv0  |120K|6.5%|
"
base.split("\n").each do |t|
	if t == ""
		next
	end
	t = t.split('|')
	f_name = [t[2],t[1]].join(".").gsub(' ','')
	tag = "
		<li>
			<p> #{f_name}(#{t[3]}/#{t[4]})</p>
			<pre>ffmpeg -i gradation.mov gradation_default.gif</pre>
			<img src=\"./#{f_name}\" width=\"496\" height=\"121\">
		</li>"
	puts tag
end