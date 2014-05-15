.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrInfoBarCreationClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SbrInfoBarCreationClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    return-void
.end method


# virtual methods
.method public showAutoLoginInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;
    .locals 9

    new-instance v2, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;-><init>(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$900(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Landroid/app/Activity;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;-><init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "InfoBarContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "infoBar.hasAccount(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->hasAccount()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$AutoLoginInfoBar;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;->setInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    goto :goto_0
.end method

.method public bridge synthetic showAutoLoginInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->showAutoLoginInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

    move-result-object v0

    return-object v0
.end method

.method public showConfirmInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;
    .locals 7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    new-instance v0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
    invoke-static {v6, v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1602(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    const-string v0, "InfoBarContainer"

    const-string v1, "native infobar called................"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1600(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;->getInfoBar()Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/sec/android/app/sbrowser/infobar/WebAlert;->setIsSamsungTypeInfobar(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1600(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;->getInfoBar()Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->addInfoBar(Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->nativeConfirmInfoBar:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$1600(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeConfirmInfoBar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic showConfirmInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lorg/samsung/chrome/browser/SbrInfoBarContainer$SbrNativeInfoBar;
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$SbrInfoBarCreationClientImpl;->showConfirmInfoBar(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$NativeInfoBar;

    move-result-object v0

    return-object v0
.end method
