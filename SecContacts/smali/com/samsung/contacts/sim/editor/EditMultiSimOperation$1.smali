.class Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;
.super Ljava/lang/Object;
.source "EditMultiSimOperation.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/sim/editor/EditMultiSimOperation;->addSpecialSIMTextWatcherIfNeeded(Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;Landroid/content/Context;ILcom/android/contacts/common/model/dataitem/DataKind;Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field byteName:[B

.field final synthetic this$0:Lcom/samsung/contacts/sim/editor/EditMultiSimOperation;

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

.field final synthetic val$nameMaxLength:I

.field final synthetic val$nameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/sim/editor/EditMultiSimOperation;Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;Landroid/content/Context;ILandroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->this$0:Lcom/samsung/contacts/sim/editor/EditMultiSimOperation;

    iput-object p2, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    iput-object p3, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$nameMaxLength:I

    iput-object p5, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$nameView:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$column:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->byteName:[B

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->byteName:[B

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->byteName:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$nameMaxLength:I

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    iget-object v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->onFieldChangedImpl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    invoke-interface {v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->setCurrentStrImpl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    invoke-interface {v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->byteName:[B

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->byteName:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$nameMaxLength:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    iget-object v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    invoke-interface {v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$nameMaxLength:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->setCurrentStrImpl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$nameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    invoke-interface {v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    iget-object v1, p0, Lcom/samsung/contacts/sim/editor/EditMultiSimOperation$1;->val$l:Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;

    invoke-interface {v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->getCurrentStrImpl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation$AddSpecialSIMTextWatcherIfNeededIntefrace;->setBeforeStrImpl(Ljava/lang/String;)V

    goto :goto_0
.end method
