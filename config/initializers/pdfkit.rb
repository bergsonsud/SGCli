PDFKit.configure do |config|
     config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf' if Rails.env.production?
       config.default_options = {
    :encoding=>"UTF-8",
    :page_size=>"A4", #or "Letter" or whatever needed
    :margin_top=>"0.5in",
    :margin_right=>"0.5in",
    :margin_bottom=>"0.25in",
    :margin_left=>"0.5in",
    :footer_left => 'Franzé Teles Contabilidade',
    :header_center => 'SGCli - Relatório de Clientes',
    
    :footer_right => 'Página [page] de [toPage]',
    :disable_smart_shrinking=>false
    }
end