.class public Lcom/sec/android/app/sbrowser/infobar/WebAlert;
.super Ljava/lang/Object;
.source "WebAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;,
        Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;,
        Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;,
        Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInfobarIdCounter:I


# instance fields
.field private mAlertInfoType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlockedPopupListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;

.field private mBlockedPopupString:Ljava/lang/String;

.field private mBlockedPopupTextView:Landroid/widget/TextView;

.field private mCancelButtonText:Ljava/lang/String;

.field private mCenterIcon:Z

.field private mConfirmListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;

.field private mDismissed:Z

.field private mDismissedListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;

.field private mIconResourceId:Ljava/lang/Integer;

.field private mInfobarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field private mIsSamsungTypeInfobar:Z

.field private mLinkable:Z

.field protected mMessageTextView:Landroid/widget/TextView;

.field protected mMessageTitle:Ljava/lang/CharSequence;

.field private mNavigationExpire:Z

.field private mOkButtonText:Ljava/lang/String;

.field private mResourceId:I

.field private mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

.field private mTitle:Ljava/lang/String;

.field private mUrlString:Ljava/lang/String;

.field private final mWebAlertId:I

.field private mWebAlertType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

.field private mWebAlertView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->sInfobarIdCounter:I

    const-class v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;Ljava/lang/String;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIsSamsungTypeInfobar:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCenterIcon:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mLinkable:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mUrlString:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIsSamsungTypeInfobar:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCenterIcon:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mLinkable:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mConfirmListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mOkButtonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCancelButtonText:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTitle:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertId:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissedListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIsSamsungTypeInfobar:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissed:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCenterIcon:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mLinkable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mNavigationExpire:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissedListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;

    sget v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->sInfobarIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->sInfobarIdCounter:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIsSamsungTypeInfobar:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCenterIcon:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mLinkable:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIconResourceId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mAlertInfoType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTitle:Ljava/lang/CharSequence;

    iput v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissedListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mUrlString:Ljava/lang/String;

    return-object v0
.end method

.method public static createAlertInfo(ILjava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_INFO:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    const/4 v1, 0x0

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    return-object v0
.end method

.method public static createAlertInfo(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_INFO:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    return-object v0
.end method

.method public static createAlertInfoWithCloseOnTop(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_INFO:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setIconInCenter(Z)V

    return-object v0
.end method

.method public static createAlertWarning(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 6

    const v0, 0x7f0202d7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_WARNING:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    return-object v0
.end method

.method public static createAlertWarning(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->createAlertWarning(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v0

    return-object v0
.end method

.method public static createNotificationInfo(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/infobar/WebAlert;
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_INFO:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->WEBALERT_NOTIFICATION_MESSAGE:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V

    return-object v0
.end method

.method private initButton(Landroid/view/View;ILjava/lang/String;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez p3, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$3;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setIconInCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCenterIcon:Z

    return-void
.end method

.method private setIconResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mResourceId:I

    return-void
.end method


# virtual methods
.method protected createWebAlertView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    const v13, 0x7f0a02a4

    const v12, 0x7f0a02a2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/android/app/sbrowser/infobar/WebAlert$4;->$SwitchMap$com$sec$android$app$sbrowser$infobar$WebAlert$WebAlertType:[I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getWebAlertType()Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v7

    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400ba

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a02a9

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mOkButtonText:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v11}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->initButton(Landroid/view/View;ILjava/lang/String;Z)V

    const v8, 0x7f0a02a8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mCancelButtonText:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->initButton(Landroid/view/View;ILjava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400b7

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setMessageTitle(Ljava/lang/CharSequence;)V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mLinkable:Z

    if-eqz v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400b8

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a0053

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v8, Lcom/sec/android/app/sbrowser/infobar/WebAlert$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$1;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setMessageTitle(Ljava/lang/CharSequence;)V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mLinkable:Z

    if-eqz v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupString:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400b9

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->updateWebAlertBlockedPopupText()V

    const v8, 0x7f0a02a5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v8, 0x7f0c0044

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    new-instance v8, Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$2;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f02000a

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setIconResourceId(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dismissAlertInfo()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mInfobarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->hasBeenDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mInfobarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissedListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissedListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertDismissedListener;->onWebAlertDismissed(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    :cond_1
    return-void
.end method

.method protected getAlertInfoType()Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;->ALERT_WARNING:Lcom/sec/android/app/sbrowser/infobar/WebAlert$AlertInfoType;

    return-object v0
.end method

.method public getContent(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->getContent(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Landroid/content/Context;Z)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertView:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlert$InfobarView;-><init>(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertView:Landroid/view/View;

    return-object v0
.end method

.method protected getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIconResourceId()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mResourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mInfobarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-object v0
.end method

.method getInfobarId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertId:I

    return v0
.end method

.method getSbrInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-object v0
.end method

.method public getWebAlertType()Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    return-object v0
.end method

.method protected isCloseButtonShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mDismissed:Z

    return v0
.end method

.method protected isIconInCenter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNavigationExpire(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mNavigationExpire:Z

    return v0
.end method

.method public isSamsungTypeInfobar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIsSamsungTypeInfobar:Z

    return v0
.end method

.method notifyConfirmation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mConfirmListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mConfirmListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertConfirmationListener;->onConfirmButtonClicked(Lcom/sec/android/app/sbrowser/infobar/WebAlert;Z)V

    :cond_0
    return-void
.end method

.method setInfoBarContainer(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mInfobarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-void
.end method

.method public setIsSamsungTypeInfobar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mIsSamsungTypeInfobar:Z

    return-void
.end method

.method protected setMessageTitle(Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mMessageTextView:Landroid/widget/TextView;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setNavigationExpiry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mNavigationExpire:Z

    return-void
.end method

.method setSbrInfoBarContainer(Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-void
.end method

.method public setWebAlertType(Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mWebAlertType:Lcom/sec/android/app/sbrowser/infobar/WebAlert$WebAlertType;

    return-void
.end method

.method public updateWebAlertBlockedPopupText()V
    .locals 8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupString:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupString:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBlockedPopupListener:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->mBlockedPopupListener:Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/infobar/WebAlertListener$WebAlertBlockedPopupListener;->getBlockedPopupCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
