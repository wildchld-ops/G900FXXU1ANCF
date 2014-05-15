.class Lcom/android/mms/help/PrioritySenderHelpActivity$2;
.super Ljava/lang/Object;
.source "PrioritySenderHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/PrioritySenderHelpActivity;->makeDialog()Landroid/view/View;
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

    iput-object p1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$2;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$2;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    #getter for: Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;
    invoke-static {v1}, Lcom/android/mms/help/PrioritySenderHelpActivity;->access$000(Lcom/android/mms/help/PrioritySenderHelpActivity;)Lcom/android/mms/help/TwHelpAnimatedDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$2;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/help/PrioritySenderHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;
    invoke-static {v1, v2}, Lcom/android/mms/help/PrioritySenderHelpActivity;->access$002(Lcom/android/mms/help/PrioritySenderHelpActivity;Lcom/android/mms/help/TwHelpAnimatedDialog;)Lcom/android/mms/help/TwHelpAnimatedDialog;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$2;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    const-class v2, Lcom/android/mms/help/AddGlanceListHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/mms/help/PrioritySenderHelpActivity$2;->this$0:Lcom/android/mms/help/PrioritySenderHelpActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/help/PrioritySenderHelpActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
