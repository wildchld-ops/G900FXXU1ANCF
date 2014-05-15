.class public Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;
.super Ljava/lang/Object;
.source "SBrowserInfoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HELP_URL:Ljava/lang/String; = "http://www.google.com/support/chrome/bin/answer.py?answer=95617"


# instance fields
.field private mCertDescription:Ljava/lang/String;

.field private mCertificateViewer:Landroid/widget/TextView;

.field mChromeView:Lorg/chromium/content/browser/ContentView;

.field private final mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mDescriptionFlag:Z

.field private mMoreInfoLink:Landroid/widget/TextView;

.field private mPageInfoContainer:Landroid/widget/LinearLayout;

.field private mPageInfoDialog:Landroid/app/Dialog;

.field private mlaytPadding:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lorg/chromium/content/browser/ContentView;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mDescriptionFlag:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mlaytPadding:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mlaytPadding:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mlaytPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private addDivider()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addMoreInfoLink()V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mMoreInfoLink:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mMoreInfoLink:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\'#\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mMoreInfoLink:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mlaytPadding:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mlaytPadding:I

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSection(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040081

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a020d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v3, 0x7f0a020e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v3, 0x7f0a020f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mDescriptionFlag:Z

    if-nez v3, :cond_4

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertDescription:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mDescriptionFlag:Z

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setCertificateViewer(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mlaytPadding:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private show()V
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoDialog:Landroid/app/Dialog;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->nativeGetCertChain(Lorg/chromium/content/browser/ContentView;)[[B

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertDescription:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showWebCertificateChain(Landroid/content/Context;[[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method native nativeGetCertChain(Lorg/chromium/content/browser/ContentView;)[[B
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mPageInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertificateViewer:Landroid/widget/TextView;

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->nativeGetCertChain(Lorg/chromium/content/browser/ContentView;)[[B

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mCertDescription:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showWebCertificateChain(Landroid/content/Context;[[BLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mMoreInfoLink:Landroid/widget/TextView;

    if-ne v3, p1, :cond_0

    :try_start_0
    const-string v3, "http://www.google.com/support/chrome/bin/answer.py?answer=95617"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "create_new_tab"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserInfoViewer;->mContext:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SBrowserInfoViewer"

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
