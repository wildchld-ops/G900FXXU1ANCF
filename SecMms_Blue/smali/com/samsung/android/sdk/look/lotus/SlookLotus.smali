.class public Lcom/samsung/android/sdk/look/lotus/SlookLotus;
.super Ljava/lang/Object;
.source "SlookLotus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;,
        Lcom/samsung/android/sdk/look/lotus/SlookLotus$ListenerAction;,
        Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlookLotus"


# instance fields
.field private bSupported:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

.field private mSlookLotusActionListener:Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    iput-object v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mSlookLotusActionListener:Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;

    const-string v0, "SlookLotus"

    const-string v1, "SlookLotus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->isSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "glancecardservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glancecard/GlanceCardManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/look/lotus/SlookLotus;)Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mSlookLotusActionListener:Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;

    return-object v0
.end method

.method private isSupport()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.feature.lotus"

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public addAllLeaves(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;",
            ">;)V"
        }
    .end annotation

    const-string v3, "SlookLotus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAllLeaves : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SlookLotus"

    const-string v4, "This is not supported in device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "mLotus is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->getCardObject()Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->addAllCard(Ljava/util/List;)V

    goto :goto_0
.end method

.method public addLeaf(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;)V
    .locals 2

    const-string v0, "SlookLotus"

    const-string v1, "addLeaf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->getCardObject()Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glancecard/GlanceCardManager;->addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    const-string v0, "SlookLotus"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->close()V

    goto :goto_0
.end method

.method public getLeavesIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SlookLotus"

    const-string v1, "getLeavesIds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getAllCardIds()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    const-string v0, "SlookLotus"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->hide()V

    goto :goto_0
.end method

.method public removeAllLeaves()V
    .locals 2

    const-string v0, "SlookLotus"

    const-string v1, "removeAllLeaves"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->removeAllCard()Z

    goto :goto_0
.end method

.method public removeGroup(I)V
    .locals 3

    const-string v0, "SlookLotus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeGroup - groupId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glancecard/GlanceCardManager;->removeGroup(I)Z

    goto :goto_0
.end method

.method public removeLeaf(I)V
    .locals 3

    const-string v0, "SlookLotus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLeaf - LeafId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glancecard/GlanceCardManager;->removeCard(I)Z

    goto :goto_0
.end method

.method public setSlookLotusActionListener(Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mSlookLotusActionListener:Lcom/samsung/android/sdk/look/lotus/SlookLotus$ISlookLotusActionListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    new-instance v1, Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$1;-><init>(Lcom/samsung/android/sdk/look/lotus/SlookLotus;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glancecard/GlanceCardManager;->setGlanceCardChangedListener(Landroid/os/IBinder;)V

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "SlookLotus"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->show()V

    goto :goto_0
.end method

.method public updateLeaf(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;)V
    .locals 3

    const-string v0, "SlookLotus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLeaf - LeafId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->mCardInfo:Lcom/samsung/android/glancecard/GlanceCardInfo;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->access$000(Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;)Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SlookLotus"

    const-string v1, "This is not supported in device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mLotus is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->getCardObject()Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glancecard/GlanceCardManager;->updateCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)Z

    goto :goto_0
.end method

.method public updateLeaves(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;",
            ">;)V"
        }
    .end annotation

    const-string v3, "SlookLotus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAllLeaves : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->bSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SlookLotus"

    const-string v4, "This is not supported in device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "mLotus is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/lotus/SlookLotus$LeafInfo;->getCardObject()Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/look/lotus/SlookLotus;->mLotus:Lcom/samsung/android/glancecard/GlanceCardManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glancecard/GlanceCardManager;->updateCards(Ljava/util/List;)V

    goto :goto_0
.end method
