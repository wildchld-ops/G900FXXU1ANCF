.class Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;
.super Ljava/lang/Object;
.source "SetHomePagePreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;->val$mActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;)Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->mLastSelectedIndex:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/model/SetHomePagePreferenceModel;->setHomePageIndex(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->UpdateHomepge()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$2;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
