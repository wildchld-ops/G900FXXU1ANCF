.class public Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;
.super Landroid/app/Activity;
.source "CallDetailAllCallsActivity.java"


# static fields
.field private static mLogNumber:I


# instance fields
.field private mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onHomeSelected()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->configureActionBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->configureActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->stopRequestProcessing()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->onHomeSelected()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "number=\""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC"

    invoke-virtual {p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    :goto_0
    new-instance v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/calllog/CallDetailAllCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    sput v0, Lcom/samsung/dialer/calllog/CallDetailAllCallsActivity;->mLogNumber:I

    goto :goto_0
.end method
