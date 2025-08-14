# Copyright (c) 2025 Guilherme Duarte Silva Matos (up202208755@up.pt)

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

PROJECT_ROOT_FILE=main
PROJECT_BUILD_DIR=out

all:
	mkdir -p ${PROJECT_BUILD_DIR}
	mkdir -p ${PROJECT_BUILD_DIR}/pages
	pdflatex -output-directory=${PROJECT_BUILD_DIR} ${PROJECT_ROOT_FILE}.tex 
	bibtex   ${PROJECT_BUILD_DIR}/${PROJECT_ROOT_FILE}
	pdflatex -output-directory=${PROJECT_BUILD_DIR} ${PROJECT_ROOT_FILE}.tex
	pdflatex -output-directory=${PROJECT_BUILD_DIR} ${PROJECT_ROOT_FILE}.tex
	mv ${PROJECT_BUILD_DIR}/${PROJECT_ROOT_FILE}.pdf ${PROJECT_ROOT_FILE}.pdf

clean:
	rm -rf ${PROJECT_BUILD_DIR}
