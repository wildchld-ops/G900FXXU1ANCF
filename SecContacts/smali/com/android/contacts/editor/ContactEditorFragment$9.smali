.class Lcom/android/contacts/editor/ContactEditorFragment$9;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$pickedUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->val$pickedUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 0

    return-void
.end method

.method public onDoExtractInActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.ringtonerecommendation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_PICKEDUP_URI"

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->val$pickedUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onRingtoneRecommend(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$9;->val$pickedUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->handleRingtonePicked(Lcom/android/contacts/ContactsUtils$UpdateDataInterface;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
