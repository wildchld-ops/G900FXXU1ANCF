.class public Lcom/android/settings/nearby/DownloadListPreference;
.super Landroid/preference/ListPreference;
.source "DownloadListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    }
.end annotation


# static fields
.field private static final HANDLE_REDRAW_POPUP:I = 0xbb9

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "allshare_download_to"

.field public static final TAGClass:Ljava/lang/String; = "DownloadListPreference"


# instance fields
.field private context:Landroid/content/Context;

.field private isExtarnalMounted:Z

.field private mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v2, 0x7f091136

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/nearby/DownloadListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/DownloadListPreference$2;-><init>(Lcom/android/settings/nearby/DownloadListPreference;)V

    iput-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    const-string v0, "allshare_download_to"

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setDialogTitle(I)V

    const v0, 0x7f091139

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setPositiveButtonText(I)V

    const v0, 0x7f09113a

    invoke-virtual {p0, v0}, Lcom/android/settings/nearby/DownloadListPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearby/DownloadListPreference;)Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nearby/DownloadListPreference;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    const-string v0, "DownloadListPreference"

    const-string v1, "onPrepareDialogBuilder"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-boolean v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public setIsExternalMounted(Z)V
    .locals 4

    const-string v0, "DownloadListPreference"

    const-string v1, "setIsExternalMounted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadListPreference"

    const-string v1, "setIsExternalMounted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change mDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "DownloadListPreference"

    const-string v1, "setIsExternalMounted"

    const-string v2, "No Dialog!!"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6

    const-string v2, "DownloadListPreference"

    const-string v3, "showDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v3, p0, Lcom/android/settings/nearby/DownloadListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    iget-object v2, v2, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nearby/DownloadListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;

    iget-boolean v2, p0, Lcom/android/settings/nearby/DownloadListPreference;->isExtarnalMounted:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/settings/nearby/DownloadListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/DownloadListPreference$1;-><init>(Lcom/android/settings/nearby/DownloadListPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "DownloadListPreference"

    const-string v3, "showDialog"

    const-string v4, "listView is null"

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "DownloadListPreference"

    const-string v3, "showDialog"

    const-string v4, "dialog is null"

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
