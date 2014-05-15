.class public Lcom/kikin/BarIncomingHandler;
.super Landroid/os/Handler;
.source "BarIncomingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/BarIncomingHandler$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/kikin/BarIncomingHandler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4, p1}, Lcom/kikin/BarIncomingHandler$Callback;->onBarMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4}, Lcom/kikin/BarIncomingHandler$Callback;->onBarHidden()V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    const-string v5, "com.kikin.oldQuery"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.kikin.newQuery"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/kikin/BarIncomingHandler$Callback;->onQueryRewritten(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    const-string v5, "com.kikin.query"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/kikin/BarIncomingHandler$Callback;->onQueryChanged(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4, v0}, Lcom/kikin/BarIncomingHandler$Callback;->onSaveKikinBarState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4}, Lcom/kikin/BarIncomingHandler$Callback;->onBarIsHidding()V

    goto :goto_0

    :pswitch_6
    const-string v4, "com.kikin.bar.rect"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const-string v4, "com.kikin.bar.gravity"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4, v2, v1}, Lcom/kikin/BarIncomingHandler$Callback;->onBarRectChanged(Landroid/graphics/Rect;I)V

    goto :goto_0

    :pswitch_7
    const-string v4, "com.kikin.bar.visibility"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4, v3}, Lcom/kikin/BarIncomingHandler$Callback;->onBarVisibilityChanged(I)V

    goto :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4}, Lcom/kikin/BarIncomingHandler$Callback;->onBarAnimationFinished()V

    goto :goto_0

    :pswitch_9
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    const-string v5, "com.kikin.force.disabled"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/kikin/BarIncomingHandler$Callback;->onKikinDisabled(Z)V

    goto :goto_0

    :pswitch_a
    iget-object v4, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    invoke-interface {v4}, Lcom/kikin/BarIncomingHandler$Callback;->onUserAgreementNotAccepted()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public setCallback(Lcom/kikin/BarIncomingHandler$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/BarIncomingHandler;->callback:Lcom/kikin/BarIncomingHandler$Callback;

    return-void
.end method
