.class Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

.field final synthetic val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iput-object p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090999

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;->val$TalkbackEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
