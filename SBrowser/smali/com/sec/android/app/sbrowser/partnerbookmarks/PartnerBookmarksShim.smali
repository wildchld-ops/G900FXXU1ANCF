.class public Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;
.super Ljava/lang/Object;
.source "PartnerBookmarksShim.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PartnerBookmarksShim"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativePartnerBookmarksShim:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mNativePartnerBookmarksShim:I

    return-void
.end method

.method private AddPartnerBookmark(Ljava/lang/String;Ljava/lang/String;ZJ[B[B)J
    .locals 9

    iget v1, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mNativePartnerBookmarksShim:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->nativeAddPartnerBookmark(ILjava/lang/String;Ljava/lang/String;ZJ[B[B)J

    move-result-wide v0

    return-wide v0
.end method

.method private native nativeAddPartnerBookmark(ILjava/lang/String;Ljava/lang/String;ZJ[B[B)J
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit()I
.end method

.method private native nativePartnerBookmarksCreationComplete(I)V
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->WaitForCompletion()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mNativePartnerBookmarksShim:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mNativePartnerBookmarksShim:I

    return-void
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->nativeInit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mNativePartnerBookmarksShim:I

    return-void
.end method

.method public KickOffReading()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->mNativePartnerBookmarksShim:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->nativePartnerBookmarksCreationComplete(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/partnerbookmarks/PartnerBookmarksShim;->WaitForCompletion()V

    goto :goto_0
.end method

.method public WaitForCompletion()V
    .locals 0

    return-void
.end method
