.class public Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;
.super Ljava/lang/Object;
.source "MergeWithGoogleDialogFragment.java"

# interfaces
.implements Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectGoogleAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;->this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;->this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;->this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;

    #calls: Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->mergeWithGoogle(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->access$100(Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->showResultToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->access$200(Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    return-void
.end method
