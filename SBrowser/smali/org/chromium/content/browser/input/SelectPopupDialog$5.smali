.class Lorg/chromium/content/browser/input/SelectPopupDialog$5;
.super Ljava/lang/Object;
.source "SelectPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$5;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog$5;->this$0:Lorg/chromium/content/browser/input/SelectPopupDialog;

    #setter for: Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$202(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {v1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->access$302(Lorg/chromium/content/browser/input/SelectPopupDialog;)Lorg/chromium/content/browser/input/SelectPopupDialog;

    return-void
.end method
