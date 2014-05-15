.class Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;
.super Ljava/lang/Object;
.source "EmergencyContactListDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$000(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$100(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->setLoadEmergency(Z)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    iget v2, v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mEmergencyContactsCount:I

    #setter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactsCount:I
    invoke-static {v1, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$202(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;I)I

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    iget v2, v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFavoritesCount:I

    #setter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFavoritesCount:I
    invoke-static {v1, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$302(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;I)I

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    iget v2, v0, Lcom/samsung/contacts/list/EmergencyAndContactsLoader;->mFrequentsCount:I

    #setter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFrequentsCount:I
    invoke-static {v1, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$402(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;I)I

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$100(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactsCount:I
    invoke-static {v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$200(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->setEmergencyContactsCount(I)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$100(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFavoritesCount:I
    invoke-static {v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$300(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->setFavoritesCount(I)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$100(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFrequentsCount:I
    invoke-static {v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$400(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->setFrequentsCount(I)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$500(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$000(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    const v3, 0x7f0e006c

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$000(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$100(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
