.class public Lcom/samsung/contacts/detail/LinkedContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "LinkedContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;,
        Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLinkedContactEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/LinkedContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/LinkedContactEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0113

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mLinkedContactEntryList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/LinkedContactAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/LinkedContactAdapter;)Lcom/samsung/contacts/detail/LinkedContactFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    return-object v0
.end method

.method private bindPhoto(Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;IJ)V
    .locals 5

    iput p2, p1, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->position:I

    iput-wide p3, p1, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->targetRawContactId:J

    iget-object v0, p1, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    invoke-static {p3, p4}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;-><init>(Landroid/content/Context;Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/detail/LinkedContactAdapter$BitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bindView(Landroid/view/View;Lcom/samsung/contacts/detail/LinkedContactEntry;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/samsung/contacts/detail/LinkedContactEntry;->accountDisplayLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/samsung/contacts/detail/LinkedContactEntry;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p2, Lcom/samsung/contacts/detail/LinkedContactEntry;->isEnable:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :goto_0
    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/detail/LinkedContactAdapter$1;-><init>(Lcom/samsung/contacts/detail/LinkedContactAdapter;Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/detail/LinkedContactAdapter$2;-><init>(Lcom/samsung/contacts/detail/LinkedContactAdapter;Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300d7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;-><init>(Lcom/samsung/contacts/detail/LinkedContactAdapter;)V

    const v2, 0x7f080236

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    const v2, 0x7f080238

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    const v2, 0x7f080237

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/LinearLayout;

    const v2, 0x7f08023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mLinkedContactEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mLinkedContactEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mLinkedContactEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mLinkedContactEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/LinkedContactEntry;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;

    iget-wide v3, v0, Lcom/samsung/contacts/detail/LinkedContactEntry;->rawContactId:J

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->bindPhoto(Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;IJ)V

    invoke-direct {p0, v1, v0}, Lcom/samsung/contacts/detail/LinkedContactAdapter;->bindView(Landroid/view/View;Lcom/samsung/contacts/detail/LinkedContactEntry;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method setTargetFragment(Lcom/samsung/contacts/detail/LinkedContactFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter;->mFragment:Lcom/samsung/contacts/detail/LinkedContactFragment;

    return-void
.end method
