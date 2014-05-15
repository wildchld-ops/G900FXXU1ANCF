.class public Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;
.super Ljava/lang/Object;
.source "PrivacyPreferenceUI.java"


# instance fields
.field private mDialgFragment:Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showClearBrowsingDataDialog(Landroid/app/FragmentManager;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;->mDialgFragment:Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;->mDialgFragment:Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;

    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;->mDialgFragment:Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;->mDialgFragment:Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/preferences/ClearBrowsingDataDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
