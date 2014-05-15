.class Lorg/samsung/chrome/browser/SbrTouchiconController$1;
.super Ljava/lang/Object;
.source "SbrTouchiconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrTouchiconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrTouchiconController;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrTouchiconController;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrTouchiconController$1;->this$0:Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController$1;->this$0:Lorg/samsung/chrome/browser/SbrTouchiconController;

    #getter for: Lorg/samsung/chrome/browser/SbrTouchiconController;->mDataUpdated:Z
    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->access$000(Lorg/samsung/chrome/browser/SbrTouchiconController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTouchiconController$1;->this$0:Lorg/samsung/chrome/browser/SbrTouchiconController;

    const/4 v1, 0x0

    #setter for: Lorg/samsung/chrome/browser/SbrTouchiconController;->mDataUpdated:Z
    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrTouchiconController;->access$002(Lorg/samsung/chrome/browser/SbrTouchiconController;Z)Z

    :cond_0
    return-void
.end method
