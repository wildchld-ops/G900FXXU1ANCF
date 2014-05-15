.class Lcom/android/contacts/editor/TextFieldsEditorView$2;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTotalTextByte:I

.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$fieldView:Landroid/widget/EditText;

.field final synthetic val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$fieldView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iput-object p4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$column:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->mTotalTextByte:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mIsSimAccount:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView$2;)V

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    #getter for: Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget v3, v3, Lcom/android/contacts/editor/TextFieldsEditorView;->mSlotId:I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$fieldView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$kind:Lcom/android/contacts/common/model/dataitem/DataKind;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->afterTextChangedForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$AfterTextChangedForSimInterface;Landroid/content/Context;ILandroid/text/Editable;Landroid/widget/EditText;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
