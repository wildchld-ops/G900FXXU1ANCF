.class public Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;
.super Ljava/lang/Object;
.source "CallLogListItemHelperImpl.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public configureButton(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4140

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    iget-object v2, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    return-void

    :sswitch_0
    iget-object v2, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v3, 0x7f020168

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/dialer/impl/CallLogListItemHelperImpl;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0275

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/android/dialer/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v3, 0x7f02015e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_0
    .end sparse-switch
.end method

.method public setListItemInfo(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 0

    return-void
.end method
