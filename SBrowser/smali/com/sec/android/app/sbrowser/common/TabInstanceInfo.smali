.class public Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;
.super Ljava/lang/Object;
.source "TabInstanceInfo.java"


# instance fields
.field mIsInCognito:Z

.field mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field mtabId:I


# direct methods
.method public constructor <init>(IZLcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mtabId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mIsInCognito:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method


# virtual methods
.method public getTabId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mtabId:I

    return v0
.end method

.method public getTabInstance()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method public isIsInCognito()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mIsInCognito:Z

    return v0
.end method

.method public setIsIncognito(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mIsInCognito:Z

    return-void
.end method

.method public setTabID(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->mtabId:I

    return-void
.end method
