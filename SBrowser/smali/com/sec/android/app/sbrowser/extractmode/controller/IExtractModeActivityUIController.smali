.class public interface abstract Lcom/sec/android/app/sbrowser/extractmode/controller/IExtractModeActivityUIController;
.super Ljava/lang/Object;
.source "IExtractModeActivityUIController.java"


# virtual methods
.method public abstract copyImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract copyLinkAddress(Ljava/lang/String;)V
.end method

.method public abstract copyLinkText(Ljava/lang/String;)V
.end method

.method public abstract decodeImage(Ljava/lang/String;)V
.end method

.method public abstract getCurrentSBrowserMainContextId()Ljava/lang/String;
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getReaderFontValue()I
.end method

.method public abstract getReaderLastUrl()Ljava/lang/String;
.end method

.method public abstract getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
.end method

.method public abstract isForExtractMode()Z
.end method

.method public abstract isFromReadingList()Z
.end method

.method public abstract makeDayMode()V
.end method

.method public abstract makeNightMode()V
.end method

.method public abstract openDialPad(Ljava/lang/String;)V
.end method

.method public abstract prepareShareSummary()V
.end method

.method public abstract prepareShareUrl()V
.end method

.method public abstract queryCurrentActionBarHeight()I
.end method

.method public abstract requestTranslate()V
.end method

.method public abstract saveImage(Ljava/lang/String;)V
.end method

.method public abstract saveLink(Ljava/lang/String;)V
.end method

.method public abstract saveToClipboard(Ljava/lang/String;)V
.end method

.method public abstract selectLastTouchText()V
.end method

.method public abstract sendUrlForContextSearch()V
.end method

.method public abstract setFindToolBar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V
.end method

.method public abstract setFontAndScrollPosition(ILjava/lang/String;I)V
.end method

.method public abstract setSbrTabBrige()V
.end method
