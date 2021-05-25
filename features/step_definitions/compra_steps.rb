
Quando('adiciono o item ao carrinho') do
   
   #adicionar item ao carrinho e validação
   click_button "Add to cart"
   expect(page).to have_content "Product successfully added to your shopping cart"
   
end
  
Entao('posso finalizar minha compra') do
    

    find('.button-medium').click
    expect(page).to have_content "SHOPPING-CART SUMMARY"

    #
    find('.standard-checkout').click
    expect(page).to have_content "AUTHENTICATION"

    #fazer login e validação
    find('#email').set "testeum@teste.com"
    find('#passwd').set "12345"
    click_button "Sign in"
    
    #página de endereço
    expect(page).to have_content "ADDRESSES"
    click_button "Proceed to checkout"
    
    #página de envio
    expect(page).to have_content "SHIPPING"
    find('#uniform-cgv').set(true)
    click_button "Proceed to checkout"

    
    #página de pagamento
    expect(page).to have_content "PLEASE CHOOSE YOUR PAYMENT METHOD"
    find('.bankwire').click
    expect(page).to have_content "BANK-WIRE PAYMENT."
    click_button "I confirm my order"
    expect(page).to have_content "Your order on My Store is complete."

    
end

#cucumber -t @temp