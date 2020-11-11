mv  TwoEleZH_nSelectedAODCaloJetTag_log.root    noSys_TwoEleZH_nSelectedAODCaloJetTag_log.root 
mv  TwoEleDY_nSelectedAODCaloJetTag_log.root    noSys_TwoEleDY_nSelectedAODCaloJetTag_log.root  
mv  TwoMuZH_nSelectedAODCaloJetTag_log.root     noSys_TwoMuZH_nSelectedAODCaloJetTag_log.root   
mv  TwoMuDY_nSelectedAODCaloJetTag_log.root     noSys_TwoMuDY_nSelectedAODCaloJetTag_log.root   
mv  EleMuOSOF_nSelectedAODCaloJetTag_log.root   noSys_EleMuOSOF_nSelectedAODCaloJetTag_log.root 
mv  EleMuOSOFL_nSelectedAODCaloJetTag_log.root  noSys_EleMuOSOFL_nSelectedAODCaloJetTag_log.root



../model/./MakeMockupSystematics --input_file=noSys_TwoEleZH_nSelectedAODCaloJetTag_log.root    --output_file=SysOnly_TwoEleZH_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root
../model/./MakeMockupSystematics --input_file=noSys_TwoEleDY_nSelectedAODCaloJetTag_log.root    --output_file=SysOnly_TwoEleDY_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root
../model/./MakeMockupSystematics --input_file=noSys_TwoMuZH_nSelectedAODCaloJetTag_log.root     --output_file=SysOnly_TwoMuZH_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root
../model/./MakeMockupSystematics --input_file=noSys_TwoMuDY_nSelectedAODCaloJetTag_log.root     --output_file=SysOnly_TwoMuDY_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root
../model/./MakeMockupSystematics --input_file=noSys_EleMuOSOF_nSelectedAODCaloJetTag_log.root   --output_file=SysOnly_EleMuOSOF_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root
../model/./MakeMockupSystematics --input_file=noSys_EleMuOSOFL_nSelectedAODCaloJetTag_log.root  --output_file=SysOnly_EleMuOSOFL_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root



hadd TwoEleDY_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root   SysOnly_TwoEleDY_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root   noSys_TwoEleDY_nSelectedAODCaloJetTag_log.root
hadd TwoEleZH_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root   SysOnly_TwoEleZH_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root   noSys_TwoEleZH_nSelectedAODCaloJetTag_log.root
hadd TwoMuDY_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root    SysOnly_TwoMuDY_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root    noSys_TwoMuDY_nSelectedAODCaloJetTag_log.root
hadd TwoMuZH_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root    SysOnly_TwoMuZH_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root    noSys_TwoMuZH_nSelectedAODCaloJetTag_log.root
hadd EleMuOSOF_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root  SysOnly_EleMuOSOF_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root  noSys_EleMuOSOF_nSelectedAODCaloJetTag_log.root
hadd EleMuOSOFL_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root SysOnly_EleMuOSOFL_nSelectedAODCaloJetTag_mockup_sys_hadd_PreApp.root noSys_EleMuOSOFL_nSelectedAODCaloJetTag_log.root


#sidebands=(\
##  "SB1" \
#  "SB2" \
#  "SB3" \
#  "SB4" \
#  "SB5" \
#  "SB6" \
#  "SB7" \
#)
#
#
#for sb in ${sidebands[@]} 
#do
#  mv  TwoEleZH_nSelectedAODCaloJetTag${sb}_log.root    noSys_TwoEleZH_nSelectedAODCaloJetTag${sb}_log.root 
#  mv  TwoEleDY_nSelectedAODCaloJetTag${sb}_log.root    noSys_TwoEleDY_nSelectedAODCaloJetTag${sb}_log.root  
#  mv  TwoMuZH_nSelectedAODCaloJetTag${sb}_log.root     noSys_TwoMuZH_nSelectedAODCaloJetTag${sb}_log.root   
#  mv  TwoMuDY_nSelectedAODCaloJetTag${sb}_log.root     noSys_TwoMuDY_nSelectedAODCaloJetTag${sb}_log.root   
#  mv  EleMuOSOF_nSelectedAODCaloJetTag${sb}_log.root   noSys_EleMuOSOF_nSelectedAODCaloJetTag${sb}_log.root 
#  mv  EleMuOSOFL_nSelectedAODCaloJetTag${sb}_log.root  noSys_EleMuOSOFL_nSelectedAODCaloJetTag${sb}_log.root
#  
#  ../model/./MakeMockupSystematics --input_file=noSys_TwoEleZH_nSelectedAODCaloJetTag${sb}_log.root    --output_file=SysOnly_TwoEleZH_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root
#  ../model/./MakeMockupSystematics --input_file=noSys_TwoEleDY_nSelectedAODCaloJetTag${sb}_log.root    --output_file=SysOnly_TwoEleDY_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root
#  ../model/./MakeMockupSystematics --input_file=noSys_TwoMuZH_nSelectedAODCaloJetTag${sb}_log.root     --output_file=SysOnly_TwoMuZH_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root
#  ../model/./MakeMockupSystematics --input_file=noSys_TwoMuDY_nSelectedAODCaloJetTag${sb}_log.root     --output_file=SysOnly_TwoMuDY_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root
#  ../model/./MakeMockupSystematics --input_file=noSys_EleMuOSOF_nSelectedAODCaloJetTag${sb}_log.root   --output_file=SysOnly_EleMuOSOF_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root
#  ../model/./MakeMockupSystematics --input_file=noSys_EleMuOSOFL_nSelectedAODCaloJetTag${sb}_log.root  --output_file=SysOnly_EleMuOSOFL_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root
#  
#  hadd TwoEleDY_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root   SysOnly_TwoEleDY_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root   noSys_TwoEleDY_nSelectedAODCaloJetTag${sb}_log.root
#  hadd TwoEleZH_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root   SysOnly_TwoEleZH_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root   noSys_TwoEleZH_nSelectedAODCaloJetTag${sb}_log.root
#  hadd TwoMuDY_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root    SysOnly_TwoMuDY_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root    noSys_TwoMuDY_nSelectedAODCaloJetTag${sb}_log.root
#  hadd TwoMuZH_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root    SysOnly_TwoMuZH_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root    noSys_TwoMuZH_nSelectedAODCaloJetTag${sb}_log.root
#  hadd EleMuOSOF_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root  SysOnly_EleMuOSOF_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root  noSys_EleMuOSOF_nSelectedAODCaloJetTag${sb}_log.root
#  hadd EleMuOSOFL_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root SysOnly_EleMuOSOFL_nSelectedAODCaloJetTag${sb}_mockup_sys_hadd_PreApp.root noSys_EleMuOSOFL_nSelectedAODCaloJetTag${sb}_log.root
#done
