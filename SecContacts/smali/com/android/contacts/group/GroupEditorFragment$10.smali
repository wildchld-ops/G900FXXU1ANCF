.class Lcom/android/contacts/group/GroupEditorFragment$10;
.super Landroid/database/ContentObserver;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$10;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$10;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$10;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$600(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sec_custom_vibration"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/GroupEditorFragment;->setToneAndVibrationTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
