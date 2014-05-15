.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;
.super Ljava/lang/Object;
.source "SBrowserMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imideoEULA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field final synthetic val$mDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;->val$mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoLinkPrivacyPolicy ButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;->val$mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$12;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imideoEulaSecondPopup()V

    return-void
.end method
