.class public Lcom/android/settings/premiumwatch/WatchStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WatchStyleSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mStyleItem:[Ljava/lang/String;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mStyleState:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "WatchStyleSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f0901a9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f090d58

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v1, 0x7f04021b

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b056d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "premium_watch_style_option"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020452

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09185d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09185e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09185f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091860

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04021c

    sget-object v5, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleItem:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {v1, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020453

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020454

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020455

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    :goto_0
    const-string v0, "WatchStyleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick selected style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020452

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020453

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020454

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020455

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v0, "WatchStyleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected, mStyleState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/WatchStyleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "watch_style_value"

    iget v1, p0, Lcom/android/settings/premiumwatch/WatchStyleSettings;->mStyleState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
