.class Lcom/diotek/ime/framework/common/InputManagerImpl$20;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIME"

    const-string v7, "mKeyguardGoneReceiver"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #calls: Lcom/diotek/ime/framework/common/InputManagerImpl;->isPopupInputMethod(I)Z
    invoke-static {v6, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4400(Lcom/diotek/ime/framework/common/InputManagerImpl;I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isClipboardShowing()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v3, :cond_1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6, v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4502(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    #setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v6, v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$4602(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->guidePopupIsHidden()V

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showDlgMsgBox()V

    return-void
.end method
