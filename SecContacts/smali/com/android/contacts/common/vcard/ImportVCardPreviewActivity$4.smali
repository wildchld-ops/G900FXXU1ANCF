.class Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const-class v3, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    #calls: Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->startImport()V
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$2000(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$4;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0, v4, v4}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
