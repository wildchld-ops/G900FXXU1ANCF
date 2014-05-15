.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->showPageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field final synthetic val$mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->val$mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;->val$mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar$13;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
