.class public Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;
.super Landroid/app/Activity;
.source "ImportVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;,
        Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;
    }
.end annotation


# static fields
.field private static mShowImportedVcard:Z

.field private static mShowSelectAccount:Z

.field private static mTitleName:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImportPath:Ljava/lang/String;

.field private mIsBound:Z

.field mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;

.field private request:Lcom/android/contacts/common/vcard/ImportRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowSelectAccount:Z

    sput-boolean v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mTitleName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mIsBound:Z

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowSelectAccount:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mIsBound:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startImport()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mIsBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mTitleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->request:Lcom/android/contacts/common/vcard/ImportRequest;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportRequest;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->request:Lcom/android/contacts/common/vcard/ImportRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;

    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0199

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const v3, 0x7f0e019a

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const v4, 0x7f0e019b

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const v4, 0x7f0e019c

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 13

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Z)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0e0199

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/CharSequence;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;->getLastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f333333

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    aput-object v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v9, 0x0

    check-cast v9, [Z

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4

    array-length v1, p1

    new-array v2, v1, [Landroid/net/Uri;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCard([Ljava/lang/String;)V

    return-void
.end method

.method private startImport()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "VCardImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting vCard import using Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCard(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VCardImport"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCardFromSDCard(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    const v2, 0x7f080011

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    const v2, 0x7f080012

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;I)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startImport()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code was not OK nor CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x1

    const/16 v12, 0x64

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string v8, "showSelectAccount"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowSelectAccount:Z

    const-string v8, "showDetail"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z

    const-string v8, "title_name"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mTitleName:Ljava/lang/String;

    :goto_0
    const-string v8, "VCardImport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting vCard preview using Uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f03013a

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v8, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    const v9, 0x7f030062

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_0
    new-instance v7, Lcom/android/contacts/common/vcard/VCardReader;

    invoke-direct {v7, p0, v6, v11, v12}, Lcom/android/contacts/common/vcard/VCardReader;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    invoke-virtual {v7}, Lcom/android/contacts/common/vcard/VCardReader;->getVCardDataList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/contacts/common/vcard/VCardReader;->getVCardEntryCount()I

    move-result v3

    if-ne v3, v12, :cond_1

    const v8, 0x7f0e03d9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_1
    const v8, 0x7f080301

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;

    const v8, 0x7f030139

    invoke-direct {v0, p0, p0, v8, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardListAdapter;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    sput-boolean v11, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowSelectAccount:Z

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v5, 0x1

    const v7, 0x104000a

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mAccountSelectionListener must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-static {p0, p1, v3, v4}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0e03e0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {p0, v3, v1, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardScanThread;->start()V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_2
    const v3, 0x7f0e019d

    goto :goto_1

    :sswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0e03de

    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0e03df

    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f0e03e7

    goto :goto_2

    :cond_4
    const v3, 0x7f0e0186

    goto :goto_3

    :sswitch_3
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0e03e3

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const v3, 0x7f0e0196

    goto :goto_4

    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, v5}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_6

    const v3, 0x7f0e019e

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0193

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startVCardService()V

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0e03e2

    :goto_5
    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0e0177

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const v3, 0x7f0e019f

    goto :goto_5

    :sswitch_9
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "VCardImport"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0e0170

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0189

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f08000e -> :sswitch_1
        0x7f08000f -> :sswitch_2
        0x7f080010 -> :sswitch_3
        0x7f080011 -> :sswitch_4
        0x7f080012 -> :sswitch_6
        0x7f080013 -> :sswitch_5
        0x7f080014 -> :sswitch_7
        0x7f080015 -> :sswitch_8
        0x7f080016 -> :sswitch_9
        0x7f0e016c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f080171

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$3;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080172

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0e0295

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->finish()V

    goto :goto_0

    :sswitch_1
    sget-boolean v1, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mShowSelectAccount:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startImport()V

    invoke-virtual {p0, v3, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->overridePendingTransition(II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_0
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string v0, "VCardImport"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$2;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startVCardService()V
    .locals 3

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    const-string v0, "VCardImport"

    const-string v1, "Bind to VCardService."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mIsBound:Z

    return-void
.end method
