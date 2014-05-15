.class final Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SIMContactPickerActionListener"
.end annotation


# instance fields
.field mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public deleteAfterWarningDialog(Landroid/content/Context;I)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$3;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$3;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public exportAfterWarningDialog(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0412

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0412

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onAllDataDeleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onCancelAction()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->finish()V

    return-void
.end method

.method public onCopyAction(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const v5, 0x7f0e0416

    const v4, 0x7f0e0361

    const v3, 0x7f0e0068

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {v1, v6}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$102(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e0362

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e0411

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e0410

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e040f

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v3, 0x7f0e0415

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e040e

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isDiskFull()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e0177

    const v3, 0x7f0e0413

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->showAlertDialog(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "vnd.sec.contact.sim2"

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$402(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$402(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isSIM2Enabled()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v3, 0x7f0e0415

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isSIM2Enabled()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isDiskFull()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e0177

    const v3, 0x7f0e0413

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->showAlertDialog(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_15
    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$402(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    new-instance v2, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$402(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onDeleteAction(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const v4, 0x7f0e03f5

    const v3, 0x7f0e03f2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x2

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$102(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x1c2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->isSIM2Enabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->deleteAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->deleteAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public onInteractionSelectionChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$702(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mTotalCount:I
    invoke-static {v0, p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$802(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;I)I

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mSelectedCount:I
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$700(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$902(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$900(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOneDataInputed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public showAlertDialog(Landroid/content/Context;II)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
