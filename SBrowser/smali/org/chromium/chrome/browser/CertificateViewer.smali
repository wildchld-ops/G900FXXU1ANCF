.class Lorg/chromium/chrome/browser/CertificateViewer;
.super Ljava/lang/Object;
.source "CertificateViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final X_509:Ljava/lang/String; = "X.509"


# instance fields
.field private mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private final mContext:Landroid/content/Context;

.field private final mPadding:I

.field private final mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    return-void
.end method

.method private addCertificate([B)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    if-nez v2, :cond_0

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    const-string v2, "SHA-256"

    invoke-static {p1, v2}, Lorg/chromium/chrome/browser/CertificateViewer;->getDigest([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "SHA-1"

    invoke-static {p1, v3}, Lorg/chromium/chrome/browser/CertificateViewer;->getDigest([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/CertificateViewer;->addCertificateDetails(Ljava/security/cert/Certificate;[B[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CertViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing certificate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addCertificateDetails(Ljava/security/cert/Certificate;[B[B)V
    .locals 8

    const/16 v7, 0x20

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    new-instance v2, Landroid/net/http/SslCertificate;

    invoke-direct {v2, v3}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iget-object v4, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertIssuedToText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoCommonNameText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoOrganizationText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoOrganizationUnitText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoSerialNumberText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    const/16 v6, 0x3a

    invoke-static {v5, v6}, Lorg/chromium/chrome/browser/CertificateViewer;->formatBytes([BC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertIssuedByText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoCommonNameText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoOrganizationText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertInfoOrganizationUnitText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertValidityText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertIssuedOnText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertExpiresOnText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertFingerprintsText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertSHA256FingerprintText()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v7}, Lorg/chromium/chrome/browser/CertificateViewer;->formatBytes([BC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/CertificateViewer;->nativeGetCertSHA1FingerprintText()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v7}, Lorg/chromium/chrome/browser/CertificateViewer;->formatBytes([BC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/CertificateViewer;->addLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    invoke-direct {p0, p1, p3}, Lorg/chromium/chrome/browser/CertificateViewer;->addValue(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/CertificateViewer;->addLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method private addValue(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    const/4 v2, 0x0

    iget v3, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    iget v4, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static formatBytes([BC)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDigest([BLjava/lang/String;)[B
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native nativeGetCertExpiresOnText()Ljava/lang/String;
.end method

.method private static native nativeGetCertFingerprintsText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoCommonNameText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoOrganizationText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoOrganizationUnitText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoSerialNumberText()Ljava/lang/String;
.end method

.method private static native nativeGetCertIssuedByText()Ljava/lang/String;
.end method

.method private static native nativeGetCertIssuedOnText()Ljava/lang/String;
.end method

.method private static native nativeGetCertIssuedToText()Ljava/lang/String;
.end method

.method private static native nativeGetCertSHA1FingerprintText()Ljava/lang/String;
.end method

.method private static native nativeGetCertSHA256FingerprintText()Ljava/lang/String;
.end method

.method private static native nativeGetCertValidityText()Ljava/lang/String;
.end method

.method public static showCertificateChain(Landroid/content/Context;[[B)V
    .locals 1

    new-instance v0, Lorg/chromium/chrome/browser/CertificateViewer;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/CertificateViewer;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/CertificateViewer;->showCertificateChain([[B)V

    return-void
.end method

.method private showCertificateChain([[B)V
    .locals 8

    const/4 v3, 0x0

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    aget-object v5, p1, v3

    invoke-direct {p0, v5}, Lorg/chromium/chrome/browser/CertificateViewer;->addCertificate([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    const v6, 0x7f040027

    iget-object v7, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mTitles:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v5, 0x7f040026

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/CertificateViewer;->showDialogForView(Landroid/view/View;)V

    return-void
.end method

.method private showDialogForView(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0086

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    iget-object v1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
