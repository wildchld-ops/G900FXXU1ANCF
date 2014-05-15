.class public Lcom/android/mms/smishing/PackageAuthorityDialog;
.super Landroid/app/Activity;
.source "PackageAuthorityDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PackageAuthorityDialog"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/smishing/PackageAuthorityDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c047c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c04d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c017f

    new-instance v2, Lcom/android/mms/smishing/PackageAuthorityDialog$2;

    invoke-direct {v2, p0}, Lcom/android/mms/smishing/PackageAuthorityDialog$2;-><init>(Lcom/android/mms/smishing/PackageAuthorityDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0180

    new-instance v2, Lcom/android/mms/smishing/PackageAuthorityDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/smishing/PackageAuthorityDialog$1;-><init>(Lcom/android/mms/smishing/PackageAuthorityDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Mms/PackageAuthorityDialog"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/smishing/PackageAuthorityDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/smishing/PackageAuthorityDialog;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/android/mms/smishing/PackageAuthorityDialog;->createDialog()V

    return-void
.end method
