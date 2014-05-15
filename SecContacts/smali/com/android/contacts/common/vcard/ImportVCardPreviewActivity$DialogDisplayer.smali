.class Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->mResId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f080016

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->mResId:I

    #setter for: Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$002(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    iget v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
