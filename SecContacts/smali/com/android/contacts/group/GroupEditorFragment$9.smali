.class Lcom/android/contacts/group/GroupEditorFragment$9;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 0

    return-void
.end method

.method public onDoExtractInActivity()V
    .locals 0

    return-void
.end method

.method public onRingtoneRecommend(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$9;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/ContactsUtils;->handleRingtonePicked(Lcom/android/contacts/ContactsUtils$UpdateDataInterface;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
