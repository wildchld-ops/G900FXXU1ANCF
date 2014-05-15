.class public Lcom/samsung/contacts/model/sns/FacebookSnsType;
.super Lcom/samsung/contacts/model/sns/SnsType;
.source "FacebookSnsType.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccountIcon:Landroid/graphics/drawable/Drawable;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

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

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "likes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "place_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "updated_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/model/sns/FacebookSnsType;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/RawContact;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/contacts/model/sns/SnsType;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/sns/FacebookSnsType;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/android/contacts/model/RawContact;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/sns/FacebookSnsType;->mSourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProjection()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/model/sns/FacebookSnsType;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getSnsFeedItem(Landroid/database/Cursor;)Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;
    .locals 16

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "_s.jpg"

    const-string v3, "_n.jpg"

    invoke-virtual {v14, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fb://post/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/model/sns/FacebookSnsType;->mAccountIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v1 .. v13}, Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLandroid/content/Intent;)V

    return-object v1
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/sns/FacebookSnsType;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRequestAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.sns.profile.ACTION_FACEBOOK_REQUESTED"

    return-object v0
.end method

.method public getUpdatedResponseAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.sec.android.app.sns.profile.ACTION_FACEBOOK_UPDATED"

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.sns3.sp.facebook/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
