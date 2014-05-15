.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$2;
.super Ljava/lang/Object;
.source "JavascriptAppModalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$2;->this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$2;->this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->cancel(Z)V

    return-void
.end method
