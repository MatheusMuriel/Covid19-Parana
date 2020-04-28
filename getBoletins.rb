require 'open-uri'

#"http://www.saude.pr.gov.br/arquivos/File/CORONA_28022020.pdf"
#file = HTTParty.get("http://www.saude.pr.gov.br/arquivos/File/CORONA_28022020.pdf").body

dia = 28
mes = 02
ano = 2020

incrementMes = -> (){
  mes = (mes >= 12) ? 1 : mes + 1
}

incrementDate = -> (){
  if (dia >= 31) then
    dia = 1
    incrementMes.()
  else 
    dia = dia + 1
  end
}

while (mes < 5) do
  d = format('%02d', dia)
  m = format('%02d', mes)
  a = format('%04d', ano)

  #file = HTTParty.get("http://www.saude.pr.gov.br/arquivos/File/CORONA_28022020.pdf").body
  url = "http://www.saude.pr.gov.br/arquivos/File/CORONA_#{d}#{m}#{a}.pdf"
  puts url
  begin
    download = open(url)
    file_data = "#{d}-#{m}-#{a}"
    IO.copy_stream(download, "pdfs/#{file_data}.pdf")
  rescue OpenURI::HTTPError => ex
    puts "Handle missing video here"
  end 
  incrementDate.()
end
