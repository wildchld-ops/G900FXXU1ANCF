.class Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;
.super Ljava/lang/Object;
.source "AutofillFormDeleteXlargeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->Initialise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->selectAllChecked:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getProfileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->adapter:Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->checkStates:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;->getProfileListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/preferences/AutofillProfileListAdapter;->getProfileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteXlargeUI;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/ui/AutofillFormDeleteBaseUI;->mAutofillFormDeleteActivity:Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/AutofillFormDelete;->finish()V

    return-void
.end method
