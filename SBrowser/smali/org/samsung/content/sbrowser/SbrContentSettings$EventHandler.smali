.class Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;
.super Ljava/lang/Object;
.source "SbrContentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrContentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SYNC:I = 0x0

.field private static final UPDATE_MULTI_TOUCH:I = 0x2

.field private static final UPDATE_UA:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentSettings;)V
    .locals 1

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler$1;-><init>(Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;Lorg/samsung/content/sbrowser/SbrContentSettings;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->syncSettingsLocked()V

    return-void
.end method

.method private syncSettingsLocked()V
    .locals 3

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$000(Lorg/samsung/content/sbrowser/SbrContentSettings;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$200(Lorg/samsung/content/sbrowser/SbrContentSettings;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    #getter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mIsSyncMessagePending:Z
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$100(Lorg/samsung/content/sbrowser/SbrContentSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->this$0:Lorg/samsung/content/sbrowser/SbrContentSettings;

    const/4 v1, 0x1

    #setter for: Lorg/samsung/content/sbrowser/SbrContentSettings;->mIsSyncMessagePending:Z
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->access$102(Lorg/samsung/content/sbrowser/SbrContentSettings;Z)Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
