.class public Lcom/android/settings/search/SearchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;,
        Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;
    }
.end annotation


# static fields
.field private static SearchinfoThread:Z

.field private static TitleinfoThread:Z

.field private static mDoingInitTitleDB:Z

.field public static xmlParser:Lcom/android/settings/search/SettingHeaderXmlParser;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z

    sput-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    sput-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchIntentReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchIntentReceiver;->mDoingInitTitleDB:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    return p0
.end method

.method private isEncryptMode()Z
    .locals 2

    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "SearchIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SearchIntentReceiver action : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/search/SearchIntentReceiver;->isEncryptMode()Z

    move-result v10

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    if-nez v10, :cond_2

    const-string v9, "SearchIntentReceiver"

    const-string v10, "RESTORE_SEARCH_DB call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    invoke-virtual {p0, v8}, Lcom/android/settings/search/SearchIntentReceiver;->restoredb(Z)V

    new-instance v7, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;-><init>(Lcom/android/settings/search/SearchIntentReceiver;)V

    invoke-virtual {v7, v8}, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;->setDaemon(Z)V

    invoke-virtual {v7}, Lcom/android/settings/search/SearchIntentReceiver$InitSerachDBThread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    if-nez v10, :cond_3

    const-string v9, "SearchIntentReceiver"

    const-string v10, "LOCALE_CHANGED call search setting db init!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    invoke-virtual {p0, v8}, Lcom/android/settings/search/SearchIntentReceiver;->restoredb(Z)V

    new-instance v7, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/search/SearchIntentReceiver;Z)V

    invoke-virtual {v7, v8}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    invoke-virtual {v7}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->start()V

    goto :goto_0

    :cond_3
    const-string v10, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "rowId"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v10, "value"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v4, Lcom/android/settings/search/SettingSearchManager;

    iget-object v10, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(I)Lcom/android/settings/search/SearchItem;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v8, :cond_4

    :goto_1
    iput v8, v3, Lcom/android/settings/search/SearchItem;->value:I

    iget-object v8, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    :cond_5
    const-string v10, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v4, Lcom/android/settings/search/SettingSearchManager;

    iget-object v8, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v8, "rowId"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(I)Lcom/android/settings/search/SearchItem;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z

    goto :goto_0

    :cond_6
    const-string v10, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "SearchIntentReceiver"

    const-string v11, "FINISH_SEARCHDB_EXTRA_APPS call search titleinfo db init!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/settings/search/SearchIntentReceiver;->TitleinfoThread:Z

    sput-boolean v9, Lcom/android/settings/search/SearchIntentReceiver;->SearchinfoThread:Z

    new-instance v7, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;

    invoke-direct {v7, p0}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;-><init>(Lcom/android/settings/search/SearchIntentReceiver;)V

    invoke-virtual {v7, v8}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->setDaemon(Z)V

    invoke-virtual {v7}, Lcom/android/settings/search/SearchIntentReceiver$InitTitleDBThread;->start()V

    goto/16 :goto_0

    :cond_7
    const-string v8, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "icc_lock_state"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v8, "SearchIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.settings.CHANGED_ICC_LOCK_ENABLE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "icc_lock_enable"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public restoredb(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "lock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/search/SearchIntentReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
