.class public Lcom/samsung/contacts/menu/logdetail/DeleteHistory;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "DeleteHistory.java"


# static fields
.field private static deleteLogsDialog:Landroid/app/AlertDialog$Builder;

.field private static mContext:Landroid/content/Context;

.field private static mDeleteLogDlg:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->showProgress()V

    return-void
.end method

.method public static showDeleteHistoryLogsConfirmDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const v5, 0x7f0e0320

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->deleteLogsDialog:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->deleteLogsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e030c

    new-instance v3, Lcom/samsung/contacts/menu/logdetail/DeleteHistory$2;

    invoke-direct {v3, p1}, Lcom/samsung/contacts/menu/logdetail/DeleteHistory$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0318

    new-instance v3, Lcom/samsung/contacts/menu/logdetail/DeleteHistory$1;

    invoke-direct {v3}, Lcom/samsung/contacts/menu/logdetail/DeleteHistory$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->deleteLogsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mDeleteLogDlg:Landroid/app/AlertDialog;

    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0e0321

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static showProgress()V
    .locals 3

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    const v1, 0x7f0e02f0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/dialer/CallDetailActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    iget-object v1, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/contacts/menu/logdetail/DeleteHistory;->showDeleteHistoryLogsConfirmDlg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
