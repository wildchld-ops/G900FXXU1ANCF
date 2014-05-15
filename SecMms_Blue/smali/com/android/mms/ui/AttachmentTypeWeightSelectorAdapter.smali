.class public Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_f

    const-string v1, "com.sec.android.gallery3d"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    const v6, 0x7f0c00a6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.cooliris.media"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    const v6, 0x7f0c00a6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.android.gallery3d"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    const v6, 0x7f0c00a6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_0
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    const v6, 0x7f0c00a7

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    const-string v1, "com.sec.android.gallery3d"

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00a8

    const v7, 0x7f020097

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "com.cooliris.media"

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00a8

    const v7, 0x7f020097

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "com.android.gallery3d"

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00a8

    const v7, 0x7f020097

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_1
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    const v6, 0x7f0c00a9

    const v7, 0x7f020093

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    const v7, 0x7f020095

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "com.sec.android.app.voicerecorder"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "com.sec.android.app.voicenote"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    const v7, 0x7f02035d

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "com.android.calendar"

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    const v6, 0x7f0c011d

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "com.samsung.android.app.memo"

    const/16 v3, 0x8

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v4

    const v6, 0x7f0c011e

    const v7, 0x7f020128

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v3, 0xb

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v4

    const v6, 0x7f0c0197

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "com.sec.android.app.snotebook"

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    const v6, 0x7f0c0198

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v1, "com.samsung.android.snote"

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    const v6, 0x7f0c0198

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScrapbook()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "com.samsung.android.app.pinboard"

    const/16 v3, 0x16

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v4

    const v6, 0x7f0c04d2

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v1, "com.samsung.android.app.pinboard"

    const/16 v3, 0x16

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v4

    const v6, 0x7f0c04d2

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    const-string v1, "com.android.calendar"

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    if-eqz v10, :cond_e

    move-object v6, v10

    :goto_1
    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;)Z

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v1, "com.android.task"

    const/16 v3, 0x9

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v4

    const v6, 0x7f0c016c

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v1, "com.google.android.apps.maps"

    const/16 v3, 0xa

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016d

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBaiduMapLocation()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v1, "com.baidu.BaiduMap"

    const/16 v3, 0xa

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016d

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    const-string v1, "com.baidu.BaiduMap.samsung"

    const/16 v3, 0xa

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016d

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v1, "com.android.contacts"

    const/4 v3, 0x6

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v4

    const v6, 0x7f0c011c

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_d
    :goto_2
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->sComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_e
    const v0, 0x7f0c0194

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_f
    const/16 v0, 0xa

    if-eq p2, v0, :cond_10

    const/16 v0, 0xb

    if-ne p2, v0, :cond_12

    :cond_10
    const-string v1, "com.sec.android.gallery3d"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    const v6, 0x7f0c00a6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v1, "com.cooliris.media"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    const v6, 0x7f0c00a6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v1, "com.android.gallery3d"

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    const v6, 0x7f0c00a6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_11
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    const v6, 0x7f0c00a7

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00a8

    const v7, 0x7f020097

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    const v6, 0x7f0c00a9

    const v7, 0x7f020093

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto :goto_2

    :cond_12
    const/16 v0, 0xc

    if-ne p2, v0, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    const v7, 0x7f020095

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v1, "com.sec.android.app.voicerecorder"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v1, "com.sec.android.app.voicenote"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    const v7, 0x7f02035d

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0xe

    if-ne p2, v0, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f0c016d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_2
.end method
