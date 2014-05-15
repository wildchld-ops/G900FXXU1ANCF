.class Lorg/chromium/content/browser/ContentSettings$EventHandler;
.super Ljava/lang/Object;
.source "ContentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final UPDATE_MULTI_TOUCH:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/chromium/content/browser/ContentSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentSettings;)V
    .locals 2

    iput-object p1, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->this$0:Lorg/chromium/content/browser/ContentSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/content/browser/ContentSettings$EventHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/content/browser/ContentSettings$EventHandler$1;-><init>(Lorg/chromium/content/browser/ContentSettings$EventHandler;Landroid/os/Looper;Lorg/chromium/content/browser/ContentSettings;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentSettings$EventHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentSettings$EventHandler;->sendUpdateMultiTouchMessageLocked()V

    return-void
.end method

.method private sendUpdateMultiTouchMessageLocked()V
    .locals 3

    sget-boolean v0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->this$0:Lorg/chromium/content/browser/ContentSettings;

    #getter for: Lorg/chromium/content/browser/ContentSettings;->mContentSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings;->access$100(Lorg/chromium/content/browser/ContentSettings;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->this$0:Lorg/chromium/content/browser/ContentSettings;

    #getter for: Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings;->access$200(Lorg/chromium/content/browser/ContentSettings;)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$EventHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
