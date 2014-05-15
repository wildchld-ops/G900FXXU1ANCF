.class Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
.super Lcom/samsung/contacts/list/EmergencyContactListAdapter;
.source "EmergencyContactListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyContactAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    invoke-direct {p0, p2}, Lcom/samsung/contacts/list/EmergencyContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 6

    const/4 v3, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0, v1, p4, p3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->this$0:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    #getter for: Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->access$000(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v4, 0x0

    move-object v2, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->bindCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ILandroid/net/Uri;Z)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "link_count"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "link_count"

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v3, "has_phone_number"

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->getSortOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v2, "sort_key"

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "sort_key_alt"

    goto :goto_0
.end method

.method protected getProfilePostion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
