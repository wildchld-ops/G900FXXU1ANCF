.class Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoaded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeBrowserProvider;

.field final synthetic val$retVal:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeBrowserProvider;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;->this$0:Lorg/chromium/chrome/browser/ChromeBrowserProvider;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;->val$retVal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;->val$retVal:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$1;->this$0:Lorg/chromium/chrome/browser/ChromeBrowserProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeLoadedOnUIThread()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
