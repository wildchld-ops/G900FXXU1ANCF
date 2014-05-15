.class public Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;
.super Ljava/lang/Object;
.source "UrlInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMax:I

.field private mPrevKeep:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mPrevKeep:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mToast:Landroid/widget/Toast;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mMax:I

    return-void
.end method

.method private showToast()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    iget v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    iget v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mPrevKeep:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mPrevKeep:I

    if-ltz v1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->showToast()V

    :cond_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->mPrevKeep:I

    if-gtz v0, :cond_2

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_2
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/utilities/UrlInputFilter;->showToast()V

    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method
