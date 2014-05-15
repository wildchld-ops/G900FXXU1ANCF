.class public Lcom/samsung/contacts/model/sns/LinkedinSnsType;
.super Lcom/samsung/contacts/model/sns/SnsType;
.source "LinkedinSnsType.java"


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

    const-string v2, "from_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "update_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "submitted_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "likes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/contacts/model/sns/SnsType;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/android/contacts/model/RawContact;->getSync2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mSourceId:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mProfileIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mProfileIntent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkedin://updates/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?referrer_partner=samsung_galaxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mProfileIntent:Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getProjection()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getSnsFeedItem(Landroid/database/Cursor;)Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;
    .locals 13

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v0, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;

    iget-object v2, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mProfileIntent:Landroid/content/Intent;

    move-object v5, v4

    move-wide v10, v8

    invoke-direct/range {v0 .. v12}, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLandroid/content/Intent;)V

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/sns/LinkedinSnsType;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRequestAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_REQUESTED"

    return-object v0
.end method

.method public getUpdatedResponseAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_UPDATED"

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.sns3.sp.linkedin/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
