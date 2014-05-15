.class public Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;
.super Ljava/lang/Object;
.source "MergeWithSamsungDialogFragment.java"

# interfaces
.implements Lcom/samsung/contacts/interactions/SelectSamsungAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectSamsungAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;->this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;->this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;->this$0:Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;

    #calls: Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->mergeWithSamsung(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->access$100(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->showResultToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;->access$200(Lcom/samsung/contacts/interactions/MergeWithSamsungDialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    return-void
.end method
