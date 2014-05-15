.class public interface abstract Lcom/sec/android/app/sbrowser/reader/ui/ReaderUI;
.super Ljava/lang/Object;
.source "ReaderUI.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/UI;


# virtual methods
.method public abstract attachContentViewToRenderer()V
.end method

.method public abstract dismissProgressDialog()V
.end method

.method public abstract dismissReaderProgressDialog()V
.end method

.method public abstract displayReaderProgressDialog()V
.end method

.method public abstract getContentView()Lorg/chromium/content/browser/ContentView;
.end method

.method public abstract getReaderDefaultFont()I
.end method

.method public abstract getReaderToolBarHeightDimension()I
.end method

.method public abstract inflateAndInitializeUi()V
.end method

.method public abstract initializeContentView(Landroid/app/Activity;ILorg/chromium/ui/WindowAndroid;)V
.end method

.method public abstract initializeReaderFont()V
.end method

.method public abstract initializeUI()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract requestWindowFeature()V
.end method

.method public abstract setFindOnPageToolbarDisplay(Ljava/lang/String;)V
.end method

.method public abstract setFullScreen()V
.end method

.method public abstract setListnerOnProgressDialog()V
.end method

.method public abstract setReader(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)V
.end method

.method public abstract setReaderFont()V
.end method

.method public abstract setSavedPageToast()V
.end method

.method public abstract setToastForAlreadySavedImage()V
.end method

.method public abstract setToastForMemoryFull()V
.end method

.method public abstract setToastForSavedImage()V
.end method

.method public abstract showControlsForContextualMenuBar()V
.end method

.method public abstract updateTopControls()V
.end method
