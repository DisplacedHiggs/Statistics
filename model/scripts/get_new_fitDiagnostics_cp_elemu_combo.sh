
echo $1
##make clean and make
#make clean;make -j 16
#make -j 16
##get workspace
./MakeWorkspace_VR_SYS_ALL_TF_EMuCombo_Reparam --signal_model=Sig_MS15ct10
##signal_model can be any of the model names listed in data/signal_model_list.txt

##combine data cards
#combineCards.py EleMu=card_elemu.txt EleMuL=card_elemul.txt TwoMuDY=card_twomudy.txt TwoEleDY=card_twoeledy.txt TwoMuZH=card_twomuzh.txt TwoEleZH=card_twoelezh.txt > card.txt
#combineCards.py EleMu=card_elemu.txt EleMuL=card_elemul.txt TwoMuDY=card_twomudy.txt TwoMuZH=card_twomuzh.txt > card.txt
cards_dir=data/cards/exo_20_003/Cristian/
cp param_ws.root ${cards_dir}/.
combineCards.py EleMu=${cards_dir}/card_elemu.txt TwoMuDY=${cards_dir}/card_ll_dy_elemu_combo.txt TwoMuZH=${cards_dir}/card_ll_zh.txt > card.txt
ls -ltrh
#############################
####DEFAULT CONFOGURATION####
#############################
##create final workspace
#text2workspace.py card.txt
##get fitDiagnostic command from combine
#combine card.root -M FitDiagnostics --saveNormalizations --plot --saveShapes --saveWithUncertainties --saveWorkspace
#mv fitDiagnostics.root fitDiagnostics_$1.root

#############################
##MASK SEARCH CHANNELS#######
#############################
text2workspace.py card.txt --channel-masks
#combine card.root -M FitDiagnostics --saveNormalizations --plot --saveShapes --saveWithUncertainties --saveWorkspace --setParameters mask_TwoMuZH=1,mask_TwoEleZH=1#original
#combine card.root -M FitDiagnostics --saveNormalizations --plot --saveShapes --saveWithUncertainties --saveWorkspace --setParameters mask_TwoEleZH=1,mask_TwoEleDY=1
combine card.root -M FitDiagnostics --saveNormalizations --plot --saveShapes --saveWithUncertainties --saveWorkspace --robustHesse 1
mv fitDiagnostics.root fitDiagnostics_$1.root
combine card.root -M FitDiagnostics --saveNormalizations --plot --saveShapes --saveWithUncertainties --saveWorkspace --setParameters mask_TwoMuZH=1 --robustHesse 1
mv fitDiagnostics.root fitDiagnostics_masked_TwoMuZH$1.root
