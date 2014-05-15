.class Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$1;->val$mActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController$1;->val$mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
