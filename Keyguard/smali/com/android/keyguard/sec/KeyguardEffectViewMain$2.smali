.class Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 4

    const-string v1, "KeyguardEffectViewMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** onUserSwitching - userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    const/4 v2, 0x1

    #setter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$202(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    #getter for: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardEffectViewMain"

    const-string v2, "No need to for persona to add wallpaper."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    #calls: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    #calls: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_0
.end method
