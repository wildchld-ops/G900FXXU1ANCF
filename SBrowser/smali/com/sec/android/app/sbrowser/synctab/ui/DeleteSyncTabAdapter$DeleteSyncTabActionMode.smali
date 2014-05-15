.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;
.super Ljava/lang/Object;
.source "DeleteSyncTabAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteSyncTabActionMode"
.end annotation


# instance fields
.field private mMode:Landroid/view/ActionMode;

.field spinner:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->mMode:Landroid/view/ActionMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->spinner:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->mMode:Landroid/view/ActionMode;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mDeleteSyncTabPhoneUI:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->access$500(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->devicesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->access$400(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;->deleteTabs(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02df
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->mMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->access$200(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040034

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->access$200(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget v5, v5, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    #getter for: Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->access$200(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const v1, 0x7f0a02df

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->this$0:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->count:I

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return v2

    :cond_0
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter$DeleteSyncTabActionMode;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method
