.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    iput p2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    iget-object v2, v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    #getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->rButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$100(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    sget v3, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->selectedPos:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    iget-object v4, v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    #getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->access$200(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    #getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->access$300(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #calls: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v3}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$400(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;->this$1:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;

    iget-object v2, v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mConfirDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
