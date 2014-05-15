.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->LayoutInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    #calls: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogSearch()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$100(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-static {}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$200()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
