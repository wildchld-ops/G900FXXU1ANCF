.class Lorg/chromium/content/browser/ContentViewCore$1;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/VSyncManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->getVSyncListener(Lorg/chromium/content/browser/VSyncManager$Provider;)Lorg/chromium/content/browser/VSyncManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVSync(J)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mDidSignalVSyncUsingInputEvent:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$200(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ContentViewCore::onVSync ignored"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    #setter for: Lorg/chromium/content/browser/ContentViewCore;->mDidSignalVSyncUsingInputEvent:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$202(Lorg/chromium/content/browser/ContentViewCore;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/ContentViewCore;->nativeOnVSync(IJ)V
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->access$300(Lorg/chromium/content/browser/ContentViewCore;IJ)V

    invoke-static {p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->access$402(J)J

    goto :goto_0
.end method

.method public updateVSync(JJ)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$1;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    #getter for: Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v1

    move-wide v2, p1

    move-wide v4, p3

    #calls: Lorg/chromium/content/browser/ContentViewCore;->nativeUpdateVSyncParameters(IJJ)V
    invoke-static/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->access$100(Lorg/chromium/content/browser/ContentViewCore;IJJ)V

    :cond_0
    return-void
.end method
