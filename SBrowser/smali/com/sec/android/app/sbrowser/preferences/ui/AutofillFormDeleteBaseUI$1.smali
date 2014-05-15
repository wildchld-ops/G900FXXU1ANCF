.class Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;
.super Ljava/lang/Object;
.source "AutofillFormDeleteBaseUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iput-boolean v8, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getProfileId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getProfileId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v7, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c022c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-static {v4, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->finish()V

    return-void

    :cond_4
    if-le v1, v7, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c022d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
