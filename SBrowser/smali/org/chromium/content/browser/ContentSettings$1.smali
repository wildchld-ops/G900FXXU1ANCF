.class Lorg/chromium/content/browser/ContentSettings$1;
.super Ljava/lang/Object;
.source "ContentSettings.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentSettings;->getJavaScriptEnabled()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentSettings;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentSettings$1;->this$0:Lorg/chromium/content/browser/ContentSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$1;->this$0:Lorg/chromium/content/browser/ContentSettings;

    #getter for: Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings;->access$200(Lorg/chromium/content/browser/ContentSettings;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings$1;->this$0:Lorg/chromium/content/browser/ContentSettings;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentSettings$1;->this$0:Lorg/chromium/content/browser/ContentSettings;

    #getter for: Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I
    invoke-static {v1}, Lorg/chromium/content/browser/ContentSettings;->access$200(Lorg/chromium/content/browser/ContentSettings;)I

    move-result v1

    #calls: Lorg/chromium/content/browser/ContentSettings;->nativeGetJavaScriptEnabled(I)Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentSettings;->access$400(Lorg/chromium/content/browser/ContentSettings;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentSettings$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
