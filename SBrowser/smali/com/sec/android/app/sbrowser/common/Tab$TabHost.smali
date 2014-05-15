.class public interface abstract Lcom/sec/android/app/sbrowser/common/Tab$TabHost;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabHost"
.end annotation


# virtual methods
.method public abstract closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
.end method

.method public abstract closeTabFromTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
.end method

.method public abstract createTabWithNativeContents(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract openNewTab(Ljava/lang/String;IZ)V
.end method

.method public abstract overrideScroll(FFFF)Z
.end method

.method public abstract registerForContextMenu(Landroid/view/View;)V
.end method

.method public abstract supportIntentFilters()Z
.end method

.method public abstract unregisterForContextMenu(Landroid/view/View;)V
.end method
