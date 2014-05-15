.class Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;
.super Landroid/database/DataSetObserver;
.source "XLargeTabButtonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method
