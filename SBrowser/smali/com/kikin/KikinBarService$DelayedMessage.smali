.class Lcom/kikin/KikinBarService$DelayedMessage;
.super Ljava/lang/Object;
.source "KikinBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/KikinBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedMessage"
.end annotation


# instance fields
.field private data:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/kikin/KikinBarService;

.field private what:I


# direct methods
.method public constructor <init>(Lcom/kikin/KikinBarService;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/KikinBarService$DelayedMessage;->this$0:Lcom/kikin/KikinBarService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/kikin/KikinBarService$DelayedMessage;->data:Landroid/os/Bundle;

    iput p2, p0, Lcom/kikin/KikinBarService$DelayedMessage;->what:I

    return-void
.end method


# virtual methods
.method public send()V
    .locals 3

    iget-object v0, p0, Lcom/kikin/KikinBarService$DelayedMessage;->this$0:Lcom/kikin/KikinBarService;

    iget v1, p0, Lcom/kikin/KikinBarService$DelayedMessage;->what:I

    iget-object v2, p0, Lcom/kikin/KikinBarService$DelayedMessage;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;)Z

    return-void
.end method
