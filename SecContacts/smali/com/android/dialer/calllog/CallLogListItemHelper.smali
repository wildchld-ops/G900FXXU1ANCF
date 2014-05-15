.class Lcom/android/dialer/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field mCallLogListItemHelperImpl:Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

.field private final mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mCallLogListItemHelperImpl:Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

    return-void
.end method

.method private configureCallSecondaryAction(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mCallLogListItemHelperImpl:Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;->configureButton(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    return-void
.end method

.method private configurePlaySecondaryAction(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkFontSize(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/PhoneCallDetailsHelper;->checkFontSize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZI)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v2, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/PhoneCallDetailsHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetailsViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZI)V

    iget-object v0, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v1, p3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v0, p3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->callTypes:[I

    aget v0, v0, v7

    if-ne v0, v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-eqz v7, :cond_2

    invoke-direct {p0, p2, p4}, Lcom/android/dialer/calllog/CallLogListItemHelper;->configurePlaySecondaryAction(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v6, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableCallButtonInList()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setScrollState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/PhoneCallDetailsHelper;->setScrollState(I)V

    return-void
.end method
