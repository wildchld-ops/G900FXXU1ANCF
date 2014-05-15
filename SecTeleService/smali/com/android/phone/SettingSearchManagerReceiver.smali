.class public Lcom/android/phone/SettingSearchManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingSearchManagerReceiver.java"


# static fields
.field private static final SETTINGINFO_URI:Landroid/net/Uri;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SettingSearchManagerReceiver"

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    return-void
.end method

.method private addSearchInfoDB()V
    .locals 2

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    return-void
.end method

.method private addSearchInfoDB_NetworkSettings()V
    .locals 8

    const v7, 0x7f09009c

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "mobile_network_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "button_data_enabled_key"

    const v1, 0x7f0909a3

    const v2, 0x7f0909a4

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :goto_0
    const-string v0, "usa_spr_roaming_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "global_data_roaming_access_key"

    const v1, 0x7f0906e7

    const v2, 0x7f0906e9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_0
    :goto_1
    const-string v0, "button_apn_key"

    const v1, 0x7f09004c

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f09099f

    const v2, 0x7f0909a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_1
    :goto_2
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f0909a1

    const v2, 0x7f0909a2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_2
    :goto_3
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0909a5

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_3
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f09004d

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_4
    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "button_enhanced_4glte_key"

    const v1, 0x7f0907a2

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_5
    return-void

    :cond_6
    const-string v0, "button_data_enabled_key"

    const v1, 0x7f090510

    const v2, 0x7f0900b2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "button_roaming_key"

    const v1, 0x7f0900b3

    const v2, 0x7f0900b4

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "button_roaming_key"

    const v1, 0x7f0900b3

    const v2, 0x7f0900b4

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "network_mode_cdma_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "preferred_network_mode_key"

    invoke-direct {p0, v0, v7, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "button_prefer_networkmode_key"

    invoke-direct {p0, v0, v7, v4, v6}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f090050

    const v2, 0x7f090097

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_3
.end method

.method private addSearchInfoDBforTablet()V
    .locals 2

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB for Tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    return-void
.end method

.method private endInsert()V
    .locals 3

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "endInsert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private putValues(Ljava/lang/String;III)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "id_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title_res_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary_res_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "icon_res_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "menu_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "package_name"

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putValues : exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "onReceive - intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "The device does not support Voice call..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.settings.INSERT_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.settings.INSERT_SEARCHDB_VER_TWO_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDBforTablet()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB()V

    goto :goto_0
.end method
