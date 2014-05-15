.class Lcom/android/mms/template/TextTemplateListActivity$2;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity;->initResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const-class v2, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEMPLATE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "activity_title"

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v3, 0x7f0c0214

    invoke-virtual {v2, v3}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
