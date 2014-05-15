.class Lorg/chromium/chrome/browser/WebsiteSettingsPopup;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final HELP_URL:Ljava/lang/String; = "http://www.google.com/support/chrome/bin/answer.py?answer=95617"


# instance fields
.field private mCertificateViewer:Landroid/widget/TextView;

.field private final mContainer:Landroid/widget/LinearLayout;

.field private final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private mLinkUrl:Ljava/lang/String;

.field private mMoreInfoLink:Landroid/widget/TextView;

.field private final mPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;

    invoke-direct {v1, p0, p3}, Lorg/chromium/chrome/browser/WebsiteSettingsPopup$1;-><init>(Lorg/chromium/chrome/browser/WebsiteSettingsPopup;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mPadding:I

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/WebsiteSettingsPopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->nativeDestroy(I)V

    return-void
.end method

.method private addDivider()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x4000

    iget-object v3, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addMoreInfoLink(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "http://www.google.com/support/chrome/bin/answer.py?answer=95617"

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->addUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSection(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/16 v7, 0x8

    iget-object v4, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400bb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a02aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v4, 0x7f0a02ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v4, 0x7f0a02ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mMoreInfoLink:Landroid/widget/TextView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mLinkUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mMoreInfoLink:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\'#\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mMoreInfoLink:Landroid/widget/TextView;

    iget v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mPadding:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static create(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;I)Lorg/chromium/chrome/browser/WebsiteSettingsPopup;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;I)V

    return-object v0
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetCertificateChain(Lorg/chromium/content/browser/ContentViewCore;)[[B
.end method

.method private setCertificateViewer(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v3, 0x0

    sget-boolean v0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\'#\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    iget v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mPadding:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private show()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mCertificateViewer:Landroid/widget/TextView;

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->nativeGetCertificateChain(Lorg/chromium/content/browser/ContentViewCore;)[[B

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/CertificateViewer;->showCertificateChain(Landroid/content/Context;[[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mMoreInfoLink:Landroid/widget/TextView;

    if-ne v2, p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mLinkUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "create_new_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/WebsiteSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
