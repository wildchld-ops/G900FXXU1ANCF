.class Lcom/android/keyguard/sec/SecCameraShortcut$2;
.super Ljava/lang/Object;
.source "SecCameraShortcut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecCameraShortcut;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecCameraShortcut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    #getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    #getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismiss keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    #getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->launchCamera()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    #getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$200(Lcom/android/keyguard/sec/SecCameraShortcut;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$2;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    #getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
