.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mSecurityButtonShown:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mLocationBarWrapper:Lorg/samsung/chrome/browser/SbrLocationBar;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)Lorg/samsung/chrome/browser/SbrLocationBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/samsung/chrome/browser/SbrLocationBar;->onSecurityButtonClicked(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->val$mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
