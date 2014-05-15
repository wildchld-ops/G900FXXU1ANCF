.class Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$6;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogPDPResetInRoaming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$6;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
