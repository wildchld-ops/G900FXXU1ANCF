.class Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$3;
.super Ljava/lang/Object;
.source "SbrChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;


# direct methods
.method constructor <init>(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$3;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider$3;->this$0:Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;

    #calls: Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->ensureNativeChromeDestroyedOnUIThread()V
    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->access$200(Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;)V

    return-void
.end method
