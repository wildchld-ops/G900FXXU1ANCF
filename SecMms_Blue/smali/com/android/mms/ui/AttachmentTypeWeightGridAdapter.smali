.class public Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f040052

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2

    const v0, 0x7f040052

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 20
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

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v5, 0x0

    if-nez p1, :cond_14

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v5

    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.cooliris.media"

    const/4 v4, 0x0

    const v7, 0x7f0c00a6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x3

    const v7, 0x7f0c00a7

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v5

    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x1

    const v7, 0x7f0c00a8

    const v8, 0x7f020097

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "com.cooliris.media"

    const/4 v4, 0x1

    const v7, 0x7f0c00a8

    const v8, 0x7f020097

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x1

    const v7, 0x7f0c00a8

    const v8, 0x7f020097

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x4

    const v7, 0x7f0c00a9

    const v8, 0x7f020093

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x2

    const v7, 0x7f0c00aa

    const v8, 0x7f020095

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x5

    const v7, 0x7f0c00ab

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v2, "com.sec.android.app.voicenote"

    const/4 v4, 0x5

    const v7, 0x7f0c00ab

    const v8, 0x7f02035d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v5

    const-string v2, "com.android.calendar"

    const/4 v4, 0x7

    const v7, 0x7f0c011d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v5

    const-string v2, "com.samsung.android.app.memo"

    const/16 v4, 0x8

    const v7, 0x7f0c011e

    const v8, 0x7f020128

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v5

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v4, 0xb

    const v7, 0x7f0c0197

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.snotebook"

    const/16 v4, 0xd

    const v7, 0x7f0c0198

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v19, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.snote"

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x1

    move/from16 v0, v19

    if-le v0, v1, :cond_7

    const-string v2, "com.samsung.android.snote"

    const/16 v4, 0xd

    const v7, 0x7f0c0198

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScrapbook()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v5

    const-string v2, "com.samsung.android.app.pinboard"

    const/16 v4, 0x16

    const v7, 0x7f0c04d2

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.calendar"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    :goto_1
    const-string v2, "com.android.calendar"

    const/4 v4, 0x7

    if-eqz v18, :cond_10

    move-object/from16 v7, v18

    :goto_2
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;)Z

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v5

    const-string v2, "com.android.task"

    const/16 v4, 0x9

    const v7, 0x7f0c016c

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddMyLocation()J

    move-result-wide v5

    const-string v2, "com.google.android.apps.maps"

    const/16 v4, 0x15

    const v7, 0x7f0c016e

    const v8, 0x7f02012d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v2, "com.google.android.apps.maps"

    const/16 v4, 0xa

    const v7, 0x7f0c016d

    const v8, 0x7f020096

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_c
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBaiduMapLocation()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v2, "com.baidu.BaiduMap"

    const/16 v4, 0xa

    const v7, 0x7f0c016d

    const v8, 0x7f020096

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v2, "com.baidu.BaiduMap.samsung"

    const/16 v4, 0xa

    const v7, 0x7f0c016d

    const v8, 0x7f020096

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_d
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v5

    const-string v2, "com.android.contacts"

    const/4 v4, 0x6

    const v7, 0x7f0c011c

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAvatarAttachMenu()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddAvatar()J

    move-result-wide v5

    const-string v2, "com.acrodea.samsung_avatar_maker"

    const/16 v4, 0xe

    const v7, 0x7f0c03cd

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_f
    :goto_5
    sget-object v1, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->sComparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_10
    const v1, 0x7f0c0194

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_11
    const-string v2, "com.google.android.apps.maps"

    const/16 v4, 0xa

    const v7, 0x7f0c016d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    goto :goto_3

    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_d

    const v1, 0x7f0c016d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xa

    move-object v7, v3

    move-wide v11, v5

    invoke-static/range {v7 .. v12}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto :goto_4

    :cond_13
    const-string v2, "com.baidu.BaiduMap"

    const/16 v4, 0xa

    const v7, 0x7f0c016d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v2, "com.baidu.BaiduMap.samsung"

    const/16 v4, 0xa

    const v7, 0x7f0c016d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    goto/16 :goto_4

    :cond_14
    const/16 v1, 0xa

    move/from16 v0, p2

    if-eq v0, v1, :cond_15

    const/16 v1, 0xb

    move/from16 v0, p2

    if-ne v0, v1, :cond_18

    :cond_15
    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v2, "com.cooliris.media"

    const/4 v4, 0x0

    const v7, 0x7f0c00a6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAvatarAttachMenu()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v2, "com.acrodea.samsung_avatar_maker"

    const/16 v4, 0xe

    const v7, 0x7f0c03cd

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_17
    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x3

    const v7, 0x7f0c00a7

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x1

    const v7, 0x7f0c00a8

    const v8, 0x7f020097

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x4

    const v7, 0x7f0c00a9

    const v8, 0x7f020093

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto/16 :goto_5

    :cond_18
    const/16 v1, 0xc

    move/from16 v0, p2

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x2

    const v7, 0x7f0c00aa

    const v8, 0x7f020095

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v2, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x5

    const v7, 0x7f0c00ab

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v2, "com.sec.android.app.voicenote"

    const/4 v4, 0x5

    const v7, 0x7f0c00ab

    const v8, 0x7f02035d

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto/16 :goto_5

    :cond_1a
    const/16 v1, 0xe

    move/from16 v0, p2

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f0c016d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0xa

    move-object v10, v3

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method
