.class public Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;
.super Ljava/lang/Object;
.source "SEInfoHolder.java"


# instance fields
.field private mFavIcon:Landroid/graphics/drawable/Drawable;

.field mKeyword:Ljava/lang/String;

.field mLabel:Ljava/lang/String;

.field mtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mFavIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mtitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mKeyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFavIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mFavIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->mtitle:Ljava/lang/String;

    return-object v0
.end method
