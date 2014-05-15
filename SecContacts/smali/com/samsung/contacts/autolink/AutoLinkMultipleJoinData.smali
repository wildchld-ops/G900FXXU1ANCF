.class public Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;
.super Ljava/lang/Object;
.source "AutoLinkMultipleJoinData.java"


# instance fields
.field public mTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mdefaultId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;->mdefaultId:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;->mTargetList:Ljava/util/ArrayList;

    return-void
.end method
