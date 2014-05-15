.class Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "SBrowserProviderSuggestionsCursor.java"


# static fields
.field private static final COLS:[Ljava/lang/String;


# instance fields
.field mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->COLS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

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
    .locals 5

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v4, "date"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x7
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
    .locals 6

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_1
    const-string v2, "android.intent.action.VIEW"

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "url"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "url"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    const v3, 0x7f020096

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "date"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserProviderSuggestionsCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
