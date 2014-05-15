.class public Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;
.super Ljava/lang/Object;
.source "MessageManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwypeMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public body:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public modes:[I

.field public subject:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->body:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->modes:[I

    :cond_0
    iput-object p7, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->language:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->time:Ljava/lang/String;

    iput-object p8, p0, Lcom/nuance/connect/service/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    return-void
.end method
