.class Lorg/chromium/content/browser/ContentVideoView$2;
.super Ljava/lang/Object;
.source "ContentVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentVideoView;->onMediaPlayerError(I)V
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

    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView$2;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->destroyContentVideoView()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$2;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    #calls: Lorg/chromium/content/browser/ContentVideoView;->onCompletion()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$300(Lorg/chromium/content/browser/ContentVideoView;)V

    return-void
.end method
