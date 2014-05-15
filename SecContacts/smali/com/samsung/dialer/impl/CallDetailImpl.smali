.class public Lcom/samsung/dialer/impl/CallDetailImpl;
.super Ljava/lang/Object;
.source "CallDetailImpl.java"


# instance fields
.field private btnVCall:Landroid/widget/Button;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field public final mCustomButtonsListener:Landroid/view/View$OnClickListener;

.field private mRcsDetailViewSharedFile:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

.field private sepCall:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/dialer/impl/CallDetailImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/impl/CallDetailImpl$1;-><init>(Lcom/samsung/dialer/impl/CallDetailImpl;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mCustomButtonsListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mContainerView:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

    invoke-direct {v0, p1}, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mRcsDetailViewSharedFile:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/impl/CallDetailImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setCustomDetailHistoryInfo(Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Landroid/widget/RelativeLayout;)V
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    const/16 v1, 0x44c

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->sharedFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    iget-object v0, v0, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->sharedFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mRcsDetailViewSharedFile:Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;

    iget-object v1, p1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->extra:Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;

    iget-object v1, v1, Lcom/samsung/dialer/impl/PhoneCallDetailsExtraImpl;->sharedFilePath:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/samsung/contacts/model/rcs/RcsDetailViewSharedFile;->SetDataAndAction(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCustomDetailInfo([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Landroid/widget/RelativeLayout;Lcom/android/dialer/calllog/PhoneNumberHelper;)V
    .locals 0

    return-void
.end method

.method public setCustomListener(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mContainerView:Landroid/widget/LinearLayout;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->btnVCall:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->btnVCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->btnVCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mCustomButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->btnVCall:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->btnVCall:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->mContainerView:Landroid/widget/LinearLayout;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->sepCall:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/dialer/impl/CallDetailImpl;->sepCall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
