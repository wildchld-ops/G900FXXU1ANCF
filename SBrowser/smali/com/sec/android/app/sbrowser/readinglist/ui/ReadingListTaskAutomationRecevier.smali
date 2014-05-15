.class public Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;
.super Landroid/content/BroadcastReceiver;
.source "ReadingListTaskAutomationRecevier.java"


# static fields
.field private static final RECEIVER_FROM_PA:Ljava/lang/String; = "receiverFromPA"


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private addCard(Landroid/content/Context;Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;)V
    .locals 23

    const-string v9, "reading list"

    const-string v17, "TEMPLATE_3_3"

    const-string v10, "top stories"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;

    const-string v19, "reading list"

    const-string v20, "TEMPLATE_3_3"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v8, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    const-string v20, "text1"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0323

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V

    new-instance v19, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    const-string v20, "text2"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V

    new-instance v19, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;

    const-string v20, "text3"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V

    new-instance v14, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    const-string v19, "broadcast"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string v19, "com.sec.android.app.sbrowser.action.card.RECEIVER"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "receiverFromPA"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v19, "cardID"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14, v5}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setData(Landroid/content/Intent;)V

    const v19, 0x7f0c0324

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setLabel(Ljava/lang/String;)V

    const-string v19, "action1"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v14}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->addCardAction(Ljava/lang/String;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V

    new-instance v15, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;

    const-string v19, "activity"

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/content/Intent;

    const-string v19, "com.sec.android.app.sbrowser.action.READER"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "android.intent.category.DEFAULT"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "isFromReadingList"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v19, "isFromReadingPA"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v19, "cardID"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "savePageUrl"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "savePageTitle"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "savePageStoragePath"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getStoragePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setData(Landroid/content/Intent;)V

    const v19, 0x7f0c031f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->setLabel(Ljava/lang/String;)V

    const-string v19, "action2"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v15}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->addCardAction(Ljava/lang/String;Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->getReadingListImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_0

    new-instance v19, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    const-string v20, "image1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f03

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v19, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;

    const-string v20, "app_icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardImage;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setCardElement(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardElement;)V

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    move-result-object v13

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->registerCardProvider(Landroid/content/Intent;)Z

    const-string v19, "reading list"

    const-string v20, "top stories"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->registerCardName(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v19, 0x6

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v19, 0xb

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v19, 0xd

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;->setExpirationTime(J)V

    const-string v19, "top stories"

    move-object/from16 v0, v19

    invoke-virtual {v12, v7, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->postCard(Lcom/samsung/android/sdk/smartassistant/cardprovider/card/Card;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addCardIntoPA(Landroid/content/Context;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    const-string v4, "addCardIntoPA ......"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->getReadingListDatas(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->isItWithIn7Days(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->addCard(Landroid/content/Context;Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getReadingListDatas(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "_id >= 0 AND is_deleted = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id >= 0 AND is_deleted = 0"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v9, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-direct {v9, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v6, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getReadingListData(Landroid/database/Cursor;Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :goto_0
    const/4 v6, 0x0

    :cond_2
    :goto_1
    return-object v10

    :catch_0
    move-exception v7

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while resolving query to refresh list - exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v7

    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while resolving query to refresh list - exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_2

    :catch_4
    move-exception v7

    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while resolving query to refresh list - exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v7

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const/4 v6, 0x0

    :cond_3
    :goto_3
    throw v1

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v7

    goto :goto_2
.end method

.method private getReadingListImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "favicon"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    :cond_0
    :goto_1
    return-object v6

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    const-string v1, "bitmap is null. blobImage = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v8, 0x0

    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private removeCard(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    const-string v4, "removeCard ......"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/smartassistant/cardprovider/ConfigurationManager;->registerCardProvider(Landroid/content/Intent;)Z

    if-eqz p2, :cond_0

    const-string v3, ""

    const-string v4, "cardID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cardID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->removeCard(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method isItWithIn7Days(Ljava/util/Date;)Z
    .locals 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    const-wide/32 v5, 0x5265c00

    div-long v2, v0, v5

    const-wide/16 v5, 0x7

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->LOGTAG:Ljava/lang/String;

    const-string v1, "onReceive ......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "receiverFromPA"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->removeCard(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListTaskAutomationRecevier;->addCardIntoPA(Landroid/content/Context;)V

    goto :goto_0
.end method
