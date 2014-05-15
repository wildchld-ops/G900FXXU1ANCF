.class Lcom/android/contacts/quickcontact/QuickContactListFragment$2;
.super Ljava/lang/Object;
.source "QuickContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMovialWFC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableSamsungWFC()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v0}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/samsung/contacts/util/ImsLowSignalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->isLowSignal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mImsLowSignalHelper:Lcom/samsung/contacts/util/ImsLowSignalHelper;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/samsung/contacts/util/ImsLowSignalHelper;

    move-result-object v1

    const v2, 0x7f0e0402

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/util/ImsLowSignalHelper;->showErrorDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/contacts/util/ContactsPermissionUtils;->isNeedConfirm(Landroid/content/Context;Lcom/android/contacts/quickcontact/Action;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/contacts/util/ContactsPermissionUtils;->createPermissionPopup(Landroid/content/Context;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V

    goto :goto_0
.end method
