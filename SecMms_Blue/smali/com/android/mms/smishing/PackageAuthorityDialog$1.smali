.class Lcom/android/mms/smishing/PackageAuthorityDialog$1;
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

    iput-object p1, p0, Lcom/android/mms/smishing/PackageAuthorityDialog$1;->this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityDialog$1;->this$0:Lcom/android/mms/smishing/PackageAuthorityDialog;

    invoke-virtual {v0}, Lcom/android/mms/smishing/PackageAuthorityDialog;->finish()V

    return-void
.end method
