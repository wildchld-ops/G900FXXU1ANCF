.class Lcom/android/mms/spam/SetupSpamNumberList$4;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I
    invoke-static {v1, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->access$702(Lcom/android/mms/spam/SetupSpamNumberList;I)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const-class v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList$4;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
