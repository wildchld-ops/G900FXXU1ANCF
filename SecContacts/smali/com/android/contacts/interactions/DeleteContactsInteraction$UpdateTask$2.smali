.class Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;
.super Ljava/lang/Object;
.source "DeleteContactsInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->this$0:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    iput-object p2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$002(Z)Z

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->val$context:Landroid/content/Context;

    const v3, 0x7f0e0392

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
