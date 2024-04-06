get https://github.com/chrishwiggins/2024-brown-hacks-hackers.git
cd 2024-brown-hacks-hackers/
lynx -dump https://www.westbranch.org/school-board/meeting-minutes/ | urls | grep pdf > pdfs.url
lynx -dump https://www.westbranch.org/school-board/meeting-minutes/ | urls | grep zip > zip.url
cat pdfs.url | xargs wget
cat zip.url | xargs wget
mkdir pdfs
mi *.pdf pdfs
mkdir zips
mi *.zip zips
# not reproducible, sorry: % dupseek .
git add *
