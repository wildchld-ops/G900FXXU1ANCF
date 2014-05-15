.class public Lorg/chromium/content/browser/NavigationEntry;
.super Ljava/lang/Object;
.source "NavigationEntry.java"


# instance fields
.field private mFavicon:Landroid/graphics/Bitmap;

.field private final mIndex:I

.field private final mOriginalUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mVirtualUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content/browser/NavigationEntry;->mIndex:I

    iput-object p2, p0, Lorg/chromium/content/browser/NavigationEntry;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/content/browser/NavigationEntry;->mVirtualUrl:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/content/browser/NavigationEntry;->mOriginalUrl:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/content/browser/NavigationEntry;->mTitle:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/content/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/NavigationEntry;->mIndex:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationEntry;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationEntry;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationEntry;->mVirtualUrl:Ljava/lang/String;

    return-object v0
.end method

.method public updateFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/NavigationEntry;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method
