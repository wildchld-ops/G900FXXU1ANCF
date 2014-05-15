.class Lcom/android/mms/smishing/PackageAuthorityDialog$2;
.super Ljava/lang/Object;
.source "PackageAuthorityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/smishing/PackageAuthorityDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/smishing/PackageAuthorityDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/smishing/PackageAuthorityDialog$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityDialog$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;

    #getter for: Lcom/android/mms/smishing/PackageAuthorityDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/smishing/PackageAuthorityDialog;->access$000(Lcom/android/mms/smishing/PackageAuthorityDialog;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/smishing/PackageAuthorityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityDialog$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;

    invoke-virtual {v1, v0}, Lcom/android/mms/smishing/PackageAuthorityDialog;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityDialog$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;

    invoke-virtual {v1}, Lcom/android/mms/smishing/PackageAuthorityDialog;->finish()V

    return-void
.end method
