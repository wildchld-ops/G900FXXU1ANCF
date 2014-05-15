.class public Lcom/android/dialer/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field public static NETWORK_RESTRICTED_NUMBER:Ljava/lang/String;

.field public static PAYPHONE_NUMBER:Ljava/lang/String;

.field public static PRIVATE_NUMBER:Ljava/lang/String;

.field public static UNKNOWN_NUMBER:Ljava/lang/String;


# instance fields
.field private dm:Landroid/util/DisplayMetrics;

.field private fontSize:I

.field private final mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    new-instance v0, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    invoke-direct {v0}, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    const-string v0, "-1"

    sput-object v0, Lcom/android/dialer/PhoneCallDetailsHelper;->UNKNOWN_NUMBER:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    const-string v0, "-2"

    sput-object v0, Lcom/android/dialer/PhoneCallDetailsHelper;->PRIVATE_NUMBER:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    const-string v0, "-3"

    sput-object v0, Lcom/android/dialer/PhoneCallDetailsHelper;->PAYPHONE_NUMBER:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    const-string v0, "P"

    sput-object v0, Lcom/android/dialer/PhoneCallDetailsHelper;->NETWORK_RESTRICTED_NUMBER:Ljava/lang/String;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->dm:Landroid/util/DisplayMetrics;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/PhoneCallDetailsHelper;->checkFontSize(Landroid/content/Context;)V

    return-void
.end method

.method private adjustListItemLayoutBy7FontSize(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetailsViews;)V
    .locals 4

    const/16 v3, 0x140

    const-string v0, "PhoneCallDetailsHelper"

    const-string v1, "adjustListItemLayoutBy7FontSize"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->fontSize:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v3, :cond_0

    const-string v0, "PhoneCallDetailsHelper"

    const-string v1, "adjustListItemLayoutBy7FontSize CHANGE HUGE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const v1, 0x7f10006c

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "PhoneCallDetailsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustListItemLayoutBy7FontSize HUGE, dm.densityDpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v3, :cond_0

    const-string v0, "PhoneCallDetailsHelper"

    const-string v1, "adjustListItemLayoutBy7FontSize CHANGE HUGE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const v1, 0x7f10006f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkFontSize(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->fontSize:I

    return-void
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetailsViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZI)V
    .locals 8

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneCallDetailsHelperImpl:Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;

    iget-object v6, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v7, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/dialer/impl/PhoneCallDetailsHelperImpl;->setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetailsViews;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZILcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/PhoneCallDetailsHelper;->adjustListItemLayoutBy7FontSize(Landroid/content/Context;Lcom/android/dialer/PhoneCallDetailsViews;)V

    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->setScrollState(I)V

    return-void
.end method
