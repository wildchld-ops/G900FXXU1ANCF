.class public Landroid/net/MultiSimMobileDataStateTracker;
.super Landroid/net/MobileDataStateTracker;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MultiSimMobileDataStateTracker$1;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiSimMobileDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

.field mSelectedSimSlot:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSelectedSimSlot:I

    return-void
.end method

.method static synthetic access$000(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method protected getPhoneService(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    return-void
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/net/MobileDataStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDependencyMet(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setDependencyMet(Z)V

    return-void
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setPolicyDataEnable(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setUserDataEnable(Z)V

    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setUserDataEnable(Z)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/MobileDataStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    return-void
.end method
