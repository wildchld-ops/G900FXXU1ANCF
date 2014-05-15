.class Lcom/android/mms/template/TextTemplateEditActivity$1;
.super Ljava/lang/Object;
.source "TextTemplateEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateEditActivity$1;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity$1;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    #calls: Lcom/android/mms/template/TextTemplateEditActivity;->TextTemplateSipHide()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateEditActivity;->access$000(Lcom/android/mms/template/TextTemplateEditActivity;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateEditActivity$1;->this$0:Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateEditActivity;->finish()V

    return-void
.end method
