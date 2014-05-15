.class public Lcom/android/mms/ui/AddTextGridAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "AddTextGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/mms/ui/AddTextGridAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const v14, 0x7f0c016e

    const v13, 0x7f0c016d

    const v12, 0x7f02012d

    const/16 v11, 0x15

    const/16 v10, 0xa

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.calendar"

    const/16 v1, 0x10

    const v3, 0x7f0c011d

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "com.samsung.android.app.memo"

    const/16 v3, 0x11

    const v4, 0x7f0c011e

    const v5, 0x7f020128

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.task"

    const/16 v1, 0x12

    const v3, 0x7f0c016c

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v1, 0xb

    const v3, 0x7f0c0197

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.sec.android.app.snotebook"

    const/16 v1, 0xd

    const v3, 0x7f0c0198

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v9, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.snote"

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x1

    if-le v9, v0, :cond_4

    const-string v0, "com.samsung.android.snote"

    const/16 v1, 0xd

    const v3, 0x7f0c0198

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    :goto_1
    const-string v0, "com.android.calendar"

    const/16 v1, 0x10

    if-eqz v8, :cond_9

    :goto_2
    invoke-static {p0, v0, v2, v1, v8}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v1, "com.google.android.apps.maps"

    move-object v0, p0

    move v3, v11

    move v4, v14

    move v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    const-string v0, "com.google.android.apps.maps"

    invoke-static {p0, v0, v2, v10, v13}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBaiduMapLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v1, "com.baidu.BaiduMap"

    move-object v0, p0

    move v3, v11

    move v4, v14

    move v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    const-string v0, "com.baidu.BaiduMap"

    invoke-static {p0, v0, v2, v10, v13}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    const-string v1, "com.baidu.BaiduMap.samsung"

    move-object v0, p0

    move v3, v11

    move v4, v14

    move v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    const-string v0, "com.baidu.BaiduMap.samsung"

    invoke-static {p0, v0, v2, v10, v13}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    const/16 v1, 0xf

    const v3, 0x7f0c011c

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_8
    :goto_3
    const v0, 0x7f0c0212

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x13

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object v2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_9
    const v3, 0x7f0c0194

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_a
    const-string v0, "com.android.contacts"

    const/16 v1, 0xf

    const v3, 0x7f0c011c

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
