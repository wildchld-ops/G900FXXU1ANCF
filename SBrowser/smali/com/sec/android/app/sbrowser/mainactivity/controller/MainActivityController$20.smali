.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$20;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$20;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$20;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2602(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
