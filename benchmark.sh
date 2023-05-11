#
#
# 10 paralelas - 100 requests
#
#
ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf?repeats=1" > logs/html-pdf_common_paginas-1_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf-node?repeats=1" > logs/html-pdf-node_common_paginas-1_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer?repeats=1" > logs/puppeteer_common_1p-s_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer-shared-browser?repeats=1" > logs/puppeteer-shared-browser_common_paginas-1_requisicoes-100_paralelo-10.txt

ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf?repeats=10" > logs/html-pdf_common_paginas-10_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf-node?repeats=10" > logs/html-pdf-node_common_paginas-10_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer?repeats=10" > logs/puppeteer_common_paginas-10_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer-shared-browser?repeats=10" > logs/puppeteer-shared-browser_common_paginas-10_requisicoes-100_paralelo-10.txt

ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf?type=withImage&repeats=1" > logs/html-pdf_withImage_paginas-1_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf-node?type=withImage&repeats=1" > logs/html-pdf-node_withImage_paginas-1_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer?type=withImage&repeats=1" > logs/puppeteer_withImage_paginas-1_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer-shared-browser?type=withImage&repeats=1" > logs/puppeteer-shared-browser_withImage_paginas-1_requisicoes-100_paralelo-10.txt

ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf?type=withImage&repeats=10" > logs/html-pdf_withImage_paginas-10_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/html-pdf-node?type=withImage&repeats=10" > logs/html-pdf-node_withImage_paginas-10_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer?type=withImage&repeats=10" > logs/puppeteer_withImage_paginas-10_requisicoes-100_paralelo-10.txt
ab -k -c 10 -n 100 "http://localhost:3000/pdf/puppeteer-shared-browser?type=withImage&repeats=10" > logs/puppeteer-shared-browser_withImage_paginas-10_requisicoes-100_paralelo-10.txt
#
#
# 30 Paralelas - 300 requests
#
#
ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf?repeats=2" > logs/html-pdf_common_paginas-2_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf-node?repeats=2" > logs/html-pdf-node_common_paginas-2_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer?repeats=2" > logs/puppeteer_common_paginas-2_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer-shared-browser?repeats=2" > logs/puppeteer-shared-browser_common_paginas-2_requisicoes-200_paralelo-30.txt

ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf?repeats=11" > logs/html-pdf_common_paginas-11_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf-node?repeats=11" > logs/html-pdf-node_common_paginas-11_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer?repeats=11" > logs/puppeteer_common_paginas-11_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer-shared-browser?repeats=11" > logs/puppeteer-shared-browser_common_paginas-11_requisicoes-200_paralelo-30.txt

ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf?type=withImage&repeats=2" > logs/html-pdf_withImage_paginas-2_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf-node?type=withImage&repeats=2" > logs/html-pdf-node_withImage_paginas-2_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer?type=withImage&repeats=2" > logs/puppeteer_withImage_paginas-2_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer-shared-browser?type=withImage&repeats=2" > logs/puppeteer-shared-browser_withImage_paginas-2_requisicoes-200_paralelo-30.txt

ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf?type=withImage&repeats=11" > logs/html-pdf_withImage_paginas-11_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/html-pdf-node?type=withImage&repeats=11" > logs/html-pdf-node_withImage_paginas-11_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer?type=withImage&repeats=11" > logs/puppeteer_withImage_paginas-11_requisicoes-200_paralelo-30.txt
ab -k -c 30 -n 200 "http://localhost:3000/pdf/puppeteer-shared-browser?type=withImage&repeats=11" > logs/puppeteer-shared-browser_withImage_paginas-11_requisicoes-200_paralelo-30.txt