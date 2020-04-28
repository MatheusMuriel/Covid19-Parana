import camelot

tables = camelot.read_pdf('CORONA_08042020.pdf', pages="all")

tables.export('fooc/foos.csv', f='csv')

