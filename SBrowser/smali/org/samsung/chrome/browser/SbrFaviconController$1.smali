.class Lorg/samsung/chrome/browser/SbrFaviconController$1;
.super Ljava/lang/Object;
.source "SbrFaviconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrFaviconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrFaviconController;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrFaviconController;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrFaviconController$1;->this$0:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrFaviconController$1;->this$0:Lorg/samsung/chrome/browser/SbrFaviconController;

    #getter for: Lorg/samsung/chrome/browser/SbrFaviconController;->mDataUpdated:Z
    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrFaviconController;->access$000(Lorg/samsung/chrome/browser/SbrFaviconController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrFaviconController$1;->this$0:Lorg/samsung/chrome/browser/SbrFaviconController;

    const/4 v1, 0x0

    #setter for: Lorg/samsung/chrome/browser/SbrFaviconController;->mDataUpdated:Z
    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->access$002(Lorg/samsung/chrome/browser/SbrFaviconController;Z)Z

    :cond_0
    return-void
.end method
