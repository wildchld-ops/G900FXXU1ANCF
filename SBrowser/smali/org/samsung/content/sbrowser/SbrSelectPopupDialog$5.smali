.class Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$5;
.super Ljava/lang/Object;
.source "SbrSelectPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$5;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$5;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    const/4 v1, 0x0

    #setter for: Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$302(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Z)Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$5;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    #calls: Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->notifyContentViewCorePopupCanceled()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$500(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)V

    return-void
.end method
