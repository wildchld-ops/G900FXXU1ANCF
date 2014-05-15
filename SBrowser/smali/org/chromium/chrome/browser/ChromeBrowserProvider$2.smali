.class Lorg/chromium/chrome/browser/ChromeBrowserProvider$2;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeBrowserProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeBrowserProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$2;->this$0:Lorg/chromium/chrome/browser/ChromeBrowserProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$2;->this$0:Lorg/chromium/chrome/browser/ChromeBrowserProvider;

    #calls: Lorg/chromium/chrome/browser/ChromeBrowserProvider;->ensureNativeChromeDestroyedOnUIThread()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider;->access$000(Lorg/chromium/chrome/browser/ChromeBrowserProvider;)V

    return-void
.end method
