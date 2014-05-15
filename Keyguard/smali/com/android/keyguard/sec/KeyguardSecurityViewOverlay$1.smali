.class Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecurityViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    #calls: Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->access$000(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    :cond_0
    return-void
.end method
