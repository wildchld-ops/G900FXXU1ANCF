.class public Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;
.super Ljava/lang/Object;
.source "SBrowserCertificateViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$SecurityLevel;
    }
.end annotation


# instance fields
.field private mCertDescription:Ljava/lang/String;

.field private mCertificateTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCertificateView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPadding:I

.field private final mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mWebCertificateFactory:Ljava/security/cert/CertificateFactory;

.field msslCertificate:Landroid/net/http/SslCertificate;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateTitle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateTitle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    check-cast p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addCertificateValue(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3

    const v1, 0x7f040091

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addItemInCertificate(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addWebTitleText(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addCertificateValue(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addSectionTitle(Landroid/widget/LinearLayout;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addWebTitleText(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method private addWebCerificate([B)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mWebCertificateFactory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_0

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mWebCertificateFactory:Ljava/security/cert/CertificateFactory;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mWebCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addWebCertificateDetails(Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SBrowserCertificateViewer"

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addWebCertificateDetails(Ljava/security/cert/Certificate;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v1, Landroid/net/http/SslCertificate;

    invoke-direct {v1, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->msslCertificate:Landroid/net/http/SslCertificate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateTitle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->msslCertificate:Landroid/net/http/SslCertificate;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showSSLCertificate()V

    return-void
.end method

.method private addWebTitleText(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mPadding:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static convertSerialNo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x2

    :goto_1
    if-gt v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private createSslCertificateDialog(Landroid/net/http/SslCertificate;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 13

    const v12, 0x7f0a0251

    const v11, 0x7f040090

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v9, 0x7f040025

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v9, 0x7f0a0104

    invoke-virtual {v1, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v9, 0x7f0a0105

    invoke-virtual {v1, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    iget v9, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    iget v9, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    :cond_0
    const v5, 0x7f02009b

    invoke-virtual {v4, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    const v10, 0x1030042

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v9, 0x7f0c01a9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0c01a8

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    return-object v9

    :cond_1
    iget v9, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->securityValue:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    const v5, 0x7f02009b

    invoke-virtual {v4, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    const v10, 0x1030044

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertDescription:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v5, 0x7f02009a

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertDescription:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v9}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showCertificate(Landroid/content/Context;[B)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showWebCertificate([B)V

    return-void
.end method

.method private showCertificateChain([[B)V
    .locals 8

    const/4 v2, 0x0

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    aget-object v5, p1, v2

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addWebCerificate([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateTitle:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v1, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private showCertificateDialog(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSSLCertificate()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->msslCertificate:Landroid/net/http/SslCertificate;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->createSslCertificateDialog(Landroid/net/http/SslCertificate;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c007c

    new-instance v3, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$2;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$1;-><init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showWebCertificate([B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->addWebCerificate([B)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showCertificateDialog(Landroid/view/View;)V

    return-void
.end method

.method public static showWebCertificateChain(Landroid/content/Context;[[BLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showCertificateChain([[B)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mCertificateView:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-ne v0, p3, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
