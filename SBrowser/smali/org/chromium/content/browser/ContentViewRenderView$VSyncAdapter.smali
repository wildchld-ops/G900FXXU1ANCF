.class Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;
.super Ljava/lang/Object;
.source "ContentViewRenderView.java"

# interfaces
.implements Lorg/chromium/content/browser/VSyncManager$Provider;
.implements Lorg/chromium/content/browser/VSyncMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VSyncAdapter"
.end annotation


# static fields
.field private static final INPUT_EVENT_LAG_FROM_VSYNC_MICROSECONDS:J = 0xc80L


# instance fields
.field private mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

.field private final mVSyncListeners:Ljava/util/Set;

.field private final mVSyncMonitor:Lorg/chromium/content/browser/VSyncMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListeners:Ljava/util/Set;

    new-instance v0, Lorg/chromium/content/browser/VSyncMonitor;

    invoke-direct {v0, p1, p0}, Lorg/chromium/content/browser/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/VSyncMonitor$Listener;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncMonitor:Lorg/chromium/content/browser/VSyncMonitor;

    return-void
.end method


# virtual methods
.method public onVSync(Lorg/chromium/content/browser/VSyncMonitor;J)V
    .locals 4

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/VSyncManager$Listener;

    invoke-interface {v1, p2, p3}, Lorg/chromium/content/browser/VSyncManager$Listener;->onVSync(J)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncMonitor:Lorg/chromium/content/browser/VSyncMonitor;

    invoke-virtual {v1}, Lorg/chromium/content/browser/VSyncMonitor;->requestUpdate()V

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    const-wide/16 v1, 0xc80

    add-long/2addr p2, v1

    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncMonitor:Lorg/chromium/content/browser/VSyncMonitor;

    invoke-virtual {v2}, Lorg/chromium/content/browser/VSyncMonitor;->getVSyncPeriodInMicroseconds()J

    move-result-wide v2

    invoke-interface {v1, p2, p3, v2, v3}, Lorg/chromium/content/browser/VSyncManager$Listener;->updateVSync(JJ)V

    goto :goto_0
.end method

.method public registerVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncMonitor:Lorg/chromium/content/browser/VSyncMonitor;

    invoke-virtual {v0}, Lorg/chromium/content/browser/VSyncMonitor;->requestUpdate()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListener:Lorg/chromium/content/browser/VSyncManager$Listener;

    return-void
.end method

.method public unregisterVSyncListener(Lorg/chromium/content/browser/VSyncManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$VSyncAdapter;->mVSyncListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
