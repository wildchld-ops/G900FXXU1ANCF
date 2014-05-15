.class public Lcom/samsung/dialer/widget/CallLogListSweepActionListener;
.super Ljava/lang/Object;
.source "CallLogListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/dialer/calllog/CallLogAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwListView;",
            "Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iput-object p3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    iput-object p4, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3

    const-string v0, "CallLogListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "CallLogListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flickDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    invoke-virtual {v2}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    invoke-virtual {v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    const v3, 0x7f0e0402

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v3, "0009"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CallLogListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from Start Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v5, p2, :cond_5

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    const-string v3, "0010"

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/dialer/util/MessageUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 5

    const-string v2, "CallLogListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0800c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v2, "CallLogListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() mPhoneNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0220

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0222

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    sget-object v3, Lcom/android/dialer/PhoneCallDetailsHelper;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    sget-object v3, Lcom/android/dialer/PhoneCallDetailsHelper;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    sget-object v3, Lcom/android/dialer/PhoneCallDetailsHelper;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    const-string v3, "-5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/dialer/util/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->setHasPhoneNumber(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mSweepActionBarCallBack:Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/widget/CallLogListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_0
.end method

.method public setImsLowSignalHelper(Lcom/samsung/contacts/util/ImsLowSignalHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/widget/CallLogListSweepActionListener;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;

    return-void
.end method
