.class Lcom/android/mms/help/PrioritySenderHelpActivity$3;
.super Ljava/lang/Object;
.source "PrioritySenderHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/PrioritySenderHelpActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/PrioritySenderHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$3;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$3;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    invoke-virtual {v0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->finish()V

    return-void
.end method
