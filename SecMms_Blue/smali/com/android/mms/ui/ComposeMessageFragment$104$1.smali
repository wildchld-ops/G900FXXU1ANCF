.class Lcom/android/mms/ui/ComposeMessageFragment$104$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$104;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

.field final synthetic val$selectedItemUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$104;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->val$selectedItemUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$104;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->val$selectedItemUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$104;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$104;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$104$1;->val$selectedItemUri:Landroid/net/Uri;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I

    :cond_0
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "onItemSelected : addMedia"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
