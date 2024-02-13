@regression

Feature: ToolShop Login Testleri
    # feature, like description block

    #Pozitive Scenario
    @smoke @validLogin
    Scenario: Admin hesabi ile geçerli verilerle login testi
        #scenario, like it blocks
        Given Ben ToolShop sitesine giderim
        When Sign in linkine tiklarim
        And Email alanina bir email yazarim
        And Password alanina bir password yazarim
        And Login butonuna tiklarim
        Then Dasboard sayfasinin acildigini dogrularim
        And Site URLinde admin dashboard kelimelerinin gectigini dogrularim


    #Negative Scenario
    
    @smoke @invalidLogin
    Scenario: Email alani bos birakilarak login testi

        Given Ben ToolShop sitesine giderim
        When  Sign in linkine tiklarim
        And  Email alanini bos birakirim
        And Password alanina bir password yazarim
        And Login butonuna tiklarim
        Then Emailin gerekli oldugunu soyleyen bir hata mesaji gorurum
