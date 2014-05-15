.class Lcom/diotek/ime/framework/common/InputManagerImpl$18;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungIME"

    const-string v5, "mScreenLockReceiver onReceive()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #calls: Lcom/diotek/ime/framework/common/InputManagerImpl;->isPopupInputMethod(I)Z
    invoke-static {v4, v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400(Lcom/diotek/ime/framework/common/InputManagerImpl;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4502(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    if-nez v1, :cond_2

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v4

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/ViewController;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4602(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->dismissAllDialog()V

    return-void
.end method
