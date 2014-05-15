.class public Lcom/android/contacts/util/StreamItemEntry;
.super Ljava/lang/Object;
.source "StreamItemEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/util/StreamItemEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mComments:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private mDecoded:Z

.field private mDecodedComments:Ljava/lang/CharSequence;

.field private mDecodedText:Ljava/lang/CharSequence;

.field private final mIconRes:Ljava/lang/String;

.field private final mId:J

.field private final mLabelRes:Ljava/lang/String;

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemPhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mResPackage:Ljava/lang/String;

.field private final mText:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    iput-object p3, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iput-object p7, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/contacts/util/StreamItemEntry;->mIconRes:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    const-string v0, "comments"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountName:Ljava/lang/String;

    const-string v0, "data_set"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    const-string v0, "res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    const-string v0, "icon"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mIconRes:Ljava/lang/String;

    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    return-void
.end method

.method private checkDecoded()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecoded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decodeHtml must have been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static createForTest(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/util/StreamItemEntry;
    .locals 13

    new-instance v0, Lcom/android/contacts/util/StreamItemEntry;

    move-wide v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/contacts/util/StreamItemEntry;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareTo(Lcom/android/contacts/util/StreamItemEntry;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {p0, p1}, Lcom/android/contacts/util/StreamItemEntry;->compareTo(Lcom/android/contacts/util/StreamItemEntry;)I

    move-result v0

    return v0
.end method

.method public decodeHtml(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getImageGetter(Landroid/content/Context;)Landroid/text/Html$ImageGetter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedText:Ljava/lang/CharSequence;

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedComments:Ljava/lang/CharSequence;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecoded:Z

    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedComments()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/util/StreamItemEntry;->checkDecoded()V

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedComments:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDecodedText()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/util/StreamItemEntry;->checkDecoded()V

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    return-wide v0
.end method

.method public getLabelRes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemPhotoEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    return-wide v0
.end method
