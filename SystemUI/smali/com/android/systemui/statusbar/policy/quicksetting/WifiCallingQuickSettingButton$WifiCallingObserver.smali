.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;
.super Landroid/database/ContentObserver;
.source "WifiCallingQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "STATUSBAR-WifiCallingQuickSettingButton"

    const-string v3, "WifiCallingObserver onChange()"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WifiCallingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
