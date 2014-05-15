.class Lorg/chromium/content/browser/ContentVideoView$1;
.super Ljava/lang/Object;
.source "ContentVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentVideoView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView$1;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->destroyContentVideoView()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$202(Z)Z

    return-void
.end method
