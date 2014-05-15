.class Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$2;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isSignInDialogVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->isSignInDialogVisible:Z

    :cond_0
    return-void
.end method
