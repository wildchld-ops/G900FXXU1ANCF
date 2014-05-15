.class Lcom/diotek/ime/framework/view/TipsDialog$77;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iput p2, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    const/16 v2, -0x75

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showPopupMiniKeyboardforMMkey()V

    invoke-static {v3}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    goto :goto_0
.end method
