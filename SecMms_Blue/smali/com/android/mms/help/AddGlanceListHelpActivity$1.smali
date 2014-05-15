.class Lcom/android/mms/help/AddGlanceListHelpActivity$1;
.super Ljava/lang/Object;
.source "AddGlanceListHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AddGlanceListHelpActivity;->makeContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AddGlanceListHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity$1;->this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity$1;->this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;

    #getter for: Lcom/android/mms/help/AddGlanceListHelpActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->access$000(Lcom/android/mms/help/AddGlanceListHelpActivity;)Lcom/android/mms/help/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/help/TwHelpAnimatedDialog;->dismiss()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/help/PrioritySenderHelpActivity;->mIsAdded:Z

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity$1;->this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;

    invoke-virtual {v0}, Lcom/android/mms/help/AddGlanceListHelpActivity;->finish()V

    return-void
.end method
