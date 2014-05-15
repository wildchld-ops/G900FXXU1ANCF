.class Lcom/samsung/contacts/activities/SIMContactSelectionActivity$3;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$3;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/list/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method
