.class Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;
.super Ljava/lang/Object;
.source "SbrChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoaded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

.field final synthetic val$retVal:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;->val$retVal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;->val$retVal:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$2;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeSbrChromeLoadedOnUIThread()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
