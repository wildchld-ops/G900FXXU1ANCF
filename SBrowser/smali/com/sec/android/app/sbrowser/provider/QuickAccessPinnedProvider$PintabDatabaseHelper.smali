.class Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "QuickAccessPinnedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PintabDatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    const-string v0, "pintab.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private MaxCountItem(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v1, "pintab"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*) AS count"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    return v9
.end method

.method private initialinsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dominant"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->MaxCountItem(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    #setter for: Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->itemcount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$202(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;I)I

    const-string v1, "position"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$208(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pintab"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$210(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    #getter for: Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$100(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$002(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Web_SupportOfflineStartupPage"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    #getter for: Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$100(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v1, 0x7f0700c6

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700c7

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_17

    invoke-static {v8}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_17

    const/4 v12, 0x0

    :goto_0
    array-length v1, v7

    if-ge v12, v1, :cond_17

    aget-object v3, v8, v12

    aget-object v4, v7, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    #getter for: Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->tempPicture:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$000(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->initialinsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->CHINA:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->this$0:Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;

    #getter for: Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->access$100(Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Web_SetQuickAccessAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "USA"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0700a1

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700a2

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v8, :cond_17

    invoke-static {v8}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_17

    const/4 v12, 0x0

    :goto_3
    array-length v1, v7

    if-ge v12, v1, :cond_17

    aget-object v3, v8, v12

    aget-object v4, v7, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->initialinsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    const-string v1, "JPN"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0700a3

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700a4

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    if-eqz v14, :cond_13

    const-string v1, "DT_"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    const/4 v15, 0x0

    const v1, 0x7f07009f

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700a0

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const-string v1, "DT_AT"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0700a5

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700a6

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    :cond_4
    :goto_4
    if-eqz v16, :cond_11

    if-eqz v15, :cond_11

    const/4 v11, 0x0

    :goto_5
    array-length v1, v15

    if-ge v11, v1, :cond_11

    aget-object v1, v16, v11

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v1, v15, v11

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    const-string v1, "DT_CZ"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0700a7

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700a8

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_6
    const-string v1, "DT_DE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0700a9

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700aa

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_7
    const-string v1, "DT_GR"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0700ab

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700ac

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_8
    const-string v1, "DT_HR"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0700ad

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700ae

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_9
    const-string v1, "DT_HU"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f0700af

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700b0

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_a
    const-string v1, "DT_ME"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0700b1

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700b2

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_b
    const-string v1, "DT_MK"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f0700b3

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700b4

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_c
    const-string v1, "DT_NL"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f0700b5

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700b6

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_d
    const-string v1, "DT_PL"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f0700b7

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700b8

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_e
    const-string v1, "DT_RO"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f0700b9

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700ba

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_f
    const-string v1, "DT_SK"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f0700bb

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700bc

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_10
    const-string v1, "DT_TR"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0700bd

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    const v1, 0x7f0700be

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_11
    const/4 v11, 0x0

    :goto_6
    array-length v1, v7

    if-ge v11, v1, :cond_12

    aget-object v1, v8, v11

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v1, v7, v11

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v8, v1

    check-cast v8, [Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    const-string v1, "OJK"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, 0x7f0700c1

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700c2

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_14
    const-string v1, "TELE_ES"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v1, 0x7f0700bf

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700c0

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_15
    const-string v1, "NZ_VNZ"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0x7f0700c3

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700c4

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_16
    const v1, 0x7f07009f

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f0700a0

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_17
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsSbrRSSFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CREATE TABLE pintab(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT UNIQUE,parent INTEGER,position INTEGER, touchicon BLOB,dominant INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider$PintabDatabaseHelper;->init(Landroid/database/sqlite/SQLiteDatabase;)Z

    return-void

    :cond_0
    :try_start_1
    const-string v1, "CREATE TABLE pintab(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT UNIQUE,parent INTEGER,position INTEGER, touchicon BLOB,dominant INTEGER,rsslink TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PintabDatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create pintab exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
