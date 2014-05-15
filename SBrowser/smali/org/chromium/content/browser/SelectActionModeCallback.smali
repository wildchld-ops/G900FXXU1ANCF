.class public Lorg/chromium/content/browser/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MODE_ATTRS:[I = null

.field private static final COPY_ATTR_INDEX:I = 0x2

.field private static final CUT_ATTR_INDEX:I = 0x1

.field private static final ID_COPY:I = 0x1

.field private static final ID_CUT:I = 0x4

.field private static final ID_PASTE:I = 0x5

.field private static final ID_SEARCH:I = 0x3

.field private static final ID_SELECTALL:I = 0x0

.field private static final ID_SHARE:I = 0x2

.field private static final PASTE_ATTR_INDEX:I = 0x3

.field private static final SELECT_ALL_ATTR_INDEX:I


# instance fields
.field private mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

.field private mContext:Landroid/content/Context;

.field private mEditable:Z

.field private final mIncognito:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/content/browser/SelectActionModeCallback;->ACTION_MODE_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7et 0x3t 0x1t 0x1t
        0x11t 0x3t 0x1t 0x1t
        0x12t 0x3t 0x1t 0x1t
        0x13t 0x3t 0x1t 0x1t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    iput-boolean p3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIncognito:Z

    return-void
.end method

.method private canPaste()Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    return v1
.end method

.method private createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/chromium/content/browser/SelectActionModeCallback;->ACTION_MODE_ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x104000d

    invoke-interface {p2, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x61

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const v2, 0x1040003

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x78

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const v1, 0x1040001

    invoke-interface {p2, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x63

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    const v2, 0x104000b

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->isShareHandlerAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c0054

    invoke-interface {p2, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200a9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIncognito:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->isWebSearchAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0c004a

    invoke-interface {p2, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200a7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isShareHandlerAvailable()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWebSearchAvailable()Z
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "new_search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v4}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_0
    iget-object v4, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v4}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->selectAll()Z

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v4}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->cut()Z

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v4}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->copy()Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v4}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->paste()Z

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0054

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "new_search"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "query"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.browser.application_id"

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SelectActionModeCallback;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onDestroyActionMode()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SelectActionModeCallback;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
