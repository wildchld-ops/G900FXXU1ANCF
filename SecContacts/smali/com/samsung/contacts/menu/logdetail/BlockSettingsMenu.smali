.class public Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "BlockSettingsMenu.java"


# static fields
.field private static blockNumberFullErrorDlg:Landroid/app/AlertDialog;

.field private static blockNumberSettingDlg:Landroid/app/AlertDialog;

.field private static final mBlcokNumberResult:[Z

.field private static final mBlcoknumbersetting:[Z

.field private static final mOriginalBlcokNumberSetting:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcokNumberResult:[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()[Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    return-object v0
.end method

.method static synthetic access$100()[Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcokNumberResult:[Z

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private static openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    const v11, 0x7f0e0407

    const v10, 0x7f0e01b9

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "BlockSettingsMenu"

    const-string v5, "invalid number"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0e0403

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcokNumberResult:[Z

    aput-boolean v7, v4, v8

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcokNumberResult:[Z

    aput-boolean v7, v4, v7

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcokNumberResult:[Z

    aput-boolean v7, v4, v9

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    sget-object v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    invoke-static {p0, v3, v7, v7}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v6

    aput-boolean v6, v5, v8

    aput-boolean v6, v4, v8

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    sget-object v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    invoke-static {p0, v3, v7, v8}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v6

    aput-boolean v6, v5, v7

    aput-boolean v6, v4, v7

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    sget-object v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    invoke-static {p0, v3, v7}, Lcom/samsung/dialer/util/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v5, v9

    aput-boolean v6, v4, v9

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    const v4, 0x7f0e0405

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v8

    const v4, 0x7f0e0406

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v9

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    new-instance v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$1;

    invoke-direct {v5}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$1;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$2;

    invoke-direct {v4, p0, v3}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v4, 0x7f0e0310

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0e0318

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$6;

    invoke-direct {v5}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$6;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    sget-object v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    invoke-static {p0, v3, v7, v7}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v6

    aput-boolean v6, v5, v8

    aput-boolean v6, v4, v8

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mOriginalBlcokNumberSetting:[Z

    sget-object v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    invoke-static {p0, v3, v7}, Lcom/samsung/dialer/util/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v5, v7

    aput-boolean v6, v4, v7

    new-array v1, v9, [Ljava/lang/CharSequence;

    const v4, 0x7f0e0404

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z

    new-instance v5, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$3;

    invoke-direct {v5}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$3;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;

    invoke-direct {v4, p0, v3}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public execute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    iget-object v1, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
