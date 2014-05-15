.class public Lcom/samsung/contacts/model/sns/GooglePlusSnsType;
.super Lcom/samsung/contacts/model/sns/SnsType;
.source "GooglePlusSnsType.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccountIcon:Landroid/graphics/drawable/Drawable;

.field private final mProfileIntent:Landroid/content/Intent;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "post_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "media_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "likes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timestamp_utc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/contacts/model/sns/SnsType;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/android/contacts/model/RawContact;->getSourceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "g:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mSourceId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v0}, Lcom/android/contacts/ContactsUtils;->loadProfileIntentWithRawContactId(Landroid/content/Context;JLcom/android/contacts/common/model/account/AccountType;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mProfileIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mProfileIntent:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getProjection()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getSnsFeedItem(Landroid/database/Cursor;)Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;
    .locals 14

    const/4 v2, 0x7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;

    iget-object v2, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mProfileIntent:Landroid/content/Intent;

    invoke-direct/range {v0 .. v12}, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLandroid/content/Intent;)V

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/sns/GooglePlusSnsType;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRequestAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_REQUESTED"

    return-object v0
.end method

.method public getUpdatedResponseAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_UPDATED"

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.sns3.sp.googleplus/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
