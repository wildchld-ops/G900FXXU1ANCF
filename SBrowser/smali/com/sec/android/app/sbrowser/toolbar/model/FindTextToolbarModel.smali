.class public Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;
.super Lorg/samsung/content/sbrowser/SbrFindOnPageDelegate;
.source "FindTextToolbarModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;


# instance fields
.field private mContentview:Lorg/chromium/content/browser/ContentView;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mIFindTextToolbarInterface:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;

.field public mReaderview:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrFindOnPageDelegate;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mIFindTextToolbarInterface:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;

    return-void
.end method


# virtual methods
.method public clearFindResults()V
    .locals 2

    sget-object v0, Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;->CLEAR_SELECTION:Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mReaderview:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->stopFinding(Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->stopFinding(Lorg/samsung/content/sbrowser/SbrFindOnPage$FindSelectionAction;)V

    goto :goto_0
.end method

.method public fetchFindResults(Ljava/lang/String;ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mReaderview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/Tab;->StartFinding(Ljava/lang/String;ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->startFinding(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onFindResultAvailable(ILandroid/graphics/Rect;IZ)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/samsung/content/sbrowser/SbrFindOnPageDelegate;->onFindResultAvailable(ILandroid/graphics/Rect;IZ)V

    new-instance v0, Lorg/chromium/chrome/browser/FindNotificationDetails;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/FindNotificationDetails;-><init>(ILandroid/graphics/Rect;IZ)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->onFindResultReceived(Lorg/chromium/chrome/browser/FindNotificationDetails;)V

    return-void
.end method

.method public onFindResultReceived(Lorg/chromium/chrome/browser/FindNotificationDetails;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mIFindTextToolbarInterface:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;->onFindResultReceived(Lorg/chromium/chrome/browser/FindNotificationDetails;)V

    return-void
.end method

.method public setReaderView(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mReaderview:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mContentview:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mContentview:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getFindOnPage()Lorg/samsung/content/sbrowser/SbrFindOnPage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/samsung/content/sbrowser/SbrFindOnPage;->setFindOnPageDelegate(Lorg/samsung/content/sbrowser/SbrFindOnPageDelegate;)V

    return-void
.end method

.method public setView(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mReaderview:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/Tab;->setFindResultReceivedListener(Lcom/sec/android/app/sbrowser/common/Tab$FindResultReceivedListener;)V

    :cond_0
    return-void
.end method
