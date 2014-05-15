.class final Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/preference/ServiceNumbersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceNumberListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/preference/ServiceNumbersFragment;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;

    iget-object v1, v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;->numberView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;

    invoke-direct {v0}, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;-><init>()V

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;->nameView:Landroid/widget/TextView;

    const v2, 0x7f0801b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$ServiceNumberListItemCache;->numberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
