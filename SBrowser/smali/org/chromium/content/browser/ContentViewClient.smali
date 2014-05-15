.class public Lorg/chromium/content/browser/ContentViewClient;
.super Ljava/lang/Object;
.source "ContentViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentViewClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectActionModeCallback(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)Landroid/view/ActionMode$Callback;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/SelectActionModeCallback;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/content/browser/SelectActionModeCallback;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)V

    return-object v0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 0

    return-void
.end method

.method public onContextualActionBarHidden()V
    .locals 0

    return-void
.end method

.method public onContextualActionBarShown()V
    .locals 0

    return-void
.end method

.method public onExternalVideoSurfaceRequested(I)V
    .locals 0

    return-void
.end method

.method public onGeometryChanged(IFFFF)V
    .locals 0

    return-void
.end method

.method public onImeEvent()V
    .locals 0

    return-void
.end method

.method public onImeStateChangeRequested(Z)V
    .locals 0

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onScaleChanged(FF)V
    .locals 0

    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ContentViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ContentViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No application can handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTabCrash()V
    .locals 0

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    const/16 v2, 0x57

    if-eq v0, v2, :cond_0

    const/16 v2, 0x58

    if-eq v0, v2, :cond_0

    const/16 v2, 0x55

    if-eq v0, v2, :cond_0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    const/16 v2, 0x81

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x82

    if-eq v0, v2, :cond_0

    const/16 v2, 0x59

    if-eq v0, v2, :cond_0

    const/16 v2, 0x56

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe5

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x33

    if-eq v0, v2, :cond_0

    const/16 v2, 0x86

    if-eq v0, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x34

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x32

    if-eq v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldOverrideScroll(FFFF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
