.class public Lcom/samsung/contacts/model/SnsFeeds;
.super Ljava/lang/Object;
.source "SnsFeeds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;
    }
.end annotation


# instance fields
.field private mSnsFeedItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/model/SnsFeeds;->mSnsFeedItems:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public getSnsFeedItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/samsung/contacts/model/SnsFeeds$SnsFeedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/model/SnsFeeds;->mSnsFeedItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
