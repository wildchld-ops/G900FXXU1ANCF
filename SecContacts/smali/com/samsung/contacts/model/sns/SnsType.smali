.class public abstract Lcom/samsung/contacts/model/sns/SnsType;
.super Ljava/lang/Object;
.source "SnsType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getProjection()[Ljava/lang/String;
.end method

.method public abstract getSnsFeedItem(Landroid/database/Cursor;)Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;
.end method

.method public abstract getSourceId()Ljava/lang/String;
.end method

.method public abstract getUpdateRequestAction()Ljava/lang/String;
.end method

.method public abstract getUpdatedResponseAction()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method
