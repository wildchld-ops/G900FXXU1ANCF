.class final Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;
    }
.end annotation


# instance fields
.field private mPhotoDetailListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;IZLcom/android/contacts/model/RawContactDeltaList;)V
    .locals 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/RawContactDeltaList;)V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler$PhotoSelectionListener;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->mPhotoDetailListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->mPhotoDetailListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method protected startAvatarActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4102(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoUri:Landroid/net/Uri;
    invoke-static {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4202(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4102(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected startSMemoActivity(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected startSNoteActivity(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
