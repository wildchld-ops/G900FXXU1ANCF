.class public Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;
.super Ljava/lang/Object;
.source "TabDragElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;
    }
.end annotation


# instance fields
.field private mContextId:Ljava/lang/String;

.field private mId:I

.field private mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

.field private mIsIncognito:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    iput p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mIsIncognito:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mContextId:Ljava/lang/String;

    return-void
.end method

.method public static getOriginalElement(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v7, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    if-ne v3, v5, :cond_0

    :goto_0
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-direct {v7, v2, v5, v6}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;-><init>(IZLjava/lang/String;)V

    move-object v5, v7

    :goto_1
    return-object v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public encodeElement()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mIsIncognito:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mContextId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getContextString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mContextId:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoredInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    #getter for: Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->mPreviousSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->access$000(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;)Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mId:I

    return v0
.end method

.method public hasRestorableInfoBarData()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mIsIncognito:Z

    return v0
.end method

.method public setInfoBarData(Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;-><init>(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->mInfoBarData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->setPreviousSbrInfoBarContainer(Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tab Drag & Drop"

    return-object v0
.end method
