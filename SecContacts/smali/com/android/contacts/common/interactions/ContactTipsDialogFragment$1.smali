.class Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;

    iget-object v2, v0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;

    iget-object v0, v0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;

    iget-object v2, v2, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->storeCheckedState(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;

    iget-object v0, v0, Lcom/android/contacts/common/interactions/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
