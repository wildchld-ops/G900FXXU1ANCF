.class Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;
.super Landroid/widget/EditText;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadingTextEdit"
.end annotation


# instance fields
.field mValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

.field mfield:Lcom/android/contacts/common/model/account/AccountType$EditField;

.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType$EditField;Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mfield:Lcom/android/contacts/common/model/account/AccountType$EditField;

    iput-object p4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    return-void
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "com.sec.android.inputmethod.iwnnime.japan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    const-string v0, "yomi"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mfield:Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mfield:Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v1, "data7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPhoneticGivenName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yomi"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onPhoneticAutomation()V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mfield:Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v1, "data8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPhoneticMiddleName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yomi"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mfield:Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v1, "data9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$ReadingTextEdit;->mValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPhoneticFamilyName(Lcom/android/contacts/common/model/ValuesDelta;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "yomi"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
