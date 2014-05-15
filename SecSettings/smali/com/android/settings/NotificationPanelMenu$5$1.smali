.class Lcom/android/settings/NotificationPanelMenu$5$1;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationPanelMenu$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NotificationPanelMenu$5;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$5$1;->this$1:Lcom/android/settings/NotificationPanelMenu$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$5$1;->this$1:Lcom/android/settings/NotificationPanelMenu$5;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #getter for: Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1100(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu$5$1;->this$1:Lcom/android/settings/NotificationPanelMenu$5;

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu$5;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #getter for: Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/NotificationPanelMenu;->access$1100(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
