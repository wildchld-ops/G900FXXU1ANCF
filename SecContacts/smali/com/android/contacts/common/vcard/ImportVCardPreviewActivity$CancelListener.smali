.class Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->finish()V

    return-void
.end method
