
Dado('que acesso a página principal') do
    #acessar página
    visit("/index.php")

end
  

Quando('busco pelo item desejado') do
    
    #pesquisa do item
    find('input[placeholder="Search"]').set  "Faded Short Sleeve"
    find('button[name="submit_search"]').click
    find('.left-block').click

end

Então('sou direcionado ao item desejado') do
    #validação
    expect(page).to have_content "Faded Short Sleeve T-shirts"
end