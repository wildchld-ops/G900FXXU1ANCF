.class public Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;
.super Ljava/lang/Object;
.source "SnsFeeds.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/model/SnsFeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsFeedItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIcon:Landroid/graphics/drawable/Drawable;

.field private mCreateTime:J

.field private mId:I

.field private mLikeCount:I

.field private mMessage:Ljava/lang/String;

.field private mPhotoUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlace:Ljava/lang/String;

.field private mProfileIntent:Landroid/content/Intent;

.field private mReplyCount:I

.field private mUpdatedTime:J


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLandroid/content/Intent;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mPhotoUrls:Ljava/util/ArrayList;

    iput p1, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mId:I

    iput-object p2, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mPlace:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {p5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mPhotoUrls:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    iput p6, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mLikeCount:I

    iput p7, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mReplyCount:I

    iput-wide p8, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mCreateTime:J

    iput-wide p10, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mUpdatedTime:J

    iput-object p12, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mProfileIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->compareTo(Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;)I

    move-result v0

    return v0
.end method

.method public getAccountIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mCreateTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mId:I

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mLikeCount:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mPhotoUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mPlace:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mProfileIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getReplyCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;->mReplyCount:I

    return v0
.end method
