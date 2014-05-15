.class Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    #getter for: Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$900(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$1000(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->finish()V

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
