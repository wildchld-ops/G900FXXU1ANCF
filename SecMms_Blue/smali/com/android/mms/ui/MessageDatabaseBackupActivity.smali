.class public Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.super Landroid/app/Activity;
.source "MessageDatabaseBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;,
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_NAME_PREFIX:Ljava/lang/String; = "MMS_BACKUP_"

.field private static final BACKUP_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/"

.field private static final BACKUP_MSG_DATA_PATH:Ljava/lang/String; = "/data/data/com.android.mms/"

.field private static final BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String; = "/mnt/sdcard/MMS_BACKUP"

.field private static final BTN_NAME_BACKUP:Ljava/lang/String; = "1. MESSAGE DB BACKUP"

.field private static final BTN_NAME_CHANGE_APN:Ljava/lang/String; = "MESSAGE APN CHANGE"

.field private static final BTN_NAME_CMAS_Test_OFF:Ljava/lang/String; = "CMAS Test Mode"

.field private static final BTN_NAME_RESTORE:Ljava/lang/String; = "2. MEESSAGE DB RESTORE"

.field private static BUFFER_SIZE:I = 0x0

.field private static final CHK_NAME_DBRESTORE:Ljava/lang/String; = "DB Restore"

.field private static final DEFAULT_CRYPTO_KEY:Ljava/lang/String; = "12345678901234567890123456789012"

.field private static final EXT_MSG:Ljava/lang/String; = ".edb"

.field private static final EXT_ZIP:Ljava/lang/String; = ".zip"

.field private static final FLAG_DB_BACKUP_COMPLETE:I = 0x1

.field private static final FLAG_DB_BACKUP_START:I = 0x0

.field private static final FLAG_DB_RESTORE_COMPLETE:I = 0x3

.field private static final FLAG_DB_RESTORE_START:I = 0x2

.field private static final RET_VALUE_FALSE:I = 0x0

.field private static final RET_VALUE_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MessageDatabaseBackupActivity"

.field private static final WORKTHREAD_MODE_BACKUP:I = 0x0

.field private static final WORKTHREAD_MODE_RESTORE:I = 0x1


# instance fields
.field public CMASTestchangeButton:Landroid/widget/Button;

.field public mAdapterPathName:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mArrayPathName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDlgProg:Landroid/app/ProgressDialog;

.field private mEventHandler:Landroid/os/Handler;

.field public mListView:Landroid/widget/ListView;

.field public mTextviewBackupFileName:Landroid/widget/TextView;

.field public mTextviewRestoreFileName:Landroid/widget/TextView;

.field private mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    sput v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BUFFER_SIZE:I

    return v0
.end method

.method private checkExternalStorage()Z
    .locals 7

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "External Storage mount error!!"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v2, "/mnt/sdcard/MMS_BACKUP"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private createEventHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public initRestoreList()V
    .locals 8

    new-instance v3, Ljava/io/File;

    const-string v5, "/mnt/sdcard/MMS_BACKUP"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0b019d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->clear()V

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".edb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x109000f

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    const v11, 0x7f0b0199

    const v10, 0x7f0b0196

    const/4 v13, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v10, :cond_0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCMASTestOnOff(Landroid/content/Context;Z)V

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setCmasTestOnOff(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0b019b

    if-ne v9, v10, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "External Storage mount failed"

    invoke-static {p0, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const-string v10, "message backup starting"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MMS_BACKUP_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "yyMMdd_hhmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/mnt/sdcard/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, p0, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v9, v13, v7, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0b019f

    if-ne v9, v10, :cond_6

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "External Storage mount failed"

    invoke-static {p0, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    if-gez v5, :cond_5

    const-string v9, "Select the file in restore list"

    invoke-static {p0, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const-string v10, "message restore starting"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const-string v10, ".edb"

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, p0, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v7, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->start()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v11, :cond_1

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setApnOnOff(Landroid/content/Context;Z)V

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setApnOnOff(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v11, 0x7f04005b

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->setContentView(I)V

    const v11, 0x7f0b019b

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v11, 0x7f0b019f

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v11, "1. MESSAGE DB BACKUP"

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "2. MEESSAGE DB RESTORE"

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0b01a0

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v11, "DB Restore"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v11, 0x7f0b0194

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v11, 0x7f0b0195

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v11, 0x7f0b0196

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const-string v11, "CMAS Test Mode"

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCMASTestOnOff(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v11, 0x7f0b0197

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    sget-boolean v11, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v11, :cond_0

    const v11, 0x7f0b0198

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v11, 0x7f0b0199

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    const-string v11, "MESSAGE APN CHANGE"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApnOnOff(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    const v11, 0x7f0b019c

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const v11, 0x7f0b01a2

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const v11, 0x7f0b01a4

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->createEventHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    return-void
.end method
