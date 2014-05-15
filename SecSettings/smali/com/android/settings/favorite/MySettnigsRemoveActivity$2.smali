.class Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;
.super Ljava/lang/Object;
.source "MySettnigsRemoveActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/favorite/MySettnigsRemoveActivity;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v2

    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->checkAll(Z)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    iget-object v0, v0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b0740

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    invoke-virtual {v0, v2}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->checkAll(Z)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;->this$0:Lcom/android/settings/favorite/MySettnigsRemoveActivity;

    iget-object v0, v0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b073c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b073c -> :sswitch_0
        0x7f0b0740 -> :sswitch_1
    .end sparse-switch
.end method
