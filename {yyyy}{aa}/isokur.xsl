<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:decimal-format name="eurofrmt" decimal-separator="." grouping-separator=","/>
    <xsl:template match="/">
        <html>
            <head>
                <title>TCMB Kurlar Sayfası</title>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" title="" media="screen" href="/wps/wcm/connect/fb2f24e4-9201-49e6-9129-b1d07e6bb958/bootstrap.min.css?MOD=AJPERES&CACHEID=ROOTWORKSPACEfb2f24e4-9201-49e6-9129-b1d07e6bb958" type="text/css"/>
                <script src="/wps/wcm/connect/87ec9e18-034e-4328-ae5c-f0b923c930c1/jquery.min.js?MOD=AJPERES&CACHEID=ROOTWORKSPACE87ec9e18-034e-4328-ae5c-f0b923c930c1"/>
                <script src="/wps/wcm/connect/68971e5e-6a47-4dc8-a387-553033c45e2a/bootstrap.min.js?MOD=AJPERES&CACHEID=ROOTWORKSPACE68971e5e-6a47-4dc8-a387-553033c45e2a"/>
                <style>
                    #contentContainer { background: none repeat scroll 0 0 #FFFFFF; margin: 5px 0 0; padding: 5px; } #kurlarContainer h1 { color: #7C3348; font-size: 15px; margin: 0; padding: 0; font-family: Tahoma,Geneva,sans-serif; } .kurlarTablo { font-family: Tahoma,Geneva,sans-serif; margin:15px 0px; width: 100%; } .kurlarTablo th { background: none repeat scroll 0 0 #ECECEC; border-bottom: 1px solid #CACACA; color: #C16F86; font-size: 11px; letter-spacing: 0.1em; padding: 5px 10px; text-align: left } tr:nth-child(even) { background: none repeat scroll 0 0 #FBFBFB; } tr:nth-child(odd) { background: none repeat scroll 0 0 #F1F1F1;	} .kurlarTablo td.para { border-bottom: 1px solid #E4E4E4; border-top: 1px solid #FFFFFF; color: #8A8A8A; font-size: 10px; font-weight: bold; letter-spacing: 0.1em; padding: 5px 10px; width: 21%; } .kurlarTablo td.deger { border-bottom: 1px solid #E4E4E4; border-top: 1px solid #FFFFFF; color: #8A8A8A; font-size: 10px; letter-spacing: 0.1em; padding: 5px 20px 5px 5px; font-weight: bold; text-align: right; width: 13%;	} .kurlarTablo td.efdeger { width: 16%;	} .kurlarTablo td.kurkodu { width: 15%; } .kurlarTablo td.birim { width: 6%; } .kurlarTablo td.capraz { text-align: left; width: 45%; } .tcmbfont { font-family: Tahoma,Geneva,sans-serif; color: #222222; font-size: 12px; } body { font: 11px/18px Georgia, "Times New Roman", Times, serif; color: #747474; } caption, th { text-align: left;}	span.kurgorsel { display: inline-block; height: 100%; width: 16px; padding-right: 3px; margin: auto; background-repeat: no-repeat; } .detailContentContainer { padding: 15px 5px 0px 5px; } @media only screen and (max-device-width: 960px) { /*fixes too big font in mobile Safari*/ html { -webkit-text-size-adjust:none; } } tr { height: 30px; } .table-responsive { overflow-x: auto; min-height: 0.01%; } @media screen and (max-width: 767px) { .table-responsive { width: 100%; margin-bottom: 15px; overflow-y: hidden; -ms-overflow-style: -ms-autohiding-scrollbar; border: 1px solid #dddddd; } }
                </style>
            </head>
            <body>
                <div id="contentContainer">
                    <div id="kurlarContainer" class="table-responsive">
                        <h1>
                            <xsl:value-of select="Tarih_Date/@Tarih"/>
                            Günü Saat 15:30'da Belirlenen Gösterge Niteliğindeki Türkiye Cumhuriyet Merkez Bankası Kurları
                        </h1>
                        <span class="tcmbfont">
                            Indicative Exchange Rates Announced at 15:30 on
                            <xsl:value-of select="Tarih_Date/@Date"/>
                            by the Central Bank of Turkey
                        </span>
                        <br/>
                        <span class="tcmbfont">
                            Bülten No:
                            <xsl:value-of select="Tarih_Date/@Bulten_No"/>
                        </span>
                        <table class="kurlarTablo" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <th>
                                    <strong>Döviz Kodu</strong>
                                    <br/>
                                    Currency Code
                                </th>
                                <th>
                                    <strong>Birim</strong>
                                    <br/>
                                    Unit
                                </th>
                                <th>
                                    <strong>Döviz Cinsi</strong>
                                    <br/>
                                    Currency
                                </th>
                                <th>
                                    <strong>Döviz Alış</strong>
                                    <br/>
                                    Forex Buying
                                </th>
                                <th>
                                    <strong>Döviz Satış</strong>
                                    <br/>
                                    Forex Selling
                                </th>
                                <th>
                                    <strong>Efektif Alış</strong>
                                    <br/>
                                    Banknote Buying
                                </th>
                                <th>
                                    <strong>Efektif Satış</strong>
                                    <br/>
                                    Banknote Selling
                                </th>
                            </tr>
                            <xsl:for-each select="Tarih_Date/Currency">
                                <xsl:if test="@Kod!='XDR'">
                                    <xsl:if test="ForexBuying != '' or BanknoteBuying != ''">
                                        <tr>
                                            <td class="para kurkodu">
                                                <span class="kurgorsel">
                                                    <xsl:attribute name="style">
                                                        background-image: url('/kurlar/kurlar_tr_dosyalar/images/
                                                        <xsl:value-of select="@Kod"/>
                                                        .gif');
                                                    </xsl:attribute>

                                                </span>
                                                <xsl:value-of select="@Kod"/>
                                                /TRY
                                            </td>
                                            <td class="para birim">
                                                <xsl:value-of select="Unit"/>
                                            </td>
                                            <td class="para">
                                                <xsl:value-of select="Isim"/>
                                            </td>
                                            <td class="deger">
                                                <xsl:if test="ForexBuying != ''">
                                                    <xsl:if test="number(ForexBuying) < 1">
                                                        <xsl:value-of select="format-number(ForexBuying, '0.00000')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(ForexBuying) >= 1">
                                                        <xsl:value-of select="format-number(ForexBuying, '0.0000')"/>
                                                    </xsl:if>
                                                </xsl:if>
                                            </td>
                                            <td class="deger">
                                                <xsl:if test="ForexSelling != ''">
                                                    <xsl:if test="number(ForexSelling) < 1">
                                                        <xsl:value-of select="format-number(ForexSelling, '0.00000')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(ForexSelling) >= 1">
                                                        <xsl:value-of select="format-number(ForexSelling, '0.0000')"/>
                                                    </xsl:if>
                                                </xsl:if>
                                            </td>
                                            <td class="deger efdeger">
                                                <xsl:if test="BanknoteBuying != ''">
                                                    <xsl:if test="number(BanknoteBuying) < 1">
                                                        <xsl:value-of select="format-number(BanknoteBuying, '0.00000')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(BanknoteBuying) >= 1">
                                                        <xsl:value-of select="format-number(BanknoteBuying, '0.0000')"/>
                                                    </xsl:if>
                                                </xsl:if>
                                            </td>
                                            <td class="deger efdeger">
                                                <xsl:if test="BanknoteSelling != ''">
                                                    <xsl:if test="number(BanknoteSelling) < 1">
                                                        <xsl:value-of select="format-number(BanknoteSelling, '0.00000')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(BanknoteSelling) >= 1">
                                                        <xsl:value-of select="format-number(BanknoteSelling, '0.0000')"/>
                                                    </xsl:if>
                                                </xsl:if>
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:if>
                            </xsl:for-each>
                        </table>
                        <table border="0" cellpadding="0" cellspacing="0" class="kurlarTablo">
                            <tr>
                                <th colspan="5">Çapraz Kurlar / Cross Rates</th>
                            </tr>
                            <tr>
                                <th>
                                    Döviz Kodu
                                    <br/>
                                    Currency Code
                                </th>
                                <th>
                                    Birim
                                    <br/>
                                    Unit
                                </th>
                                <th>
                                    Döviz Cinsi
                                    <br/>
                                    Currency
                                </th>
                                <th>
                                    Çapraz Kur
                                    <br/>
                                    Cross Rate
                                </th>
                                <th>
                                    Döviz Cinsi
                                    <br/>
                                    Currency
                                </th>
                            </tr>
                            <xsl:for-each select="Tarih_Date/Currency">
                                <xsl:sort select="@CrossOrder" data-type="number"/>
                                <xsl:if test="CrossRateUSD != '' or CrossRateOther != ''">
                                    <xsl:if test="@Kod!='USD' and @Kod!='XDR' ">
                                        <tr>
                                            <xsl:if test="CrossRateUSD != ''">
                                                <td class="para kurkodu">
                                                    <span class="kurgorsel">
                                                        <xsl:attribute name="style">
                                                            background-image: url('/kurlar/kurlar_tr_dosyalar/images/
                                                            <xsl:value-of select="@Kod"/>
                                                            .gif');
                                                        </xsl:attribute>

                                                    </span>
                                                    USD/
                                                    <xsl:value-of select="@Kod"/>
                                                </td>
                                                <td class="para birim">1</td>
                                                <td class="para tabanisim">ABD DOLARI</td>
                                                <td class="deger caprazkur">
                                                    <xsl:if test="number(CrossRateUSD) < 10">
                                                        <xsl:value-of select="format-number(CrossRateUSD, '0.0000')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(CrossRateUSD) >= 10 and number(CrossRateUSD) < 1000">
                                                        <xsl:value-of select="format-number(CrossRateUSD, '0.00')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(CrossRateUSD) >= 1000">
                                                        <xsl:value-of select="format-number(CrossRateUSD, '0')"/>
                                                    </xsl:if>
                                                </td>
                                                <td class="deger capraz">
                                                    <xsl:value-of select="Isim"/>
                                                </td>
                                            </xsl:if>
                                            <xsl:if test="CrossRateOther != ''">
                                                <td class="para kurkodu">
                                                    <span class="kurgorsel">
                                                        <xsl:attribute name="style">
                                                            background-image: url('/kurlar/kurlar_tr_dosyalar/images/
                                                            <xsl:value-of select="@Kod"/>
                                                            .gif');
                                                        </xsl:attribute>

                                                    </span>
                                                    <xsl:value-of select="@Kod"/>
                                                    /USD
                                                </td>
                                                <td class="para birim">1</td>
                                                <td class="para tabanisim">
                                                    <xsl:value-of select="Isim"/>
                                                </td>
                                                <td class="deger caprazkur">
                                                    <xsl:if test="number(CrossRateOther) < 10">
                                                        <xsl:value-of select="format-number(CrossRateOther, '0.0000')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(CrossRateOther) >= 10 and number(CrossRateOther) < 1000">
                                                        <xsl:value-of select="format-number(CrossRateOther, '0.00')"/>
                                                    </xsl:if>
                                                    <xsl:if test="number(CrossRateOther) >= 1000">
                                                        <xsl:value-of select="format-number(CrossRateOther, '0')"/>
                                                    </xsl:if>
                                                </td>
                                                <td class="deger capraz">ABD DOLARI</td>
                                            </xsl:if>
                                        </tr>
                                    </xsl:if>
                                </xsl:if>
                            </xsl:for-each>
                        </table>
                        <table border="0" cellpadding="0" cellspacing="0" class="kurlarTablo">
                            <th colspan="5">Bilgi İçin / For Information</th>
                            <xsl:for-each select="Tarih_Date/Currency">
                                <xsl:if test="@Kod='XDR'">
                                    <tr>
                                        <td class="para kurkodu">SDR/USD</td>
                                        <td class="para birim">1</td>
                                        <td class="para tabanisim">
                                            <xsl:value-of select="Isim"/>
                                        </td>
                                        <td class="deger caprazkur">
                                            <xsl:value-of select="CrossRateOther"/>
                                        </td>
                                        <td class="deger capraz">ABD DOLARI</td>
                                    </tr>
                                    <tr>
                                        <td class="para kurkodu">SDR/TRY</td>
                                        <td class="para birim">1</td>
                                        <td class="para tabanisim">
                                            <xsl:value-of select="Isim"/>
                                        </td>
                                        <td class="deger caprazkur">
                                            <xsl:value-of select="ForexBuying"/>
                                        </td>
                                        <td class="deger capraz">TÜRK LİRASI</td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>
                        </table>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:transform>