.class public Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "SBrowserProviderFinDoSuggestionsCursor.java"


# static fields
.field static final BOOKMARK_CLOUMN_BOOKMARK:I = 0x1

.field static final BOOKMARK_CLOUMN_FAVICON:I = 0x2

.field static final BOOKMARK_CLOUMN_ID:I = 0x0

.field private static final COLS:[Ljava/lang/String; = null

.field static final SUGGEST_COLUMN_GROUP:I = 0xb

.field static final SUGGEST_COLUMN_ICON_1:I = 0x7

.field static final SUGGEST_COLUMN_INTENT_ACTION:I = 0x3

.field static final SUGGEST_COLUMN_INTENT_DATA:I = 0x4

.field static final SUGGEST_COLUMN_LAST_ACCESS_HINT:I = 0x8

.field static final SUGGEST_COLUMN_MIME_TYPE:I = 0xa

.field static final SUGGEST_COLUMN_SUGGEST_URI:I = 0x9

.field static final SUGGEST_COLUMN_TARGET_TYPE:I = 0xc

.field static final SUGGEST_COLUMN_TEXT_1:I = 0x5

.field static final SUGGEST_COLUMN_TEXT_2:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SBrowserProviderFinDoSuggestionCursor"


# instance fields
.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_icon_1_blob"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "suggest_mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "suggest_group"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "suggest_target_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 6

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "favicon"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "FinDo_Browser"

    const-string v4, "Favicon not avilable,showing Default favicon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v2, "bookmark"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 9

    const-string v5, ""

    packed-switch p1, :pswitch_data_0

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v6, "SBrowserProviderFinDoSuggestionCursor"

    const-string v7, "Folder intent action"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.intent.action.SFINDER"

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v5, "android.intent.action.VIEW"

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "title"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_3
    const v6, 0x7f02004e

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "date"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_2

    const-string v5, "0"

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_5
    const-string v5, "text/plain"

    goto :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_7
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "SUGGEST_COLUMN_GROUP"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "url"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    const-string v5, "0"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final getType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderFinDoSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
