.class final Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "GroupMultipleDeletionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    const v0, 0x7f0300aa

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const v8, 0x7f0b01fd

    const v7, 0x7f0801f3

    const v6, 0x7f080031

    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4, v8}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4, v8}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$300(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f08003b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method
