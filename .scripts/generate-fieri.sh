#!/usr/bin/env bash

packages="$(pwd)/packages"

for letter in {a..z}; do
  cd "$packages/brittanica-$letter"
  cat <<"EOF" > fieri.js
exports.guy = [
  "                                               `                  `",
  "                                                   `              `   `",
  "                                              ``.```    . ``      `  `. `",
  "                                              ``````` ` ` `   ` . .  ``",
  "                                              ```. `.```.   ... ``..```` `",
  "                                      `  `   `` .`.`` ..`.``....`.`.`....` .",
  "                                      ` ..`  `. ..``.`....``....```.....``` `",
  "                                `    `.  ``.``.`.````.`.```...`.....``...````",
  "                                    ` .  ...`,..`..```...``.````. `.```.`` .`",
  "                                 .`  .````....`.````````````````````.````` ``",
  "                                . .` ``.`.`.``````````````````.``````````  `   `",
  "                               `.`` .```..`.````````````````````````````` `````",
  "                                `.` ...```.`````````````````````````````.``.`...",
  "                             ` ``..``````````````````````````````````````.`.``.`   `",
  "                              ``````.`````````````````````````````````` ``..```  `.",
  "                               ``..``````````````` .````````````````````.`..``` . `",
  "                         .`  `` .`.``.```.``````````.```````````````````.``...`.  `",
  "                          .``` .`.```````````````````````````````````````````.`. ``",
  "                         ` ```` ....````````````..````` ```````````````````````.`.  `",
  "                         ` ````..``````` ```````.`````` ````````` `````````..`..`.",
  "                        . ` `.  ``.```````````````````` ```.````` `````.```.``..`. .",
  "                         ` ``` `````` ``````````.``````````.````````.``.```.``..`.```",
  "                        `` ``.   ````````` ``````````````..`````````.```. `````.`..``",
  "                       `````.` ` ``````````.` ` ````````````````.` `.``.`````````. `.",
  "                       `   `.`  `````` ````.```````````````.`.```````````````````.``.`",
  "                     ```   `.````````` ``` ``````````````````````````````````````...``",
  "                      ```    `.`````` `````````.``````.````.``````````````````````.``.",
  "                      `.` `.`  ````````````.````````.`````````````````````` ````````.`",
  "                       ` ` ```   ``` ```  `.``````````.```.`..``..``.``````  `````.`..",
  "                        ``````. `````` `` ``````.``.``.`````..``````.````.`` ``````... `",
  "                        ```````..```````` ````.`.```````````..````````.```````````..``",
  "                        `.````` ` ````` `  `````.``.``````....``````.`.`..````````.```..",
  "                        `````.````  ``` ``  ````````.````.``..`.` ````.`.``.`````````.``",
  "                     ` `` `.`.`` `     ` ` ```.`````````````.``.``.`.`...``....``````.` `",
  "                       ``..```````` ` `. ``````...`````````````.`.`.`.....,,....````..`",
  "                      `.`,``````.```   `` ` .```..`````````.```````..,,...,,,,...```````",
  "                      `.`.`` ```````   ``````.`````````````````..`........,,,,...`````.````",
  "                       `.``.```````` ` ``.`..``.`....````````............,,,,,,..`````.",
  "                     ` ...`````````` `````.`.......`````````..`..`.......,,,,,,.`..`.`. `",
  "                      ``..`````````````.`..........`````````````........,.,,,,,........`",
  "                      ``````````````````.............````````````........,,,,,,.`.......",
  "                      .````. ``` `` `.....``.......`.````````````........,,,,,,,.....`.`",
  "                      `` `` ```` `````.............``````````````.......,,,,,,:,.......``",
  "                       ``.``  ``` ````................``````````.......,,,,,:,,,...`...`",
  "                     ` .`````  ``.````................`````````........,,.,,:,::,......`",
  "                     ``````````` `````.................```````.........,,,,,:,,:..`..,.`",
  "                      ```.``````` ```....................```..........,,,,,,,,::,.`.....`",
  "                      . `.``````..````.......,............``.........,,,,,,,,,,:,...,...",
  "                      `.  ``````.`.````.,.............................,,,,,,,:,:,....,..`",
  "                       `. `````..`.````.,...,........................,,,,,,,,,,::,...,..",
  "                      ``.``````....```..,,.,,,,......................,,,,,,,,,:::,,.,,.`",
  "                      `````````.``.```...,.,,,,,....................,,,,,,,,,,,::,,,.,,`",
  "                       `.``.`.``..``.....,.,..,,,....................,,,,,,,,,,:::,.,.,,",
  "                       .```.`..``.```.``.,.,,.,,,,,..................,,,,,,,,,,:::,,.,,`",
  "                      ` .```.........``..,,,,,,,.....................,,,,,,,,,,:::,,..,`",
  "                      `` `.````,`,`.```..,,,..,,,.......................,,,,,,,,:::,..,",
  "                       `````````.`..``...,,,.,,,........................,.,,,,,,:::;,.,.",
  "                       .`....````,..`.`.,,,,,,,,,........................,,,,,,::::',.,.",
  "                       ```.... ``.`..`.`,,,,,,,,.,.......................,,,,,,::::;:,,.",
  "                       ```.,..` ```.. `..,,,,,,,,.,......................,,,,,,,:::;;,:;.",
  "                       ``...,,,..``.`.`..,,,,,,,,.......................,,,,,,,:::::;,.;`",
  "                        ````,,.,,..`.`...,,,,,,,,..........`..........,,,,,,,,,,::::;,.:`",
  "                         `.``...`..```.`.,,,,,,,,....................,,,,,,,,,::::::;:,;.",
  "                         `.``.`.,``...`.,,,,,,,,,...................,,,,,,::;;;';;::::,;,",
  "                         ......`````...,:,,,,,,,,,..............,,,,,,:::'''''''''::::,:,",
  "                         `.....,.......,,,,,,,,,.,,......,,...,,,,,,::;;'++++++''';:::,,,",
  "                        `..````.......,:,,,,,,,,..,..,...,,,,,,,,,,,:;'++##++''';;;:::,,.",
  "                          ..``..`..,,:,,,,,,,,,,...,,,..,,:,,,,,,,,,:;'+++'';;;;::;::::.`",
  "                         `..,.`..,..,,:,,,,,,,,,,,.,,,::::::::,::,,:;'''';;;;;;;:::::::,`",
  "                         `.,,..,,,...:,,,,,,,,:,::::;;''';;::::,::::;;'''+####++;::::::,`",
  "                         ``.,:,,,.`..,,,,,,,,,::;;;''+++''';;::,,,,:;''++#@@@####;:::::,.`",
  "                          .,:;,,,,.:.:,,,,,,,:;''''++++++';;;::,,,:;'+'''@'@@#+++';::::,,",
  "                          ..';',,.:.,,,,,,,,:;;'''+''+';;;;;;;:,,,:;'+'###+';'';;'::,:::.",
  "                           `:::;:,,...,,,,,,;;'''';;:;;;;;;;;;:,..,;+##';;:;;;::::::,,::`",
  "                           ,::,,::....,.,,,,;;;;;;:::'#++;;;;;:...,;++';;:::::::;:,:,::;`",
  "                           ,;;:,,.....,,.,,:;;;;:;;+@@@'+'';;':.`.,:''';:::::::;:,,,,::;",
  "                           .;;':::....,,,,,:;;;;;+##@@#+###'';:.`..,;;;;;;;;;;;;:,,:,,:;",
  "                           `;;+':,....,,..,:;;;;###@+#+'';;:;::.`..,,;:::;;;;;:.,,:,:::;`",
  "                            ;;'';,,....,,,,,:;;+++';::;;::;;;,:....,,,::,,,:,,...,,::::;,",
  "                            :;;'',..,...,,,,:;;;,:,,:,::;;;::,,......,:,,,.......,,,::,;:",
  "                            :';;':....,,,,::::;:,,,,,,:;;;:::,.....,.,,,,........,,,::,;:",
  "                            .;:;;:.,,,,,,,,:,.,,:,,:::;;::,:,,......,,,,,........,,,,:,;:",
  "                             :;;;;,..,,,,,,...,.,:::;;;;:,,,,...``..,..,,........,,,,:,;:",
  "                             :;;::,,,,,,,,,..,.,,::;;::,.,,,,...```..,,:,,........,,,,,:;",
  "                             .:::;:.:,,,,,,,,.,,............,..`.``.,,:;:,,.......,,,,,:;",
  "                              ,:::;:,:,,,,,,,.....``.`.........````..,;'';,......,,,,,,,:",
  "                              :;,:;::,,:,,,,......````.`....,,,.```..,;;'',,,,,,.,,,,,,,'",
  "                              ,:.:;:::,,,,,,.....````````...,:,,````.,;,,#':,,,,,,,,,,,,.,",
  "                               ,,:;:;:::,,,,,....`````````.,:::,.```.,,.,:+;:,,,,,,,,,,,.,",
  "                               ,:,,::::,:,,,.....````````.,:,,:,..``..,..,'';:,,,,:::,,:,`",
  "                               ,,:,:::::,,,,......``````..::...,..``..,,,,'';;,,:,:::,::,`",
  "                               ,.:,,::::,,,,.............,;:......```.,,,,''';:,::::::::,,",
  "                                ,.,,::::,,,,............,:;:......``..,,,,''';::::::;::::'",
  "                                ,..,::::,,,,,..........,:;::.........,,.:#''';;:::;;;;;;;`",
  "                                ,.,,:::,,,,,..........,:;;::,,,,,...,,:;##';'+;:::;;;;;;:",
  "                                `..,::::,,,,,,,.......::;;:::::::,,,,:;###':;+':::;;;;;;:",
  "                                 ..,::::,,,,,,,,,....,:;';::''';:::::;'##+;';'+;::;;;;;;:",
  "                                 :,,:::,,:,,,,,,,,...,:;;:::;'++';;;;;##+#''+++;;;;;;;;;,",
  "                                  ,,:::,,,:,,,,,,,,,,:;';;:;;+##++'''###++++'++';;;;;;;;.",
  "                                 `.:::::,:,:,::,,,,,::;';;;;;'+#+##++###++''++++;:;;;';;`",
  "                                 . `,:::::::::::::,,::;'';;;;'++++#+'+#+++':'+++;::;;;;;",
  "                                 ,  '::::::::::::::::;'''';;;''+++##'++'+';;++++;::;;;;'",
  "                                 :  +:::::::::;::::::;'+';;';'+++++++++''''#+'++;:;;;;;'",
  "                                 .  +:;::::::;:::;::;'+++''';'''+'++';;'';@#++++::;;';;:",
  "                                  :.+;;;:::::::;;:::;'+++''':;;;'';;;'';,;@#++++;:';;;'`",
  "                                  ,::;;;::;:::::;:::;++++''';;;;;;''';;::@##+'++;:;';;'",
  "                                   ':;;;;;;:;:;;;:::;+++#@;,,:,,,,.:.,::@@#+';'+:;;;;;'",
  "                                   #@';;;;:::::::;:::'+#+#@;,,.,.,`:,,'#@#+';;'+;;;;;',",
  "                                   +#:;;;;;;::::;::::;++'##@@#+#::.,'#####+';;'+'';;;'",
  "                                   ;@,;;;;;;;::;;:::::++';+#####++######++';;;;+''';;'",
  "                                   #@;';;;;;;::::::,,:;+;::'+##++++#+'#+'';;;:;++';;;,",
  "                                  `##@+;;;;;;::::;::,,;+::::;;'++''+++'';;;;;;;++'';;#@+",
  "                                  .;@#:';;';;:::::::,,;+;::,:::;;;'';;::;:;;:;;++';''@@@@@@@:`",
  "                                  ,+@@,';;;;;;::::;:,,;+;,,,,::,.,::,,:;;::::;;++';;'@@@@@@####@#;,;,`",
  "                                  ,+#@+';;'';;;:::::::;+;:,::,::,,..,::;;::::;'++';;'@@@@@@@@@@#######@@@:`",
  "                                  ,+###,';;'';;::::::,:+::,,::,::,,,,::;::::::;++';;'#@@@@@@##@##@@@@######@:`",
  "                                  .+;##:';;'';;;::::::;+',,,:::,,,,,:::;,:::::'++';''@@@@@@@@###@#############@;  `",
  "                                  .'+#@#;;;;;;;;::::;::+':,,,,::,,,:,::,:,,:::'+#;;;'@@@@@@@@#####################@@",
  "                                  .':;@#,';;'';;:::;:::+'::,,,:::,,::,,...,,::'+#;;;'@@@@@@@@#######################@",
  "                                  `+@;+##'';;;;;:::::;;+'::.,,,,..,,,...,,,:::'+#';;'@#@@@@@#@#######################@",
  "                                  ;#@#'#@:';;;;;;;::::'+':,,,,,,....,....,,,::'+#';;'@#@@@@@#@########################+",
  "                                 ',+##+'@#:';;;;;:::::;++:,,,,,..,....,...,:,;'+++;;'@+#@@@@@@@########################'",
  "                                `#;+#+#++#++;;;;;::::,;#'',...,...,,,..,`.,,:;++#+;;'@##@@@@###@########################'",
  "                                ###:#'#+;@':+;;;;;::::;++':,.............,,,,;'###;;'@##@@@@@##@#########################'",
  "                               #### #'##+@@',';;;;:::::#+;:,,.......`....:,.:;+##+';'@#@@@@@@###@#########################+",
  "                              :####+:+@#+###+:;;;;;::,;+++;,,.,`,....`...,:,:'+#++;;+##+@@@@@##############################+",
  "                              ###### ##'###@##;;;;;:::'##+':,,...`....,,.,:,;;###+';#:@##@@@@###############################+",
  "                             +#######,#@###@@+#;;;;;:::+#+'::,..,,...,..,:::;'#+++';+:##+#@@@#################################",
  "                            .########.#@###@@#'@;;;;;;;+##+;::,.,,.,..,,.,:;;+#+##+'+#+@'#@@@##################################",
  "                            ########## @#@#@@##'@;;;;'++#++';;:,,,,,,,,,:,:'+##+#+''##,@;@@@@##################################.",
  "                           ############,@###@@#++#;;;;'####''';:,,,,.,.,,:;'++###'';#@,#'@@@@@##################################",
  "                          .###########'.#####@##+##;'+######++';;,,.,,.,.;;'+#++''';#@;+@@@@@###################################.",
  "                          @##########';;`#@##@@##'@#'+#####+##+';;,,,,,,.;+++++'''';#@@;+##@@####################################;",
  "                         ###########+;;;;;####@#''#@##########+#+':,.,:,,;++#+''''''+@@,#+#@@####################################@.",
  "                        +##########+;;;;;;#@###@+''##############;;:,.::::+#''''''''+##:#;#@@####################################@#",
  "                       :###########;;;;;;;;@###@@+'@@###+#+######'',,.:,;:++';'''';++@#+;:@@@@###################################@#,",
  "                       ###########;;;;;;;;;;##@#@#'###@@#+++###+++'::,,,'';''''''''++#++.:#@@#######################################",
  "                      +##########+;;;;;;;;;;:#@#@@++##@@@#@++####+';,,,,,;''''''''++'#;;@;@@########################################",
  "                     `########+##;;;;;;;;;;;';###@#+##@@@@@;+';'+++;:,.,,;'''''''+++'##;#'@#@####################################@##",
  "                    `###########+;;;;;;;;;;;;:'#@#@#+#@@@@@:#';;;;';:,,,:''''''''++''+#:####@####################################@##",
  "                   .############;;;;;;;;;;;;;;,+#@###+@@@@@;#+';''';;;:,:''+''+'+++'++@@'###@#######################################,",
  "                  `###########+';;;;;;;;;;;;;;;,'##@###@@@@#++'''''';,:,;'++++++++'''+#;;@##@@######################################@",
  "                  ##########++#;;;;;;;;'';;;;;;','#@@###@@@@'#+''''';:::++++++++++'+'+;:,@##@########################################,",
  "                 +############;;;;;;;;;''';;;;;;'.:#@###@@@@:#++''''';:+'####++++++'''#+.###@@######################################++",
  "                 #########@###;;;;;;;;;;''';;;;;'',,#@###@@@:#++++++++##########+++'';+':#@#########################################+'.",
  "                '##+######@@@#;;;;;;;;;;;''';;;;;';,`#####@@'##+++++###########+++''';+:;@##@########################################''",
  "                ####+#######@#';;;;;;';;;;''';;;;;'':`##+#@@#+#################+++'';;#'########################################@#####'",
  "               :##############'';;;;;;;';;'''';;;;''';`:#+##@;#################++''';;+'###############################################:",
  "               ###########+###;'';;;';+;::,;''';;;;''''.`@##@,@##@@@@@@#########++';;;;,@######################################@#######:",
  "              #########+#+##++;'';;';;;''';;;''';;;;'''';`.@+.@@#@@@@@@@#######++''';;',###############################################+.",
  "             `#########++####;;;'+';;'';:;';'##+';;;'''''';`.,@@@@@@@@@@######+++'';;;+;################################################.",
  "             ###########+++#';;;;'';;;#':+,';+#'+';;;''''''';.`#@###@@@@######+++';;;;'#################################@###############'.",
  "            ;#############'';;;;;;;;;'+++;:+;,+#'';;;;''''''''+:`:+@##########++''';;;,@################################################+.",
  "            #############;;;;;;;;;;;;:'#+++;',,:#''';;'''''''''''+':,:+#@#####++'''';;.@###############################################'+'`",
  "           #############;;;;;;;;;;;;;;;+#;+++';;;++';;;''''''''''''++++;,;@##++''''';;:@################################################''`",
  "          .##########+#;;;;;;;;;;;;;;;;;#;+'#+';'#'+';;;''''''''''''''++++'.'++''''';;'@################################################;'`,",
  "          ###########++;;;;;;;;;;;;;';;;'+'++';,;'#''';;;'''''''''''''''+++++::'''';';#@##################################@####@########''`;:",
  "         ;#########@##;;;;;;;;;;;;;;;';;'+#+###'::;'+';;;''''''''''''''''++'''+::'';;,@##################################@##############+''. `",
  "         #####@@###+#;;;;;;;;;;;;;;+:+++''#####++::''+';;;''''''''''''''''''''''':;;;.###################################@@##############'''.",
  "        '###@@######';;;;;;;;;;;;;;#+##+''######'+;'++'';;;;''''''''''''''''''''''':'.#@@################################@@##############'''+@.",
  "        ###@@#######;;;;;;;;;;;;;;;;+##+''#######+':''+';;;;'''''''''''''''''''''''+:,##@################################@@##############+''+;,",
  "       '#@@####@@@@@;;;;;;;;;;;;;;;+++''+++###+;;#++:;''';;;;;''''''''''''''''''''''+;#@@################################@@###############''';'",
  "       #@########@@@#;;;;;;;;;;;;;;'''''#++++#++@;+++;:+';;;;;''''''''''''''''''''''+'@@#################################@@################'#+#`",
  "      ,@@###########@+;;;;;;;;;;;;;;;;;++'+++;:#'#;'++;'+';;;;;;'''''''''''''''''''''##@#################################@@#################++#:",
  "      #@#############+';;;;;;;;;;;;::::;+'+++;,#+#'++';''';;;;;;;''''''''''''''''''+;##@#################################@@##################'''",
  "      @#############;;;';;;;;;;;;;;:::;+##'+';;+#@+@+#:;''';;;;''''''''';''''''''''':##@##################################@###################''",
  "     +##############;;;;';;;;;;;;;;:::,'###'+;''++@#+##;''';;;;''''''''';;''''''''''.##@##################################@#################@#+'.",
  "     @##############;;;;;';;;;;;;;;:,::;###++;':'+';++##;''';;;''''';;''';';''''''''`##@##################################@################@###';",
  "    ;##############+;;;;;;;;;;;;;;;::,,;+####'',''+##+#';;'';;;;''''';''';;;''''''''`##@##################################@#############@##@####'",
  "    @#############++;;;;;;'';;;;;;;:,,,:'##+#'+''''+#+#+;;;+';;;''''';;'';;;''''''''.##@@#################################@###############@#####+,",
  "    ###############';;;;;;;';;;;;;;:,:,,;++'###+:'''#;###;;'+;;;;;'''';;;;;;'''''''',#####################################@@##@##########@@######'",
  "   :##############+;;;;;;;;;';;;;;;:,,,::+#@####;'''';##+;;'+';;;'''''';;;;;'''''''''###@##################################@##@##########@########",
  "   @###############;;;;;;;;;;';;;;;;;::,,;+###'#+,'';'##+;;;'+;;;;;'''''';;;''''''';+###@##################################@##@#########@@########:",
  "   ################;;;;;;;;;;;;;;;;;#;:,,:+##+@##;'+:''#;';;''';;;''''''''''''''''',####@##################################@##@########@@##########",
  "  `###############+;;;;;;;;;;;';;;;;;;':,,;+##+;##';+'',#;;;;'+;;;;''''''''''''''''.####@##################################@##@########@###########",
  "  ,#############+#+;;;;;;;;;;;;';;;;'#:;,,:;##;####+'+''++:;;''';;;;;'''''''''''''' #######################################@##@#######@@###########,",
  "  ###############';;;;;;;;;;;;;;';;;;'#'';;#':'#;##+++'',+;;;;'+;;;;;''''''''''''''`#######################################@##@#######@############'",
  "  @##########@;;;;;;;;;;;;;;;;;;;';;;''+':::'+#:@###++;+;'';;;''';;';'''''''''''''':#####@#################################@#@#######@############+;",
  "  ##########+;;;;;;;;;;;;;;;;;;;;';;;';,:',;#+#++'###+:'';;';;###;;;;';''''''''''';'#######################################@@@####################+',",
  " `########@'';;;;;;;;;;;;;;;;;;;;;';;:';;;:#+;';'@+@#++;+::;;;@##';;;;;''''''''''':######@#################################@#@######@##############'+",
  " ;#######@;;;;;;;;;;;;;;;;;;;;;;;;;';;:'''''##'#+,#'';+:'+':;;+##+;;;;;'''''''';''`######@#################################@@@@####################'+",
  " @#######;'';;;;;;;;;;';';;;;;;;;;;';;',;,+,;###;+;####+'+':;'+##+';;;''''''''''''`######@#################################@@@#####################';`",
  " #######;;'';;;;;;;;;;;'''';;;;;;;;'';',,'':'+###;@:##;;++::;+###++;;;''''''''''''.#######@################################@@@######################;:",
].join("\n")

EOF
  cd ..
done