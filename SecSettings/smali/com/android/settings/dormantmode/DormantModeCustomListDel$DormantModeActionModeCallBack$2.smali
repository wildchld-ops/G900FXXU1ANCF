.class Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$2;
.super Ljava/lang/Object;
.source "DormantModeCustomListDel.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$2;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

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

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$2;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    #calls: Lcom/android/settings/dormantmode/DormantModeCustomListDel;->ToggleAllCheck(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$400(Lcom/android/settings/dormantmode/DormantModeCustomListDel;Z)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$2;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$2;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    #calls: Lcom/android/settings/dormantmode/DormantModeCustomListDel;->ToggleAllCheck(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$400(Lcom/android/settings/dormantmode/DormantModeCustomListDel;Z)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack$2;->this$1:Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$DormantModeActionModeCallBack;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
