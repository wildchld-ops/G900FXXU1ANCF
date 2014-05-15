.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;
.super Ljava/lang/Object;
.source "JavascriptAppModalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->showJavascriptAppModalDialog(Lorg/chromium/ui/WindowAndroid;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;->this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;->this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->cancel(Z)V

    :cond_0
    return v1
.end method
