.class public Lorg/samsung/content/sbrowser/SbrContentViewRenderView;
.super Ljava/lang/Object;
.source "SbrContentViewRenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SbrContentViewRenderView"


# instance fields
.field private mCurrentContentView:Lorg/chromium/content/browser/ContentView;

.field private mIsSurfaceReady:Z

.field private mSurfaceChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mIsSurfaceReady:Z

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    return-void
.end method

.method private notifySurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mIsSurfaceReady:Z

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doNotify()V

    :cond_0
    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;

    invoke-interface {v1, p1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifySurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mIsSurfaceReady:Z

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;

    invoke-interface {v1, p1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentContentView()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method public isSurfaceReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mIsSurfaceReady:Z

    return v0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->notifySurfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->notifySurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->notifySurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    return-void
.end method

.method public setSurfaceChangeListener(Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSurfaceChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSynchronizationObject(Lorg/samsung/content/sbrowser/SynchronizeObj;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    return-void
.end method
