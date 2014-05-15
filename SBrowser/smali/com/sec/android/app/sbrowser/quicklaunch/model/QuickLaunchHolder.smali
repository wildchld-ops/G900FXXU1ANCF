.class public Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;
.super Ljava/lang/Object;
.source "QuickLaunchHolder.java"


# instance fields
.field private mFavIcon:[B

.field private mIsMostVisited:Z

.field private mLabel:Ljava/lang/String;

.field private mSearchUrl:Ljava/lang/String;

.field private mtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mFavIcon:[B

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mtitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mSearchUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mIsMostVisited:Z

    return-void
.end method


# virtual methods
.method public getFavIcon()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mFavIcon:[B

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mSearchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mtitle:Ljava/lang/String;

    return-object v0
.end method

.method public ismIsMostVisited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mIsMostVisited:Z

    return v0
.end method

.method public setFavIcon([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mFavIcon:[B

    return-void
.end method

.method public setmIsMostVisited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->mIsMostVisited:Z

    return-void
.end method
