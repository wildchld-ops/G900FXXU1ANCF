.class public Lcom/android/mms/ui/BackgroundSelectorAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "BackgroundSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const v3, 0x7f0c00a6

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "com.sec.android.gallery3d"

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.cooliris.media"

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.gallery3d"

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_0
    const-string v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    const v3, 0x7f0c00a7

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/mms/ui/BackgroundSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    return-object v0
.end method
