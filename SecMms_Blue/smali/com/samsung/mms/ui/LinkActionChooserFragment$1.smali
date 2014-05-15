.class Lcom/samsung/mms/ui/LinkActionChooserFragment$1;
.super Ljava/lang/Object;
.source "LinkActionChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/LinkActionChooserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;->this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
