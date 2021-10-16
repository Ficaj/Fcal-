navbarPage( id = "navbar",
            title = 'INV-FLOW',
            theme = shinytheme("cerulean"),
            tabPanel('Návod',
                     sidebarPanel(width = 2)
            ),
            
            
            tabPanel('Vstupni parametry',
                     
                     
                     tabsetPanel(id = "vstup_par",
                                 
                                 
                                 
                                 tabPanel('Základní parametry', value = "zakl_par",
                                          
                                          
                                          
                                          sidebarPanel(width = 2,
                                                       uiOutput("text_pozice_pakru"),
                                                       tags$head(tags$style("#text_pozice_pakru{color: black;
                                 font-size: 18px;
                                 }"
                                                       )),
                                                       
                                                       selectInput("pozice_pakru", "Pozice:", choices =  c(1,2,3,4,5,6,7,8,9,10)),
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '1'",
                                                           
                                                           
                                                           uiOutput("nazev_vrtu_out"),
                                                           
                                                           
                                                           #    uiOutput("nazev_poz_vrtu_out"),
                                                           
                                                           uiOutput("datum_mer_out"),
                                                           uiOutput("vyska_chranicky_mer_vrt_out"),
                                                           uiOutput("vyska_chranicky_poz_vrt_1_out"),
                                                           
                                                           
                                                           #   uiOutput("vyska_chranicky_poz_vrt_2_out"),
                                                           
                                                           
                                                           uiOutput("hloubka_vrtu_out"),
                                                           uiOutput("hloubka__poz_vrtu_1_out"),
                                                           
                                                           
                                                           #   uiOutput("hloubka__poz_vrtu_2_out"),
                                                           
                                                           
                                                           uiOutput("hladina_pred_mer_vrt_out"),
                                                           uiOutput("hladina_pred_mer_poz1_out")
                                                           
                                                       )
                                          ),
                                          
                                          sidebarPanel(width = 2,
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '1'",
                                                           
                                                           
                                                           
                                                           #        uiOutput("hladina_pred_mer_poz2_out"),
                                                           
                                                           
                                                           
                                                           uiOutput("text_hloubka_zvodneni"),
                                                           tags$head(tags$style("#text_hloubka_zvodneni{color: black;
                                 font-size: 15px;
                                 }"
                                                           )),
                                                           
                                                           hr(),
                                                           
                                                           uiOutput("umisteni_hor_pakr_out"),
                                                           uiOutput("vzdal_park_out"),
                                                           
                                                           tags$head(tags$style("#text_usek_obtok{color: black;
                                 font-size: 15px;
                                 }"
                                                           )),
                                                           
                                                           uiOutput("text_usek_obtok"),
                                                           hr(),
                                                           
                                                           uiOutput("vzdal_pozor_v_1_out"),
                                                           
                                                           #   uiOutput("vzdal_pozor_v_2_out"),
                                                           
                                                           uiOutput("polomer_vrt_1_out"),
                                                           uiOutput("polomer_obsyp_out"),
                                                           uiOutput("polomer_pozor_vrt_1_out"),
                                                           uiOutput("k_obsyp_out"),
                                                           uiOutput("pouzit_ks_k"),
                                                           uiOutput("ulozeni_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 2. pozice pakru ##############################################
                                                       
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '2'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_dva_out"),
                                                           uiOutput("hladina_pred_mer_vrt_dva_out"),
                                                           uiOutput("umisteni_hor_pakr_dva_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 3. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '3'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_tri_out"),
                                                           uiOutput("hladina_pred_mer_vrt_tri_out"),
                                                           uiOutput("umisteni_hor_pakr_tri_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 4. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '4'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_ctyri_out"),
                                                           uiOutput("hladina_pred_mer_vrt_ctyri_out"),
                                                           uiOutput("umisteni_hor_pakr_ctyri_out")
                                                       ),
                                                       
                                                       
                                                       
                                                       ############################################## 5. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '5'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_pet_out"),
                                                           uiOutput("hladina_pred_mer_vrt_pet_out"),
                                                           uiOutput("umisteni_hor_pakr_pet_out")
                                                       ),
                                                       
                                                       ############################################## 6. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '6'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_sest_out"),
                                                           uiOutput("hladina_pred_mer_vrt_sest_out"),
                                                           uiOutput("umisteni_hor_pakr_sest_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 7. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '7'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_sedm_out"),
                                                           uiOutput("hladina_pred_mer_vrt_sedm_out"),
                                                           uiOutput("umisteni_hor_pakr_sedm_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 8. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '8'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_osm_out"),
                                                           uiOutput("hladina_pred_mer_vrt_osm_out"),
                                                           uiOutput("umisteni_hor_pakr_osm_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 9. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '9'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_devet_out"),
                                                           uiOutput("hladina_pred_mer_vrt_devet_out"),
                                                           uiOutput("umisteni_hor_pakr_devet_out")
                                                       ),
                                                       
                                                       
                                                       ############################################## 10. pozice pakru ##############################################
                                                       
                                                       
                                                       conditionalPanel(
                                                           condition = "output.zvolena_pozice_pak == '10'",
                                                           uiOutput("hladina_pred_mer_poz_vrt_deset_out"),
                                                           uiOutput("hladina_pred_mer_vrt_deset_out"),
                                                           uiOutput("umisteni_hor_pakr_deset_out")
                                                       ),
                                                       
                                          )
                                          
                                          
                                          
                                          
                                 ),
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 tabPanel('Parametry získané z hydrodynamické zkoušky',
                                          
                                          sidebarPanel(width = 2,
                                                       
                                                       uiOutput("hydraulicka_vodivost_out"),
                                                       uiOutput("dodatecne_odpory_out"),
                                                       uiOutput("text_koef_hydraul"),
                                                       hr(),
                                                       uiOutput("text_pomer_hydraul_obsypu")
                                          )
                                 ),
                                 
                                 tabPanel('Nahrát soubor',
                                          fileInput(
                                              inputId  = 'file1',
                                              label = NULL,
                                              accept = c(
                                                  "text/csv",
                                                  "text/comma-separated-values,text/plain",
                                                  ".csv"))
                                 )
                     ),
                     
                     mainPanel(
                         plotOutput("graph1")
                     )
            ),
            
            
            
            
            
            
            tabPanel(
                'Naměřené hodnoty',
                
                
                tags$head(tags$style("#zvolene_mereni_text{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                tags$head(tags$style("#zvolene_mereni_text_dva{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                tags$head(tags$style("#zvolene_mereni_text_tri{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                
                tags$head(tags$style("#zvolene_mereni_text_ctyri{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                tags$head(tags$style("#zvolene_mereni_text_pet{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                
                tags$head(tags$style("#zvolene_mereni_text_sest{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                tags$head(tags$style("#zvolene_mereni_text_sedm{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                
                tags$head(tags$style("#zvolene_mereni_text_osm{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                
                tags$head(tags$style("#zvolene_mereni_text_devet{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                
                tags$head(tags$style("#zvolene_mereni_text_deset{color: black;
                             font-size: 27px;
                         }"
                )
                ),
                
                
                
                
                ########################################### text zvolene mereni ################################
                
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '1'" ,
                    textOutput("zvolene_mereni_text")
                ),
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '2'" ,
                    textOutput("zvolene_mereni_text_dva")
                ),
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '3'" ,
                    textOutput("zvolene_mereni_text_tri")
                ),
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '4'" ,
                    textOutput("zvolene_mereni_text_ctyri")
                ),
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '5'" ,
                    textOutput("zvolene_mereni_text_pet")
                ),
                
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '6'" ,
                    textOutput("zvolene_mereni_text_sest")
                ),
                
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '7'" ,
                    textOutput("zvolene_mereni_text_sedm")
                ),
                
                
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '8'" ,
                    textOutput("zvolene_mereni_text_osm")
                ),
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '9'" ,
                    textOutput("zvolene_mereni_text_devet")
                ),
                
                
                conditionalPanel(
                    condition = "output.nav_change == '1' && output.zvolena_pozice_pak == '10'" ,
                    textOutput("zvolene_mereni_text_deset")
                ),
                
                
                sidebarPanel(width =2,
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '1'",
                                 sliderInput("rozpeti", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '2'",
                                 sliderInput("rozpeti_dva", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '3'",
                                 sliderInput("rozpeti_tri", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '4'",
                                 sliderInput("rozpeti_ctyri", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '5'",
                                 sliderInput("rozpeti_pet", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '6'",
                                 sliderInput("rozpeti_sest", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '7'",
                                 sliderInput("rozpeti_sedm", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '8'",
                                 sliderInput("rozpeti_osm", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '9'",
                                 sliderInput("rozpeti_devet", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1'  && output.slider_rend == '1' && output.zvolena_pozice_pak == '10'",
                                 sliderInput("rozpeti_deset", label = ("Rozpětí"), min = 1,
                                             max = 12, value = c(1,1))
                             ),
                             
                             
                             
                             
                             
                             
                             ############### pozice 1 ##############################################################################################################################
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 1 && output.zvolena_pozice_pak == '1'",
                                 uiOutput("snizeni_vrt_1_out"),
                                 uiOutput("snizeni_poz_vrt_1_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_out"),
                                 
                                 uiOutput("Q_celk1_out"),
                                 
                                 tags$head(tags$style("#text_gin1{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_out"),
                                 
                                 uiOutput("q_in1_out"),
                                 
                                 tags$head(tags$style("#text_qo1{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 2 && output.zvolena_pozice_pak == '1'",
                                 
                                 uiOutput("snizeni_vrt_2_out"),
                                 uiOutput("snizeni_poz_vrt_2_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_out"),
                                 
                                 uiOutput("Q_celk2_out"),
                                 
                                 tags$head(tags$style("#text_gin2{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_out"),
                                 
                                 uiOutput("q_in2_out"),
                                 
                                 tags$head(tags$style("#text_qo2{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "predchozi2",
                                     label = "Předchozí",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                               
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 3 && output.zvolena_pozice_pak == '1'",
                                 
                                 uiOutput("snizeni_vrt_3_out"),
                                 uiOutput("snizeni_poz_vrt_3_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_out"),
                                 
                                 uiOutput("Q_celk3_out"),
                                 
                                 tags$head(tags$style("#text_gin3{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_out"),
                                 
                                 uiOutput("q_in3_out"),
                                 
                                 tags$head(tags$style("#text_qo3{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 4 && output.zvolena_pozice_pak == '1'",
                                 
                                 uiOutput("snizeni_vrt_4_out"),
                                 uiOutput("snizeni_poz_vrt_4_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_out"),
                                 
                                 uiOutput("Q_celk4_out"),
                                 
                                 tags$head(tags$style("#text_gin4{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_out"),
                                 
                                 uiOutput("q_in4_out"),
                                 
                                 tags$head(tags$style("#text_qo4{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 5 && output.zvolena_pozice_pak == '1'",
                                 
                                 uiOutput("snizeni_vrt_5_out"),
                                 uiOutput("snizeni_poz_vrt_5_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_out"),
                                 
                                 uiOutput("Q_celk5_out"),
                                 
                                 tags$head(tags$style("#text_gin5{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_out"),
                                 
                                 uiOutput("q_in5_out"),
                                 
                                 tags$head(tags$style("#text_qo5{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 6 && output.zvolena_pozice_pak == '1'",
                                 
                                 uiOutput("snizeni_vrt_6_out"),
                                 uiOutput("snizeni_poz_vrt_6_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_out"),
                                 
                                 uiOutput("Q_celk6_out"),
                                 
                                 tags$head(tags$style("#text_gin6{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_out"),
                                 
                                 uiOutput("q_in6_out"),
                                 
                                 tags$head(tags$style("#text_qo6{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer == 7 && output.zvolena_pozice_pak == '1'",
                                 
                                 uiOutput("snizeni_vrt_7_out"),
                                 uiOutput("snizeni_poz_vrt_7_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_out"),
                                 
                                 uiOutput("Q_celk7_out"),
                                 
                                 tags$head(tags$style("#text_gin7{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_out"),
                                 
                                 uiOutput("q_in7_out"),
                                 
                                 tags$head(tags$style("#text_qo7{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             ################################################### 2. pozice pakru #################################################
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 1 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_1_dva_out"),
                                 uiOutput("snizeni_poz_vrt_1_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_dva_out"),
                                 
                                 uiOutput("Q_celk1_dva_out"),
                                 
                                 tags$head(tags$style("#text_gin1_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_dva"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_dva_out"),
                                 
                                 uiOutput("q_in1_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo1_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_dva"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_dva",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 2 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_2_dva_out"),
                                 uiOutput("snizeni_poz_vrt_2_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_dva_out"),
                                 
                                 uiOutput("Q_celk2_dva_out"),
                                 
                                 tags$head(tags$style("#text_gin2_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_dva"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_dva_out"),
                                 
                                 uiOutput("q_in2_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo2_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_dva"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_dva",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_dva",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 3 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_3_dva_out"),
                                 uiOutput("snizeni_poz_vrt_3_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_dva_out"),
                                 
                                 uiOutput("Q_celk3_dva_out"),
                                 
                                 tags$head(tags$style("#text_gin3_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_dva"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_dva_out"),
                                 
                                 uiOutput("q_in3_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo3_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_dva"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_dva",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_dva",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 4 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_4_dva_out"),
                                 uiOutput("snizeni_poz_vrt_4_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_dva_out"),
                                 
                                 uiOutput("Q_celk4_dva_out"),
                                 
                                 tags$head(tags$style("#text_gin4_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_dva"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_dva_out"),
                                 
                                 uiOutput("q_in4_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo4_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_dva"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_dva",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_dva",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 5 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_5_dva_out"),
                                 uiOutput("snizeni_poz_vrt_5_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_dva_out"),
                                 
                                 uiOutput("Q_celk5_dva_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_dva"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_dva_out"),
                                 
                                 uiOutput("q_in5_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo5_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_dva"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_dva",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_dva",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 6 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_6_dva_out"),
                                 uiOutput("snizeni_poz_vrt_6_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_dva_out"),
                                 
                                 uiOutput("Q_celk6_dva_out"),
                                 
                                 tags$head(tags$style("#text_gin6_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_dva"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_dva_out"),
                                 
                                 uiOutput("q_in6_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo6_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_dva"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_dva",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_dva",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_dva == 7 && output.zvolena_pozice_pak == '2'",
                                 
                                 uiOutput("snizeni_vrt_7_dva_out"),
                                 uiOutput("snizeni_poz_vrt_7_dva_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_dva_out"),
                                 
                                 uiOutput("Q_celk7_dva_out"),
                                 
                                 tags$head(tags$style("#text_gin7_dva{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_dva"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_dva_out"),
                                 
                                 uiOutput("q_in7_dva_out"),
                                 
                                 tags$head(tags$style("#text_qo7_dva{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_dva"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_dva",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_dva",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             
                             
                             
                             ################################################### 3. pozice pakru #################################################
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 1 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_1_tri_out"),
                                 uiOutput("snizeni_poz_vrt_1_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_tri_out"),
                                 
                                 uiOutput("Q_celk1_tri_out"),
                                 
                                 tags$head(tags$style("#text_gin1_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_tri"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_tri_out"),
                                 
                                 uiOutput("q_in1_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo1_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_tri"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_tri",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 2 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_2_tri_out"),
                                 uiOutput("snizeni_poz_vrt_2_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_tri_out"),
                                 
                                 uiOutput("Q_celk2_tri_out"),
                                 
                                 tags$head(tags$style("#text_gin2_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_tri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_tri_out"),
                                 
                                 uiOutput("q_in2_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo2_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_tri"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_tri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_tri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 3 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_3_tri_out"),
                                 uiOutput("snizeni_poz_vrt_3_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_tri_out"),
                                 
                                 uiOutput("Q_celk3_tri_out"),
                                 
                                 tags$head(tags$style("#text_gin3_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_tri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_tri_out"),
                                 
                                 uiOutput("q_in3_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo3_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_tri"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_tri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_tri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 4 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_4_tri_out"),
                                 uiOutput("snizeni_poz_vrt_4_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_tri_out"),
                                 
                                 uiOutput("Q_celk4_tri_out"),
                                 
                                 tags$head(tags$style("#text_gin4_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_tri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_tri_out"),
                                 
                                 uiOutput("q_in4_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo4_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_tri"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_tri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_tri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 5 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_5_tri_out"),
                                 uiOutput("snizeni_poz_vrt_5_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_tri_out"),
                                 
                                 uiOutput("Q_celk5_tri_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_tri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_tri_out"),
                                 
                                 uiOutput("q_in5_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo5_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_tri"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_tri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_tri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 6 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_6_tri_out"),
                                 uiOutput("snizeni_poz_vrt_6_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_tri_out"),
                                 
                                 uiOutput("Q_celk6_tri_out"),
                                 
                                 tags$head(tags$style("#text_gin6_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_tri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_tri_out"),
                                 
                                 uiOutput("q_in6_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo6_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_tri"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_tri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_tri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_tri == 7 && output.zvolena_pozice_pak == '3'",
                                 
                                 uiOutput("snizeni_vrt_7_tri_out"),
                                 uiOutput("snizeni_poz_vrt_7_tri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_tri_out"),
                                 
                                 uiOutput("Q_celk7_tri_out"),
                                 
                                 tags$head(tags$style("#text_gin7_tri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_tri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_tri_out"),
                                 
                                 uiOutput("q_in7_tri_out"),
                                 
                                 tags$head(tags$style("#text_qo7_tri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_tri"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_tri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_tri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             ################################################### 4. pozice pakru #################################################
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 1 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_1_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_1_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_ctyri_out"),
                                 
                                 uiOutput("Q_celk1_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_gin1_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_ctyri"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_ctyri_out"),
                                 
                                 uiOutput("q_in1_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo1_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_ctyri"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_ctyri",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 2 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_2_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_2_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_ctyri_out"),
                                 
                                 uiOutput("Q_celk2_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_gin2_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_ctyri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_ctyri_out"),
                                 
                                 uiOutput("q_in2_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo2_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_ctyri"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_ctyri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_ctyri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 3 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_3_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_3_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_ctyri_out"),
                                 
                                 uiOutput("Q_celk3_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_gin3_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_ctyri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_ctyri_out"),
                                 
                                 uiOutput("q_in3_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo3_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_ctyri"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_ctyri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_ctyri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 4 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_4_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_4_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_ctyri_out"),
                                 
                                 uiOutput("Q_celk4_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_gin4_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_ctyri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_ctyri_out"),
                                 
                                 uiOutput("q_in4_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo4_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_ctyri"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_ctyri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_ctyri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 5 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_5_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_5_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_ctyri_out"),
                                 
                                 uiOutput("Q_celk5_ctyri_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_ctyri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_ctyri_out"),
                                 
                                 uiOutput("q_in5_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo5_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_ctyri"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_ctyri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_ctyri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 6 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_6_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_6_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_ctyri_out"),
                                 
                                 uiOutput("Q_celk6_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_gin6_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_ctyri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_ctyri_out"),
                                 
                                 uiOutput("q_in6_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo6_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_ctyri"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_ctyri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_ctyri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_ctyri == 7 && output.zvolena_pozice_pak == '4'",
                                 
                                 uiOutput("snizeni_vrt_7_ctyri_out"),
                                 uiOutput("snizeni_poz_vrt_7_ctyri_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_ctyri_out"),
                                 
                                 uiOutput("Q_celk7_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_gin7_ctyri{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_ctyri"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_ctyri_out"),
                                 
                                 uiOutput("q_in7_ctyri_out"),
                                 
                                 tags$head(tags$style("#text_qo7_ctyri{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_ctyri"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_ctyri",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_ctyri",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             
                             ################################################### 5. pozice pakru #################################################
                             
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 1 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_1_pet_out"),
                                 uiOutput("snizeni_poz_vrt_1_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_pet_out"),
                                 
                                 uiOutput("Q_celk1_pet_out"),
                                 
                                 tags$head(tags$style("#text_gin1_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_pet"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_pet_out"),
                                 
                                 uiOutput("q_in1_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo1_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_pet"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_pet",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 2 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_2_pet_out"),
                                 uiOutput("snizeni_poz_vrt_2_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_pet_out"),
                                 
                                 uiOutput("Q_celk2_pet_out"),
                                 
                                 tags$head(tags$style("#text_gin2_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_pet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_pet_out"),
                                 
                                 uiOutput("q_in2_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo2_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_pet"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_pet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_pet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 3 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_3_pet_out"),
                                 uiOutput("snizeni_poz_vrt_3_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_pet_out"),
                                 
                                 uiOutput("Q_celk3_pet_out"),
                                 
                                 tags$head(tags$style("#text_gin3_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_pet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_pet_out"),
                                 
                                 uiOutput("q_in3_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo3_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_pet"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_pet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_pet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 4 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_4_pet_out"),
                                 uiOutput("snizeni_poz_vrt_4_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_pet_out"),
                                 
                                 uiOutput("Q_celk4_pet_out"),
                                 
                                 tags$head(tags$style("#text_gin4_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_pet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_pet_out"),
                                 
                                 uiOutput("q_in4_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo4_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_pet"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_pet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_pet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 5 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_5_pet_out"),
                                 uiOutput("snizeni_poz_vrt_5_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_pet_out"),
                                 
                                 uiOutput("Q_celk5_pet_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_pet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_pet_out"),
                                 
                                 uiOutput("q_in5_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo5_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_pet"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_pet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_pet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 6 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_6_pet_out"),
                                 uiOutput("snizeni_poz_vrt_6_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_pet_out"),
                                 
                                 uiOutput("Q_celk6_pet_out"),
                                 
                                 tags$head(tags$style("#text_gin6_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_pet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_pet_out"),
                                 
                                 uiOutput("q_in6_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo6_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_pet"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_pet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_pet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_pet == 7 && output.zvolena_pozice_pak == '5'",
                                 
                                 uiOutput("snizeni_vrt_7_pet_out"),
                                 uiOutput("snizeni_poz_vrt_7_pet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_pet_out"),
                                 
                                 uiOutput("Q_celk7_pet_out"),
                                 
                                 tags$head(tags$style("#text_gin7_pet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_pet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_pet_out"),
                                 
                                 uiOutput("q_in7_pet_out"),
                                 
                                 tags$head(tags$style("#text_qo7_pet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_pet"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_pet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_pet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             
                             
                             ################################################### 6. pozice pakru #################################################
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 1 && output.zvolena_pozice_pak == '6'",
                                 
                                 
                                 uiOutput("snizeni_vrt_1_sest_out"),
                                 uiOutput("snizeni_poz_vrt_1_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_sest_out"),
                                 
                                 uiOutput("Q_celk1_sest_out"),
                                 
                                 tags$head(tags$style("#text_gin1_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_sest"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_sest_out"),
                                 
                                 uiOutput("q_in1_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo1_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_sest"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_sest",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 2 && output.zvolena_pozice_pak == '6'",
                                 
                                 uiOutput("snizeni_vrt_2_sest_out"),
                                 uiOutput("snizeni_poz_vrt_2_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_sest_out"),
                                 
                                 uiOutput("Q_celk2_sest_out"),
                                 
                                 tags$head(tags$style("#text_gin2_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_sest"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_sest_out"),
                                 
                                 uiOutput("q_in2_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo2_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_sest"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_sest",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_sest",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 3 && output.zvolena_pozice_pak == '6'",
                                 
                                 uiOutput("snizeni_vrt_3_sest_out"),
                                 uiOutput("snizeni_poz_vrt_3_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_sest_out"),
                                 
                                 uiOutput("Q_celk3_sest_out"),
                                 
                                 tags$head(tags$style("#text_gin3_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_sest"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_sest_out"),
                                 
                                 uiOutput("q_in3_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo3_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_sest"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_sest",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_sest",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 4 && output.zvolena_pozice_pak == '6'",
                                 
                                 uiOutput("snizeni_vrt_4_sest_out"),
                                 uiOutput("snizeni_poz_vrt_4_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_sest_out"),
                                 
                                 uiOutput("Q_celk4_sest_out"),
                                 
                                 tags$head(tags$style("#text_gin4_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_sest"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_sest_out"),
                                 
                                 uiOutput("q_in4_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo4_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_sest"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_sest",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_sest",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 5 && output.zvolena_pozice_pak == '6'",
                                 
                                 uiOutput("snizeni_vrt_5_sest_out"),
                                 uiOutput("snizeni_poz_vrt_5_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_sest_out"),
                                 
                                 uiOutput("Q_celk5_sest_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_sest"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_sest_out"),
                                 
                                 uiOutput("q_in5_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo5_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_sest"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_sest",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_sest",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 6 && output.zvolena_pozice_pak == '6'",
                                 
                                 uiOutput("snizeni_vrt_6_sest_out"),
                                 uiOutput("snizeni_poz_vrt_6_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_sest_out"),
                                 
                                 uiOutput("Q_celk6_sest_out"),
                                 
                                 tags$head(tags$style("#text_gin6_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_sest"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_sest_out"),
                                 
                                 uiOutput("q_in6_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo6_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_sest"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_sest",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_sest",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sest == 7 && output.zvolena_pozice_pak == '6'",
                                 
                                 uiOutput("snizeni_vrt_7_sest_out"),
                                 uiOutput("snizeni_poz_vrt_7_sest_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_sest_out"),
                                 
                                 uiOutput("Q_celk7_sest_out"),
                                 
                                 tags$head(tags$style("#text_gin7_sest{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_sest"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_sest_out"),
                                 
                                 uiOutput("q_in7_sest_out"),
                                 
                                 tags$head(tags$style("#text_qo7_sest{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_sest"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_sest",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_sest",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                                
                             
                             
                             ################################################### 7. pozice pakru #################################################
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 1 && output.zvolena_pozice_pak == '7'",
                                 
                                 
                                 uiOutput("snizeni_vrt_1_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_1_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_sedm_out"),
                                 
                                 uiOutput("Q_celk1_sedm_out"),
                                 
                                 tags$head(tags$style("#text_gin1_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_sedm"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_sedm_out"),
                                 
                                 uiOutput("q_in1_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo1_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_sedm"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_sedm",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 2 && output.zvolena_pozice_pak == '7'",
                                 
                                 uiOutput("snizeni_vrt_2_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_2_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_sedm_out"),
                                 
                                 uiOutput("Q_celk2_sedm_out"),
                                 
                                 tags$head(tags$style("#text_gin2_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_sedm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_sedm_out"),
                                 
                                 uiOutput("q_in2_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo2_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_sedm"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_sedm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_sedm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 3 && output.zvolena_pozice_pak == '7'",
                                 
                                 uiOutput("snizeni_vrt_3_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_3_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_sedm_out"),
                                 
                                 uiOutput("Q_celk3_sedm_out"),
                                 
                                 tags$head(tags$style("#text_gin3_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_sedm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_sedm_out"),
                                 
                                 uiOutput("q_in3_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo3_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_sedm"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_sedm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_sedm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 4 && output.zvolena_pozice_pak == '7'",
                                 
                                 uiOutput("snizeni_vrt_4_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_4_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_sedm_out"),
                                 
                                 uiOutput("Q_celk4_sedm_out"),
                                 
                                 tags$head(tags$style("#text_gin4_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_sedm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_sedm_out"),
                                 
                                 uiOutput("q_in4_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo4_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_sedm"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_sedm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_sedm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 5 && output.zvolena_pozice_pak == '7'",
                                 
                                 uiOutput("snizeni_vrt_5_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_5_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_sedm_out"),
                                 
                                 uiOutput("Q_celk5_sedm_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_sedm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_sedm_out"),
                                 
                                 uiOutput("q_in5_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo5_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_sedm"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi5_sedm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 
                                 
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "predchozi5_sedm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 6 && output.zvolena_pozice_pak == '7'",
                                 
                                 uiOutput("snizeni_vrt_6_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_6_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_sedm_out"),
                                 
                                 uiOutput("Q_celk6_sedm_out"),
                                 
                                 tags$head(tags$style("#text_gin6_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_sedm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_sedm_out"),
                                 
                                 uiOutput("q_in6_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo6_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_sedm"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_sedm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_sedm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_sedm == 7 && output.zvolena_pozice_pak == '7'",
                                 
                                 uiOutput("snizeni_vrt_7_sedm_out"),
                                 uiOutput("snizeni_poz_vrt_7_sedm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_sedm_out"),
                                 
                                 uiOutput("Q_celk7_sedm_out"),
                                 
                                 tags$head(tags$style("#text_gin7_sedm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_sedm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_sedm_out"),
                                 
                                 uiOutput("q_in7_sedm_out"),
                                 
                                 tags$head(tags$style("#text_qo7_sedm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_sedm"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_sedm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_sedm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             
                             ################################################### 8. pozice pakru #################################################
                             
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 1 && output.zvolena_pozice_pak == '8'",
                                 
                                 
                                 uiOutput("snizeni_vrt_1_osm_out"),
                                 uiOutput("snizeni_poz_vrt_1_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_osm_out"),
                                 
                                 uiOutput("Q_celk1_osm_out"),
                                 
                                 tags$head(tags$style("#text_gin1_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_osm"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_osm_out"),
                                 
                                 uiOutput("q_in1_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo1_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_osm"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_osm",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 2 && output.zvolena_pozice_pak == '8'",
                                 
                                 uiOutput("snizeni_vrt_2_osm_out"),
                                 uiOutput("snizeni_poz_vrt_2_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_osm_out"),
                                 
                                 uiOutput("Q_celk2_osm_out"),
                                 
                                 tags$head(tags$style("#text_gin2_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_osm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_osm_out"),
                                 
                                 uiOutput("q_in2_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo2_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_osm"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_osm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_osm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 3 && output.zvolena_pozice_pak == '8'",
                                 
                                 uiOutput("snizeni_vrt_3_osm_out"),
                                 uiOutput("snizeni_poz_vrt_3_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_osm_out"),
                                 
                                 uiOutput("Q_celk3_osm_out"),
                                 
                                 tags$head(tags$style("#text_gin3_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_osm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_osm_out"),
                                 
                                 uiOutput("q_in3_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo3_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_osm"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_osm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_osm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 4 && output.zvolena_pozice_pak == '8'",
                                 
                                 uiOutput("snizeni_vrt_4_osm_out"),
                                 uiOutput("snizeni_poz_vrt_4_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_osm_out"),
                                 
                                 uiOutput("Q_celk4_osm_out"),
                                 
                                 tags$head(tags$style("#text_gin4_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_osm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_osm_out"),
                                 
                                 uiOutput("q_in4_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo4_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_osm"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_osm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_osm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 5 && output.zvolena_pozice_pak == '8'",
                                 
                                 uiOutput("snizeni_vrt_5_osm_out"),
                                 uiOutput("snizeni_poz_vrt_5_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_osm_out"),
                                 
                                 uiOutput("Q_celk5_osm_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_osm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_osm_out"),
                                 
                                 uiOutput("q_in5_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo5_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_osm"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_osm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_osm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 6 && output.zvolena_pozice_pak == '8'",
                                 
                                 uiOutput("snizeni_vrt_6_osm_out"),
                                 uiOutput("snizeni_poz_vrt_6_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_osm_out"),
                                 
                                 uiOutput("Q_celk6_osm_out"),
                                 
                                 tags$head(tags$style("#text_gin6_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_osm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_osm_out"),
                                 
                                 uiOutput("q_in6_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo6_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_osm"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_osm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_osm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_osm == 7 && output.zvolena_pozice_pak == '8'",
                                 
                                 uiOutput("snizeni_vrt_7_osm_out"),
                                 uiOutput("snizeni_poz_vrt_7_osm_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_osm_out"),
                                 
                                 uiOutput("Q_celk7_osm_out"),
                                 
                                 tags$head(tags$style("#text_gin7_osm{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_osm"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_osm_out"),
                                 
                                 uiOutput("q_in7_osm_out"),
                                 
                                 tags$head(tags$style("#text_qo7_osm{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_osm"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_osm",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_osm",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             
                             
                             ################################################### 9. pozice pakru #################################################
                             
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 1 && output.zvolena_pozice_pak == '9'",
                                 
                                 
                                 uiOutput("snizeni_vrt_1_devet_out"),
                                 uiOutput("snizeni_poz_vrt_1_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_devet_out"),
                                 
                                 uiOutput("Q_celk1_devet_out"),
                                 
                                 tags$head(tags$style("#text_gin1_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_devet"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_devet_out"),
                                 
                                 uiOutput("q_in1_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo1_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_devet"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_devet",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 2 && output.zvolena_pozice_pak == '9'",
                                 
                                 uiOutput("snizeni_vrt_2_devet_out"),
                                 uiOutput("snizeni_poz_vrt_2_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_devet_out"),
                                 
                                 uiOutput("Q_celk2_devet_out"),
                                 
                                 tags$head(tags$style("#text_gin2_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_devet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_devet_out"),
                                 
                                 uiOutput("q_in2_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo2_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_devet"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_devet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_devet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 3 && output.zvolena_pozice_pak == '9'",
                                 
                                 uiOutput("snizeni_vrt_3_devet_out"),
                                 uiOutput("snizeni_poz_vrt_3_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_devet_out"),
                                 
                                 uiOutput("Q_celk3_devet_out"),
                                 
                                 tags$head(tags$style("#text_gin3_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_devet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_devet_out"),
                                 
                                 uiOutput("q_in3_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo3_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_devet"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_devet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_devet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 4 && output.zvolena_pozice_pak == '9'",
                                 
                                 uiOutput("snizeni_vrt_4_devet_out"),
                                 uiOutput("snizeni_poz_vrt_4_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_devet_out"),
                                 
                                 uiOutput("Q_celk4_devet_out"),
                                 
                                 tags$head(tags$style("#text_gin4_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_devet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_devet_out"),
                                 
                                 uiOutput("q_in4_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo4_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_devet"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_devet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_devet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 5 && output.zvolena_pozice_pak == '9'",
                                 
                                 uiOutput("snizeni_vrt_5_devet_out"),
                                 uiOutput("snizeni_poz_vrt_5_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_devet_out"),
                                 
                                 uiOutput("Q_celk5_devet_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_devet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_devet_out"),
                                 
                                 uiOutput("q_in5_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo5_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_devet"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_devet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_devet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 6 && output.zvolena_pozice_pak == '9'",
                                 
                                 uiOutput("snizeni_vrt_6_devet_out"),
                                 uiOutput("snizeni_poz_vrt_6_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_devet_out"),
                                 
                                 uiOutput("Q_celk6_devet_out"),
                                 
                                 tags$head(tags$style("#text_gin6_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_devet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_devet_out"),
                                 
                                 uiOutput("q_in6_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo6_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_devet"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_devet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_devet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_devet == 7 && output.zvolena_pozice_pak == '9'",
                                 
                                 uiOutput("snizeni_vrt_7_devet_out"),
                                 uiOutput("snizeni_poz_vrt_7_devet_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_devet_out"),
                                 
                                 uiOutput("Q_celk7_devet_out"),
                                 
                                 tags$head(tags$style("#text_gin7_devet{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_devet"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_devet_out"),
                                 
                                 uiOutput("q_in7_devet_out"),
                                 
                                 tags$head(tags$style("#text_qo7_devet{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_devet"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_devet",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_devet",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             
                             
                             
                             
                             ################################################### 10. pozice pakru #################################################
                             
                             
                             
                             
                             conditionalPanel(
                                 
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 1 && output.zvolena_pozice_pak == '10'",
                                 
                                 
                                 uiOutput("snizeni_vrt_1_deset_out"),
                                 uiOutput("snizeni_poz_vrt_1_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_1_deset_out"),
                                 
                                 uiOutput("Q_celk1_deset_out"),
                                 
                                 tags$head(tags$style("#text_gin1_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin1_deset"),
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_1_deset_out"),
                                 
                                 uiOutput("q_in1_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo1_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo1_deset"),
                                 hr(),
                                 
                                 actionButton(
                                     inputId = "dalsi1_deset",
                                     label = "Dalsi",
                                     class = "btn-primary",
                                     width = "185"
                                 )
                                 
                             ),
                             
                             
                             
                             
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 2 && output.zvolena_pozice_pak == '10'",
                                 
                                 uiOutput("snizeni_vrt_2_deset_out"),
                                 uiOutput("snizeni_poz_vrt_2_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_2_deset_out"),
                                 
                                 uiOutput("Q_celk2_deset_out"),
                                 
                                 tags$head(tags$style("#text_gin2_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin2_deset"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_2_deset_out"),
                                 
                                 uiOutput("q_in2_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo2_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo2_deset"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi2_deset",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi2_deset",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 3 && output.zvolena_pozice_pak == '10'",
                                 
                                 uiOutput("snizeni_vrt_3_deset_out"),
                                 uiOutput("snizeni_poz_vrt_3_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_3_deset_out"),
                                 
                                 uiOutput("Q_celk3_deset_out"),
                                 
                                 tags$head(tags$style("#text_gin3_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin3_deset"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_3_deset_out"),
                                 
                                 uiOutput("q_in3_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo3_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo3_deset"),
                                 hr(),
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi3_deset",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi3_deset",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 4 && output.zvolena_pozice_pak == '10'",
                                 
                                 uiOutput("snizeni_vrt_4_deset_out"),
                                 uiOutput("snizeni_poz_vrt_4_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_4_deset_out"),
                                 
                                 uiOutput("Q_celk4_deset_out"),
                                 
                                 tags$head(tags$style("#text_gin4_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin4_deset"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_4_deset_out"),
                                 
                                 uiOutput("q_in4_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo4_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo4_deset"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi4_deset",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi4_deset",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 5 && output.zvolena_pozice_pak == '10'",
                                 
                                 uiOutput("snizeni_vrt_5_deset_out"),
                                 uiOutput("snizeni_poz_vrt_5_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_5_deset_out"),
                                 
                                 uiOutput("Q_celk5_deset_out"),
                                 
                                 
                                 tags$head(tags$style("#text_gin5_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin5_deset"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_5_deset_out"),
                                 
                                 uiOutput("q_in5_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo5_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo5_deset"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi5_deset",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi5_deset",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                                 
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 6 && output.zvolena_pozice_pak == '10'",
                                 
                                 uiOutput("snizeni_vrt_6_deset_out"),
                                 uiOutput("snizeni_poz_vrt_6_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_6_deset_out"),
                                 
                                 uiOutput("Q_celk6_deset_out"),
                                 
                                 tags$head(tags$style("#text_gin6_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin6_deset"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_6_deset_out"),
                                 
                                 uiOutput("q_in6_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo6_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo6_deset"),
                                 hr(),
                                 
                                 
                                 
                                 actionButton(
                                   inputId = "dalsi6_deset",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi6_deset",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             ),
                             
                             conditionalPanel(
                                 condition = "output.nav_change == '1' && output.zvolene_mer_deset == 7 && output.zvolena_pozice_pak == '10'",
                                 
                                 uiOutput("snizeni_vrt_7_deset_out"),
                                 uiOutput("snizeni_poz_vrt_7_deset_out"),
                                 
                                 # numericInput("snizeni_pozor_vrt_2_1", ("Snížení pozorovací vrt 2 [m]:"), value = 0, min = 0),
                                 
                                 uiOutput("q_pakr_7_deset_out"),
                                 
                                 uiOutput("Q_celk7_deset_out"),
                                 
                                 tags$head(tags$style("#text_gin7_deset{color: black;
                                 font-size: 20px;
                                 }"
                                 )),
                                 
                                 textOutput("text_gin7_deset"),
                                 
                                 helpText("(Teoreticky vypočtená hodnota přítoku vody ze zvodně do měřeného úseku)"),
                                 
                                 uiOutput("qin_nula_7_deset_out"),
                                 
                                 uiOutput("q_in7_deset_out"),
                                 
                                 tags$head(tags$style("#text_qo7_deset{color: black;
                                 font-size: 15px;
                                 }"
                                 )),
                                 
                                 
                                 textOutput("text_qo7_deset"),
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "dalsi7_deset",
                                   label = "Dalsi",
                                   class = "btn-primary",
                                   width = "185"
                                 ),
                                 
                                 hr(),
                                 
                                 actionButton(
                                   inputId = "predchozi7_deset",
                                   label = "Předchozí",
                                   class = "btn-primary",
                                   width = "185"
                                 )
                             )
                             
                ),
                
                
                
                ###########################################  ###########################################
                
                
                mainPanel(id = "tabs",
                          conditionalPanel(
                              condition = "output.nav_change == '1'",
                              
                              tabsetPanel(id = "tabs",
                                          tabPanel("Závislost Qc - Qo",
                                                   plotOutput("graph_inflow")
                                          ),
                                          
                                          tabPanel(id = "pess", title = "Zvolené měření",
                                                   plotOutput("graph_selected")
                                          )
                                          
                              )
                          )
                )
            ),
            tabPanel('Report',
                     fluidRow(
                         tags$h4("Výchozí formát", style = "color:black"),
                         radioButtons(
                             'format',
                             label = NULL,
                             c('Word', 'HTML'),
                             inline = TRUE
                         ),
                         downloadButton('downloadReport', label =  "Uložit report", class = "btn-primary"),
                         
                         
                         actionButton(
                             inputId = "obnovit_report",
                             label = "Obnovit report",
                             class = "btn-primary",
                             width = "185"
                         )
                         
                         
                     ),
                     mainPanel(uiOutput('report'))
            )
)




