program golshaN;

{%File 'calc.exe'}

uses
  Forms,
  untjens_kharid in 'untjens_kharid.pas' {frmjens_kharid},
  Taghvim in 'Taghvim.pas' {_taghvim},
  unt_datamodule1 in 'unt_datamodule1.pas' {DataModule1: TDataModule},
  unt_forosh_property in 'unt_forosh_property.pas' {frm_forosh_property},
  unt_datamodule2 in 'unt_datamodule2.pas' {DataModule2: TDataModule},
  unt_view_forosh_list in 'unt_view_forosh_list.pas' {frm_veiw_forosh_list},
  unt_factor in 'unt_factor.pas' {frm_factor},
  unt_bedeh_bestan in 'unt_bedeh_bestan.pas' {frm_bede_bestan},
  unt_chek_factor in 'unt_chek_factor.pas' {frm_chek_factor},
  unt_chek_no_pas in 'unt_chek_no_pas.pas' {frm_chek_not_pas},
  unt_frm_shakhs_bedehka in 'unt_frm_shakhs_bedehka.pas' {frm_shakhs_bedehkar},
  unt_list_pardakht_ha in 'unt_list_pardakht_ha.pas' {frm_list_pardakht_ha},
  unt_factor_pardakhtha in 'unt_factor_pardakhtha.pas' {frm_factor_pardakhtha},
  Untaddanbar in 'Untaddanbar.pas' {frmaddanbar},
  Unt_dmanbar in 'Unt_dmanbar.pas' {Dmanbar: TDataModule},
  unt_main in 'unt_main.pas' {frm_main},
  Untviewanbar in 'Untviewanbar.pas' {frm_viewanbar},
  Unt_edit_kharid_jens in 'Unt_edit_kharid_jens.pas' {Frm_edit_kharid_jens},
  Unteditgeymatjenspas in 'Unteditgeymatjenspas.pas' {frm_editgeymatjens},
  Untdmlistha in 'Untdmlistha.pas' {Dmlistha: TDataModule},
  Untlistanbarforosh in 'Untlistanbarforosh.pas' {Frm_listanbarforosh},
  Untjens_kharidar in 'Untjens_kharidar.pas' {Frm_jens_kharidar},
  Untlistkharidhayeshakhspas in 'Untlistkharidhayeshakhspas.pas' {frm_kharidhaye_shakhs},
  Unt_jens_foroshandeha in 'Unt_jens_foroshandeha.pas' {frm_jens_foroshandeha},
  Unt_foroshandegan_jens in 'Unt_foroshandegan_jens.pas' {Frm_foroshandegan_jens},
  Unt_paskardancheck in 'Unt_paskardancheck.pas' {Frm_paskardancheck},
  Unt_jadval_bedehkarha in 'Unt_jadval_bedehkarha.pas' {Frm_jadval_bedehkarha},
  Unt_jadval_checkha in 'Unt_jadval_checkha.pas' {frm_jadval_checkha},
  Unt_jadval_checkhaye_pasnashode in 'Unt_jadval_checkhaye_pasnashode.pas' {Frm_jadval_checkhaye_pasnashode},
  Unt_print_anbarkol in 'Unt_print_anbarkol.pas' {Frm_print_anbarkol},
  Unt_print_ajnas_foroshande in 'Unt_print_ajnas_foroshande.pas' {Frm_print_ajnas_foroshande},
  Unt_print_foroshandegan_jens in 'Unt_print_foroshandegan_jens.pas' {Frm_print_foroshandegan_jens},
  Unt_print_jens_kharidar in 'Unt_print_jens_kharidar.pas' {Frm_print_jens_kharidar},
  Unt_jadvalbedehi in 'Unt_jadvalbedehi.pas' {Frm_jedvalbedeh},
  Unt_print_bedehi in 'Unt_print_bedehi.pas' {Frm_print_bedehi},
  Unt_pardakht_bedehi in 'Unt_pardakht_bedehi.pas' {Frm_pardakht_bedehi},
  Unt_jadval_jensin_anbar in 'Unt_jadval_jensin_anbar.pas' {Frm_jadval_jensin_anbar},
  Unt_print_jens_inanbar in 'Unt_print_jens_inanbar.pas' {Frm_print_jens_inanbar},
  Unt_anbar_jadid in 'Unt_anbar_jadid.pas' {frm_anbar_jadid},
  Unt_moshakhasat_anbarha in 'Unt_moshakhasat_anbarha.pas' {Frm_moshakhasat_anbarha},
  Unt_mmoshakhasat_shakhs in 'Unt_mmoshakhasat_shakhs.pas' {Frm_mmoshakhasat_shakhs},
  Unt_search in 'Unt_search.pas' {Frm_search},
  Unt_factor_search in 'Unt_factor_search.pas' {Frm_factor_search},
  Unt_print_mohasebe_kharid in 'Unt_print_mohasebe_kharid.pas' {Frm_print_mohasebe_kharid},
  Unt_prinr_tasfie in 'Unt_prinr_tasfie.pas' {Frm_prinr_tasfie},
  Unt_shakhs_jadid in 'Unt_shakhs_jadid.pas' {Frm_shakhs_jadid},
  Unt_backup in 'Unt_backup.pas' {Frm_backup},
  unt_login in 'unt_login.pas' {Frm_login},
  Unt_login_change in 'Unt_login_change.pas' {Frm_login_change},
  Untserial in 'Untserial.pas' {frmgetserial},
  Unt_return_backup in 'Unt_return_backup.pas' {Frm_return_backup},
  Unt_Datamarchive in 'Unt_Datamarchive.pas' {Datamarchive: TDataModule},
  Unt_saljadid in 'Unt_saljadid.pas' {Frm_saljadid},
  unt_factor_roz in 'unt_factor_roz.pas' {frm_factor_roz},
  unt_pint_factor_roz in 'unt_pint_factor_roz.pas' {frm_pint_factor_roz},
  unt_pardakht_shoma in 'unt_pardakht_shoma.pas' {Frm_pardakht_shoma},
  unt_gozaresh_tarkibi in 'unt_gozaresh_tarkibi.pas' {frm_gozaresh_tarkibi},
  unt_print_gozaresh_tarkibi in 'unt_print_gozaresh_tarkibi.pas' {frm_print_gozaresh_tarkibi},
  unt_gozaresh_tarkibi_mpshtari in 'unt_gozaresh_tarkibi_mpshtari.pas' {Frm_gozaresh_tarkibi_mpshtari},
  unt_print_gozaresh_tarkibi_kharidar in 'unt_print_gozaresh_tarkibi_kharidar.pas' {Frm_print_gozaresh_tarkibi_kharidar},
  unt_yaddasht_jadid in 'unt_yaddasht_jadid.pas' {frm_yaddasht_jadid},
  Unt_sefaresh_jadid in 'Unt_sefaresh_jadid.pas' {Frm_sefaresh_jadid},
  Unt_show_sefaresh in 'Unt_show_sefaresh.pas' {frm_show_sefaresh},
  unt_hazf_sefaresh in 'unt_hazf_sefaresh.pas' {frm_hazf_sefaresh},
  unt_show_yaddasht in 'unt_show_yaddasht.pas' {frm_show_yaddasht},
  unt_hazf_yaddasht in 'unt_hazf_yaddasht.pas' {Frm_hazf_yaddasht},
  unt_pish_forosh in 'unt_pish_forosh.pas' {Frm_pish_forosh},
  unt_add_bank in 'unt_add_bank.pas' {frm_add_bank},
  unt_moshkhasat_bank in 'unt_moshkhasat_bank.pas' {frm_moshkhasat_bank},
  unt_daste_check_jadid in 'unt_daste_check_jadid.pas' {frm_daste_check_jadid},
  unt_entekhab_check in 'unt_entekhab_check.pas' {frm_entekhab_check},
  unt_pish_kharid in 'unt_pish_kharid.pas' {frm_pish_kharid},
  unt_add_jens_to_pishkharid in 'unt_add_jens_to_pishkharid.pas' {Frm_add_jens_to_pishkharid},
  unt_check_pardakhti_shoma in 'unt_check_pardakhti_shoma.pas' {frm_check_pardakhti_shoma},
  unt_add_vahed in 'unt_add_vahed.pas' {Frm_add_vahed},
  unt_print_pish_factor in 'unt_print_pish_factor.pas' {Frm_print_pish_factor},
  unt_print_check_pardakhti in 'unt_print_check_pardakhti.pas' {Frm_print_check_pardakhti},
  unt_eslah_forosh in 'unt_eslah_forosh.pas' {frm_eslah_forosh},
  unt_elsah in 'unt_elsah.pas' {frm_elsah},
  unt_eslah_new_value in 'unt_eslah_new_value.pas' {frm_eslah_new_value},
  unt_auto_backup in 'unt_auto_backup.pas' {Frm_auto_backup},
  unt_sandog_jadid in 'unt_sandog_jadid.pas' {Frm_sandog_jadid},
  unt_gozaresh_az_sandog in 'unt_gozaresh_az_sandog.pas' {Frm_gozaresh_az_sandog},
  unt_khoroj_az_sandog in 'unt_khoroj_az_sandog.pas' {Frm_khorojha_az_sandog},
  unt_dabare in 'unt_dabare.pas' {frm_dabare},
  unt_DataM_final in 'unt_DataM_final.pas' {DataM_final: TDataModule},
  unt_entekhab_check_baraye_forosh in 'unt_entekhab_check_baraye_forosh.pas' {Frm_entekhab_check_baraye_forosh},
  unt_pint_factor_kol_roz in 'unt_pint_factor_kol_roz.pas' {frm_pint_factor_kol_roz},
  unt_eslahe_forosh_checkha in 'unt_eslahe_forosh_checkha.pas' {frm_eslahe_forosh_checkha},
  unt_eslahe_forosh_naghd in 'unt_eslahe_forosh_naghd.pas' {frm_eslahe_forosh_naghd},
  unt_eslahe_forosh_hazf in 'unt_eslahe_forosh_hazf.pas' {frm_eslahe_forosh_hazf},
  unt_eslah_forosh_add_jens in 'unt_eslah_forosh_add_jens.pas' {frm_eslah_forosh_add_jens},
  unt_eslah_sal in 'unt_eslah_sal.pas' {frm_eslah_sal},
  unt_eslah_vahed in 'unt_eslah_vahed.pas' {frm_eslah_vahed},
  unt_eslah_vahed_jens_anbar in 'unt_eslah_vahed_jens_anbar.pas' {frm_eslah_vahed_jens_anbar},
  unt_eslahe_daste_checkha in 'unt_eslahe_daste_checkha.pas' {frm_eslahe_daste_checkha},
  unt_eslah_pardakhthaye_kharidar in 'unt_eslah_pardakhthaye_kharidar.pas' {frm_eslah_pardakhthaye_kharidar},
  unt_eslah_pardakhtha_be_foroshnde in 'unt_eslah_pardakhtha_be_foroshnde.pas' {frm_eslah_pardakhtha_be_foroshnde},
  unt_eslah_kharid in 'unt_eslah_kharid.pas' {frm_eslah_kharid},
  unt_eslah_kharid_add_jens in 'unt_eslah_kharid_add_jens.pas' {frm_eslah_kharid_add_jens},
  unt_eslahe_kharid_checkha in 'unt_eslahe_kharid_checkha.pas' {frm_eslahe_kharid_checkha},
  unt_eslahe_kharid_hazf in 'unt_eslahe_kharid_hazf.pas' {frm_eslahe_kharid_hazf},
  unt_eslahe_kharid_naghd in 'unt_eslahe_kharid_naghd.pas' {frm_eslahe_kharid_naghd},
  unt_eslah_kharid_tedad in 'unt_eslah_kharid_tedad.pas' {frm_eslah_kharid_tedad},
  Unt_add_bank1 in 'Unt_add_bank1.pas' {frm_add_bank1},
  unt_DataM_final1 in 'unt_DataM_final1.pas' {DataM_final1: TDataModule},
  unt_DataM_forosh in 'unt_DataM_forosh.pas' {DataM_forosh: TDataModule},
  unt_print_bank2 in 'unt_print_bank2.pas' {Frm_print_bank2},
  unt_print_bank in 'unt_print_bank.pas' {frm_print_bank},
  unt_frm_eslah_bank in 'unt_frm_eslah_bank.pas' {frm_eslah_bank},
  unt_print_gozaresh_az_sandogh in 'unt_print_gozaresh_az_sandogh.pas' {frm_print_gozaresh_az_sandogh},
  unt_search_bank in 'unt_search_bank.pas' {Frm_search_bank},
  unt_amaliate_roz in 'unt_amaliate_roz.pas' {frm_amaliate_roz},
  unt_print_amaliat_roz in 'unt_print_amaliat_roz.pas' {frm_print_amaliat_roz},
  unt_print_sefaresh in 'unt_print_sefaresh.pas' {frm_print_sefaresh},
  unt_print_yaddasht in 'unt_print_yaddasht.pas' {frm_print_yaddasht},
  unt_moshakhasat in 'unt_moshakhasat.pas' {frm_moshakhasat},
  unt_print_moshakhasat in 'unt_print_moshakhasat.pas' {frm_print_moshakhasat},
  unt_show_jens_baraye_entekhab_kharid in 'unt_show_jens_baraye_entekhab_kharid.pas' {frm_show_jens_baraye_entekhab_kharid},
  unt_takhfife_forosh in 'unt_takhfife_forosh.pas' {frm_takhfife_forosh},
  unt_factore_kharid in 'unt_factore_kharid.pas' {frm_factore_kharid},
  unt_print_temp_factore_forosh in 'unt_print_temp_factore_forosh.pas' {frm_print_temp_factore_forosh},
  unt_vrode_geymate_jadid in 'unt_vrode_geymate_jadid.pas' {frm_vrode_geymate_jadid},
  unt_entekhabe_noe_virayesh_geymat in 'unt_entekhabe_noe_virayesh_geymat.pas' {frm_entekhabe_noe_virayesh_geymat},
  unt_entekhbe_sherkat in 'unt_entekhbe_sherkat.pas' {frm_entekhbe_sherkat},
  unt_emale_darsadie_geymat_roye_hame in 'unt_emale_darsadie_geymat_roye_hame.pas' {frm_emale_darsadie_geymat_roye_hame},
  unt_show_tozihate_geymat in 'unt_show_tozihate_geymat.pas' {frm_show_tozihate_geymat},
  unt_vorode_geymate_foroshe_dasi in 'unt_vorode_geymate_foroshe_dasi.pas' {frm_vorode_geymate_foroshe_dasi},
  unt_DataModule_sod in 'unt_DataModule_sod.pas' {DataModule_sod: TDataModule},
  unt_sode_foroshe_ajnas in 'unt_sode_foroshe_ajnas.pas' {frm_sode_foroshe_ajnas},
  unt_print_factore_kharid in 'unt_print_factore_kharid.pas' {frm_print_factore_kharid},
  unt_entekhabe_kharidar in 'unt_entekhabe_kharidar.pas' {frm_entekhabe_kharidar},
  unt_entekhab_foroshande in 'unt_entekhab_foroshande.pas' {frm_entekhab_foroshande},
  unt_daste_check_jadid2 in 'unt_daste_check_jadid2.pas' {frm_daste_check_jadid2},
  unt_vorode_jense_motefarege in 'unt_vorode_jense_motefarege.pas' {frm_vorode_jense_motefarege},
  unt_jabejaei_first in 'unt_jabejaei_first.pas' {frm_jabejaei_first},
  unt_jabejaei_second in 'unt_jabejaei_second.pas' {frm_jabejaei_second},
  unt_ajnase_makane_magsad in 'unt_ajnase_makane_magsad.pas' {frm_ajnase_makane_magsad},
  unt_show_tozihate_jense_anbar in 'unt_show_tozihate_jense_anbar.pas' {frm_show_tozihate_jense_anbar},
  unt_hazfe_jans_az_Anbar in 'unt_hazfe_jans_az_Anbar.pas' {frm_hazfe_jans_az_Anbar},
  unt_menoye_mavarede_jadid in 'unt_menoye_mavarede_jadid.pas' {frm_menoye_mavarede_jadid},
  unt_eslahe_bedehi_kharidaran in 'unt_eslahe_bedehi_kharidaran.pas' {frm_eslahe_bedehi_kharidaran},
  unt_eslahe_bedehi_foroshandegan in 'unt_eslahe_bedehi_foroshandegan.pas' {frm_eslahe_bedehi_foroshandegan},
  unt_joziate_eslahe_bedehe_kharidar in 'unt_joziate_eslahe_bedehe_kharidar.pas' {frm_joziate_eslahe_bedehe_kharidar},
  unt_joziate_eslahe_bedehe_foroshande in 'unt_joziate_eslahe_bedehe_foroshande.pas' {frm_joziate_eslahe_bedehe_foroshande},
  unt_gozaresh_az_vorodi_khoroji_anbar in 'unt_gozaresh_az_vorodi_khoroji_anbar.pas' {frm_gozaresh_az_vorodi_khoroji_anbar},
  unt_hazfe_gozaresh_anbar in 'unt_hazfe_gozaresh_anbar.pas' {frm_hazfe_gozaresh_anbar},
  unt_print_gozaresh_anbar in 'unt_print_gozaresh_anbar.pas' {frm_print_gozaresh_anbar},
  unt_print_sosde_ajnas in 'unt_print_sosde_ajnas.pas' {frm_print_sosde_ajnas},
  unt_akharin_amaliate_ejra in 'unt_akharin_amaliate_ejra.pas' {frm_akharin_amaliate_ejra},
  unt_DataM_sp in 'unt_DataM_sp.pas' {DataM_sp: TDataModule},
  unt_datam_sp_eslahe_forosh in 'unt_datam_sp_eslahe_forosh.pas' {datam_sp_eslahe_forosh: TDataModule},
  unt_Dm_sp_backup in 'unt_Dm_sp_backup.pas' {Dm_sp_backup: TDataModule},
  unt_eslahe_keraye_kharid in 'unt_eslahe_keraye_kharid.pas' {frm_eslahe_keraye_kharid},
  unt_eslahe_forosh_takhif in 'unt_eslahe_forosh_takhif.pas' {frm_eslahe_forosh_takhif},
  unt_eslahe_jens in 'unt_eslahe_jens.pas' {frm_eslahe_jens},
  unt_anbarhaye_havie_jens in 'unt_anbarhaye_havie_jens.pas' {frm_anbarhaye_havie_jens},
  unt_Dm_zayeat_marjoei in 'unt_Dm_zayeat_marjoei.pas' {Dm_zayeat_marjoei: TDataModule},
  unt_sabte_marjo_zayeat in 'unt_sabte_marjo_zayeat.pas' {frm_sabte_marjo_zayeat},
  unt_print_factore_kharid_zayeat in 'unt_print_factore_kharid_zayeat.pas' {frm_print_factore_kharid_zayeat},
  unt_eslahe_zayeat in 'unt_eslahe_zayeat.pas' {frm_eslahe_zayeat},
  unt_print_factore_kharid_marjoei in 'unt_print_factore_kharid_marjoei.pas' {frm_print_factore_kharid_marjoei},
  unt_eslahe_marjoei in 'unt_eslahe_marjoei.pas' {frm_eslahe_marjoei},
  unt_tozihat in 'unt_tozihat.pas' {frm_tozihat},
  unt_print_fo2 in 'unt_print_fo2.pas' {Frm_print_fo2},
  Unt_search_inkharid in 'Unt_search_inkharid.pas' {Frm_search_inkharid},
  unt_taraze_mali in 'unt_taraze_mali.pas' {frm_taraze_mali},
  unt_DataM_hazineha in 'unt_DataM_hazineha.pas' {DataM_hazineha: TDataModule},
  unt_onvane_hazineha in 'unt_onvane_hazineha.pas' {frm_onvane_hazineha},
  unt_sabte_hazine in 'unt_sabte_hazine.pas' {frm_sabte_hazine},
  unt_show_hazineha in 'unt_show_hazineha.pas' {frm_show_hazineha},
  unt_shoe_hazine_onvan in 'unt_shoe_hazine_onvan.pas' {frm_shoe_hazine_onvan},
  unt_rahnemaye_mianbor in 'icon\unt_rahnemaye_mianbor.pas' {frm_rahnemaye_mianbor},
  unt_DataM_joziate_taraz in 'unt_DataM_joziate_taraz.pas' {DataM_joziate_taraz: TDataModule},
  unt_joziate_bank in 'unt_joziate_bank.pas' {frm_joziate_bank},
  unt_joziate_sandog in 'unt_joziate_sandog.pas' {frm_joziate_sandog},
  unt_joziate_hazine in 'unt_joziate_hazine.pas' {frm_joziate_hazine},
  unt_variz_be_sarmaye in 'unt_variz_be_sarmaye.pas' {frm_variz_be_sarmaye},
  unt_joziate_makan in 'unt_joziate_makan.pas' {frm_joziate_makan},
  unt_ajnase_vorodi_be_eftetahie in 'unt_ajnase_vorodi_be_eftetahie.pas' {frm_ajnase_vorodi_be_eftetahie},
  unt_forosh_fishi in 'unt_forosh_fishi.pas' {frm_forosh_fishi},
  unt_print_fo in 'unt_print_fo.pas' {Frm_print_fo},
  unt_tedad in 'unt_tedad.pas' {frm_tedad},
  unt_eslahe_geymate_kharide_jens in 'unt_eslahe_geymate_kharide_jens.pas' {frm_eslahe_geymate_kharide_jens},
  unt_sleep in 'unt_sleep.pas' {frm_sleep},
  unt_karbar in 'unt_karbar.pas' {frm_karbar},
  unt_sathe_dastrasi in 'unt_sathe_dastrasi.pas' {frm_sathe_dastrasi},
  unt_DataM_dastrasi in 'unt_DataM_dastrasi.pas' {DataM_dastrasi: TDataModule},
  Unt_eslah_fishi in 'Unt_eslah_fishi.pas' {frm_eslah_fishi},
  unt_eslahe_pish_kharid in 'unt_eslahe_pish_kharid.pas' {frm_eslahe_pish_kharid},
  unt_eslahe_tozihe_forosh in 'unt_eslahe_tozihe_forosh.pas' {frm_eslahe_tozihe_forosh},
  unt_vrode_geymate_koli_jadid in 'unt_vrode_geymate_koli_jadid.pas' {frm_vrode_geymate_koli_jadid},
  unt_print_liste_geymat in 'unt_print_liste_geymat.pas' {frm_print_liste_geymat},
  unt_liste_geymat in 'unt_liste_geymat.pas' {frm_liste_geymat},
  Unt_DataModule_gozaresh_tarkibi in 'Unt_DataModule_gozaresh_tarkibi.pas' {DataModule_gozaresh_tarkibi: TDataModule},
  Untdmanbarexit in 'Untdmanbarexit.pas' {Dmanbarexite: TDataModule},
  Unt_anjirestan_jadid in 'Unt_anjirestan_jadid.pas' {Frm_anjirestan_jadid},
  Unt_mmoshakhasat_anjirestan in 'Unt_mmoshakhasat_anjirestan.pas' {Frm_mmoshakhasat_anjirestan},
  unt_add_hazine_anjirestan in 'unt_add_hazine_anjirestan.pas' {Frm_add_hazine_anjirestan},
  Unt_print_hazine_anjirestan in 'Unt_print_hazine_anjirestan.pas' {Frm_print_hazine_anjirestan},
  unt_show_hazine_anjirestan in 'unt_show_hazine_anjirestan.pas' {frm_show_hazine_anjirestan},
  Unt_print_hazine_anjirestan2 in 'Unt_print_hazine_anjirestan2.pas' {Frm_print_hazine_anjirestan2},
  unt_anjirestan_jamavari in 'unt_anjirestan_jamavari.pas' {frm_anjirestan_jamavari};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���� ���';
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_sleep, frm_sleep);
  Application.CreateForm(TDmlistha, Dmlistha);
  Application.CreateForm(TFrm_login, Frm_login);
  Application.CreateForm(T_taghvim, _taghvim);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TDmanbar, Dmanbar);
  Application.CreateForm(TDatamarchive, Datamarchive);
  Application.CreateForm(TDm_zayeat_marjoei, Dm_zayeat_marjoei);
  Application.CreateForm(TDataM_final, DataM_final);
  Application.CreateForm(TDataM_final1, DataM_final1);
  Application.CreateForm(TDataM_forosh, DataM_forosh);
  Application.CreateForm(TDataModule_sod, DataModule_sod);
  Application.CreateForm(TDataM_sp, DataM_sp);
  Application.CreateForm(Tdatam_sp_eslahe_forosh, datam_sp_eslahe_forosh);
  Application.CreateForm(TFrm_print_anbarkol, Frm_print_anbarkol);
  Application.CreateForm(TFrm_print_ajnas_foroshande, Frm_print_ajnas_foroshande);
  Application.CreateForm(TFrm_print_foroshandegan_jens, Frm_print_foroshandegan_jens);
  Application.CreateForm(TFrm_print_jens_kharidar, Frm_print_jens_kharidar);
  Application.CreateForm(TFrm_print_bedehi, Frm_print_bedehi);
  Application.CreateForm(TFrm_print_jens_inanbar, Frm_print_jens_inanbar);
  Application.CreateForm(TFrm_print_mohasebe_kharid, Frm_print_mohasebe_kharid);
  Application.CreateForm(TFrm_prinr_tasfie, Frm_prinr_tasfie);
  Application.CreateForm(Tfrm_pint_factor_roz, frm_pint_factor_roz);
  Application.CreateForm(Tfrm_print_gozaresh_tarkibi, frm_print_gozaresh_tarkibi);
  Application.CreateForm(TFrm_print_gozaresh_tarkibi_kharidar, Frm_print_gozaresh_tarkibi_kharidar);
  Application.CreateForm(TFrm_print_pish_factor, Frm_print_pish_factor);
  Application.CreateForm(TFrm_print_check_pardakhti, Frm_print_check_pardakhti);
  Application.CreateForm(Tfrm_pint_factor_kol_roz, frm_pint_factor_kol_roz);
  Application.CreateForm(TFrm_print_bank2, Frm_print_bank2);
  Application.CreateForm(Tfrm_print_bank, frm_print_bank);
  Application.CreateForm(Tfrm_print_gozaresh_az_sandogh, frm_print_gozaresh_az_sandogh);
  Application.CreateForm(Tfrm_print_amaliat_roz, frm_print_amaliat_roz);
  Application.CreateForm(Tfrm_print_sefaresh, frm_print_sefaresh);
  Application.CreateForm(Tfrm_print_yaddasht, frm_print_yaddasht);
  Application.CreateForm(Tfrm_print_moshakhasat, frm_print_moshakhasat);
  Application.CreateForm(Tfrm_print_temp_factore_forosh, frm_print_temp_factore_forosh);
  Application.CreateForm(Tfrm_print_factore_kharid, frm_print_factore_kharid);
  Application.CreateForm(Tfrm_print_gozaresh_anbar, frm_print_gozaresh_anbar);
  Application.CreateForm(Tfrm_print_sosde_ajnas, frm_print_sosde_ajnas);
  Application.CreateForm(Tfrm_factore_kharid, frm_factore_kharid);
  Application.CreateForm(Tfrm_factor, frm_factor);
  Application.CreateForm(TFrm_factor_search, Frm_factor_search);
  Application.CreateForm(Tfrm_chek_not_pas, frm_chek_not_pas);
  Application.CreateForm(Tfrm_chek_factor, frm_chek_factor);
  Application.CreateForm(Tfrm_factor_pardakhtha, frm_factor_pardakhtha);
  Application.CreateForm(Tfrm_shakhs_bedehkar, frm_shakhs_bedehkar);
  Application.CreateForm(Tfrmjens_kharid, frmjens_kharid);
  Application.CreateForm(Tfrm_forosh_property, frm_forosh_property);
  Application.CreateForm(Tfrm_veiw_forosh_list, frm_veiw_forosh_list);
  Application.CreateForm(Tfrm_bede_bestan, frm_bede_bestan);
  Application.CreateForm(Tfrm_list_pardakht_ha, frm_list_pardakht_ha);
  Application.CreateForm(Tfrmaddanbar, frmaddanbar);
  Application.CreateForm(Tfrm_viewanbar, frm_viewanbar);
  Application.CreateForm(TFrm_edit_kharid_jens, Frm_edit_kharid_jens);
  Application.CreateForm(Tfrm_editgeymatjens, frm_editgeymatjens);
  Application.CreateForm(TFrm_listanbarforosh, Frm_listanbarforosh);
  Application.CreateForm(TFrm_jens_kharidar, Frm_jens_kharidar);
  Application.CreateForm(Tfrm_kharidhaye_shakhs, frm_kharidhaye_shakhs);
  Application.CreateForm(Tfrm_jens_foroshandeha, frm_jens_foroshandeha);
  Application.CreateForm(TFrm_foroshandegan_jens, Frm_foroshandegan_jens);
  Application.CreateForm(TFrm_paskardancheck, Frm_paskardancheck);
  Application.CreateForm(TFrm_jadval_bedehkarha, Frm_jadval_bedehkarha);
  Application.CreateForm(Tfrm_jadval_checkha, frm_jadval_checkha);
  Application.CreateForm(TFrm_jadval_checkhaye_pasnashode, Frm_jadval_checkhaye_pasnashode);
  Application.CreateForm(TFrm_jedvalbedeh, Frm_jedvalbedeh);
  Application.CreateForm(TFrm_pardakht_bedehi, Frm_pardakht_bedehi);
  Application.CreateForm(TFrm_jadval_jensin_anbar, Frm_jadval_jensin_anbar);
  Application.CreateForm(Tfrm_anbar_jadid, frm_anbar_jadid);
  Application.CreateForm(TFrm_moshakhasat_anbarha, Frm_moshakhasat_anbarha);
  Application.CreateForm(TFrm_mmoshakhasat_shakhs, Frm_mmoshakhasat_shakhs);
  Application.CreateForm(TFrm_search, Frm_search);
  Application.CreateForm(TFrm_shakhs_jadid, Frm_shakhs_jadid);
  Application.CreateForm(TFrm_backup, Frm_backup);
  Application.CreateForm(TFrm_login_change, Frm_login_change);
  Application.CreateForm(Tfrmgetserial, frmgetserial);
  Application.CreateForm(TFrm_return_backup, Frm_return_backup);
  Application.CreateForm(TFrm_saljadid, Frm_saljadid);
  Application.CreateForm(Tfrm_factor_roz, frm_factor_roz);
  Application.CreateForm(TFrm_pardakht_shoma, Frm_pardakht_shoma);
  Application.CreateForm(Tfrm_gozaresh_tarkibi, frm_gozaresh_tarkibi);
  Application.CreateForm(TFrm_gozaresh_tarkibi_mpshtari, Frm_gozaresh_tarkibi_mpshtari);
  Application.CreateForm(Tfrm_yaddasht_jadid, frm_yaddasht_jadid);
  Application.CreateForm(TFrm_sefaresh_jadid, Frm_sefaresh_jadid);
  Application.CreateForm(Tfrm_show_sefaresh, frm_show_sefaresh);
  Application.CreateForm(Tfrm_hazf_sefaresh, frm_hazf_sefaresh);
  Application.CreateForm(Tfrm_show_yaddasht, frm_show_yaddasht);
  Application.CreateForm(TFrm_hazf_yaddasht, Frm_hazf_yaddasht);
  Application.CreateForm(TFrm_pish_forosh, Frm_pish_forosh);
  Application.CreateForm(Tfrm_add_bank, frm_add_bank);
  Application.CreateForm(Tfrm_moshkhasat_bank, frm_moshkhasat_bank);
  Application.CreateForm(Tfrm_daste_check_jadid, frm_daste_check_jadid);
  Application.CreateForm(Tfrm_entekhab_check, frm_entekhab_check);
  Application.CreateForm(Tfrm_pish_kharid, frm_pish_kharid);
  Application.CreateForm(TFrm_add_jens_to_pishkharid, Frm_add_jens_to_pishkharid);
  Application.CreateForm(Tfrm_check_pardakhti_shoma, frm_check_pardakhti_shoma);
  Application.CreateForm(TFrm_add_vahed, Frm_add_vahed);
  Application.CreateForm(Tfrm_eslah_forosh, frm_eslah_forosh);
  Application.CreateForm(Tfrm_elsah, frm_elsah);
  Application.CreateForm(Tfrm_eslah_new_value, frm_eslah_new_value);
  Application.CreateForm(TFrm_auto_backup, Frm_auto_backup);
  Application.CreateForm(TFrm_sandog_jadid, Frm_sandog_jadid);
  Application.CreateForm(TFrm_gozaresh_az_sandog, Frm_gozaresh_az_sandog);
  Application.CreateForm(TFrm_khorojha_az_sandog, Frm_khorojha_az_sandog);
  Application.CreateForm(Tfrm_dabare, frm_dabare);
  Application.CreateForm(TFrm_entekhab_check_baraye_forosh, Frm_entekhab_check_baraye_forosh);
  Application.CreateForm(Tfrm_eslahe_forosh_checkha, frm_eslahe_forosh_checkha);
  Application.CreateForm(Tfrm_eslahe_forosh_naghd, frm_eslahe_forosh_naghd);
  Application.CreateForm(Tfrm_eslahe_forosh_hazf, frm_eslahe_forosh_hazf);
  Application.CreateForm(Tfrm_eslah_forosh_add_jens, frm_eslah_forosh_add_jens);
  Application.CreateForm(Tfrm_eslah_sal, frm_eslah_sal);
  Application.CreateForm(Tfrm_eslah_vahed, frm_eslah_vahed);
  Application.CreateForm(Tfrm_eslah_vahed_jens_anbar, frm_eslah_vahed_jens_anbar);
  Application.CreateForm(Tfrm_eslahe_daste_checkha, frm_eslahe_daste_checkha);
  Application.CreateForm(Tfrm_eslah_pardakhthaye_kharidar, frm_eslah_pardakhthaye_kharidar);
  Application.CreateForm(Tfrm_eslah_pardakhtha_be_foroshnde, frm_eslah_pardakhtha_be_foroshnde);
  Application.CreateForm(Tfrm_eslah_kharid, frm_eslah_kharid);
  Application.CreateForm(Tfrm_eslah_kharid_add_jens, frm_eslah_kharid_add_jens);
  Application.CreateForm(Tfrm_eslahe_kharid_checkha, frm_eslahe_kharid_checkha);
  Application.CreateForm(Tfrm_eslahe_kharid_hazf, frm_eslahe_kharid_hazf);
  Application.CreateForm(Tfrm_eslahe_kharid_naghd, frm_eslahe_kharid_naghd);
  Application.CreateForm(Tfrm_eslah_kharid_tedad, frm_eslah_kharid_tedad);
  Application.CreateForm(Tfrm_add_bank1, frm_add_bank1);
  Application.CreateForm(Tfrm_eslah_bank, frm_eslah_bank);
  Application.CreateForm(TFrm_search_bank, Frm_search_bank);
  Application.CreateForm(Tfrm_amaliate_roz, frm_amaliate_roz);
  Application.CreateForm(Tfrm_moshakhasat, frm_moshakhasat);
  Application.CreateForm(Tfrm_show_jens_baraye_entekhab_kharid, frm_show_jens_baraye_entekhab_kharid);
  Application.CreateForm(Tfrm_takhfife_forosh, frm_takhfife_forosh);
  Application.CreateForm(Tfrm_vrode_geymate_jadid, frm_vrode_geymate_jadid);
  Application.CreateForm(Tfrm_entekhabe_noe_virayesh_geymat, frm_entekhabe_noe_virayesh_geymat);
  Application.CreateForm(Tfrm_entekhbe_sherkat, frm_entekhbe_sherkat);
  Application.CreateForm(Tfrm_emale_darsadie_geymat_roye_hame, frm_emale_darsadie_geymat_roye_hame);
  Application.CreateForm(Tfrm_show_tozihate_geymat, frm_show_tozihate_geymat);
  Application.CreateForm(Tfrm_vorode_geymate_foroshe_dasi, frm_vorode_geymate_foroshe_dasi);
  Application.CreateForm(Tfrm_sode_foroshe_ajnas, frm_sode_foroshe_ajnas);
  Application.CreateForm(Tfrm_entekhabe_kharidar, frm_entekhabe_kharidar);
  Application.CreateForm(Tfrm_entekhab_foroshande, frm_entekhab_foroshande);
  Application.CreateForm(Tfrm_daste_check_jadid2, frm_daste_check_jadid2);
  Application.CreateForm(Tfrm_vorode_jense_motefarege, frm_vorode_jense_motefarege);
  Application.CreateForm(Tfrm_jabejaei_first, frm_jabejaei_first);
  Application.CreateForm(Tfrm_jabejaei_second, frm_jabejaei_second);
  Application.CreateForm(Tfrm_ajnase_makane_magsad, frm_ajnase_makane_magsad);
  Application.CreateForm(Tfrm_show_tozihate_jense_anbar, frm_show_tozihate_jense_anbar);
  Application.CreateForm(Tfrm_hazfe_jans_az_Anbar, frm_hazfe_jans_az_Anbar);
  Application.CreateForm(Tfrm_menoye_mavarede_jadid, frm_menoye_mavarede_jadid);
  Application.CreateForm(Tfrm_eslahe_bedehi_kharidaran, frm_eslahe_bedehi_kharidaran);
  Application.CreateForm(Tfrm_eslahe_bedehi_foroshandegan, frm_eslahe_bedehi_foroshandegan);
  Application.CreateForm(Tfrm_joziate_eslahe_bedehe_kharidar, frm_joziate_eslahe_bedehe_kharidar);
  Application.CreateForm(Tfrm_joziate_eslahe_bedehe_foroshande, frm_joziate_eslahe_bedehe_foroshande);
  Application.CreateForm(Tfrm_gozaresh_az_vorodi_khoroji_anbar, frm_gozaresh_az_vorodi_khoroji_anbar);
  Application.CreateForm(Tfrm_hazfe_gozaresh_anbar, frm_hazfe_gozaresh_anbar);
  Application.CreateForm(Tfrm_akharin_amaliate_ejra, frm_akharin_amaliate_ejra);
  Application.CreateForm(TDm_sp_backup, Dm_sp_backup);
  Application.CreateForm(Tfrm_eslahe_keraye_kharid, frm_eslahe_keraye_kharid);
  Application.CreateForm(Tfrm_eslahe_forosh_takhif, frm_eslahe_forosh_takhif);
  Application.CreateForm(Tfrm_eslahe_jens, frm_eslahe_jens);
  Application.CreateForm(Tfrm_anbarhaye_havie_jens, frm_anbarhaye_havie_jens);
  Application.CreateForm(Tfrm_sabte_marjo_zayeat, frm_sabte_marjo_zayeat);
  Application.CreateForm(Tfrm_print_factore_kharid_zayeat, frm_print_factore_kharid_zayeat);
  Application.CreateForm(Tfrm_eslahe_zayeat, frm_eslahe_zayeat);
  Application.CreateForm(Tfrm_print_factore_kharid_marjoei, frm_print_factore_kharid_marjoei);
  Application.CreateForm(Tfrm_eslahe_marjoei, frm_eslahe_marjoei);
  Application.CreateForm(Tfrm_tozihat, frm_tozihat);
  Application.CreateForm(TFrm_print_fo2, Frm_print_fo2);
  Application.CreateForm(TFrm_search_inkharid, Frm_search_inkharid);
  Application.CreateForm(Tfrm_taraze_mali, frm_taraze_mali);
  Application.CreateForm(TDataM_hazineha, DataM_hazineha);
  Application.CreateForm(Tfrm_onvane_hazineha, frm_onvane_hazineha);
  Application.CreateForm(Tfrm_sabte_hazine, frm_sabte_hazine);
  Application.CreateForm(Tfrm_show_hazineha, frm_show_hazineha);
  Application.CreateForm(Tfrm_shoe_hazine_onvan, frm_shoe_hazine_onvan);
  Application.CreateForm(Tfrm_rahnemaye_mianbor, frm_rahnemaye_mianbor);
  Application.CreateForm(TDataM_joziate_taraz, DataM_joziate_taraz);
  Application.CreateForm(Tfrm_joziate_bank, frm_joziate_bank);
  Application.CreateForm(Tfrm_joziate_sandog, frm_joziate_sandog);
  Application.CreateForm(Tfrm_joziate_hazine, frm_joziate_hazine);
  Application.CreateForm(Tfrm_variz_be_sarmaye, frm_variz_be_sarmaye);
  Application.CreateForm(Tfrm_joziate_makan, frm_joziate_makan);
  Application.CreateForm(Tfrm_ajnase_vorodi_be_eftetahie, frm_ajnase_vorodi_be_eftetahie);
  Application.CreateForm(Tfrm_forosh_fishi, frm_forosh_fishi);
  Application.CreateForm(TFrm_print_fo, Frm_print_fo);
  Application.CreateForm(Tfrm_tedad, frm_tedad);
  Application.CreateForm(Tfrm_eslahe_geymate_kharide_jens, frm_eslahe_geymate_kharide_jens);
  Application.CreateForm(Tfrm_karbar, frm_karbar);
  Application.CreateForm(Tfrm_sathe_dastrasi, frm_sathe_dastrasi);
  Application.CreateForm(TDataM_dastrasi, DataM_dastrasi);
  Application.CreateForm(Tfrm_eslah_fishi, frm_eslah_fishi);
  Application.CreateForm(Tfrm_eslahe_pish_kharid, frm_eslahe_pish_kharid);
  Application.CreateForm(Tfrm_eslahe_tozihe_forosh, frm_eslahe_tozihe_forosh);
  Application.CreateForm(Tfrm_vrode_geymate_koli_jadid, frm_vrode_geymate_koli_jadid);
  Application.CreateForm(Tfrm_print_liste_geymat, frm_print_liste_geymat);
  Application.CreateForm(Tfrm_liste_geymat, frm_liste_geymat);
  Application.CreateForm(TDataModule_gozaresh_tarkibi, DataModule_gozaresh_tarkibi);
  Application.CreateForm(TDmanbarexite, Dmanbarexite);
  Application.CreateForm(TFrm_anjirestan_jadid, Frm_anjirestan_jadid);
  Application.CreateForm(TFrm_mmoshakhasat_anjirestan, Frm_mmoshakhasat_anjirestan);
  Application.CreateForm(TFrm_add_hazine_anjirestan, Frm_add_hazine_anjirestan);
  Application.CreateForm(TFrm_print_hazine_anjirestan, Frm_print_hazine_anjirestan);
  Application.CreateForm(Tfrm_show_hazine_anjirestan, frm_show_hazine_anjirestan);
  Application.CreateForm(TFrm_print_hazine_anjirestan2, Frm_print_hazine_anjirestan2);
  Application.CreateForm(Tfrm_anjirestan_jamavari, frm_anjirestan_jamavari);
  Application.Run;
end.
