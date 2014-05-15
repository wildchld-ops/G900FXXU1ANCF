.class Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

.field final synthetic val$uris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->val$uris:[Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V

    #setter for: Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$302(Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    invoke-direct {v1, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    check-cast v0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    invoke-static {}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->access$1600()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->showImportedVcard(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardPreviewActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
