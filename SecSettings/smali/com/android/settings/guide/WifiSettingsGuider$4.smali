.class Lcom/android/settings/guide/WifiSettingsGuider$4;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z
    invoke-static {v0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->access$102(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$4;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    iget-object v0, v0, Lcom/android/settings/guide/WifiSettingsGuider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
