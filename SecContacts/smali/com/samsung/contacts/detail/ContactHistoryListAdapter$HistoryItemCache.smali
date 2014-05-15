.class Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryItemCache"
.end annotation


# instance fields
.field private checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private iSendType:Landroid/widget/ImageView;

.field private iType:Landroid/widget/ImageView;

.field private listItemView:Landroid/widget/LinearLayout;

.field private tContents:Landroid/widget/TextView;

.field private tDuration:Landroid/widget/TextView;

.field private tNumber:Landroid/widget/TextView;

.field private tTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->this$0:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;Lcom/samsung/contacts/detail/ContactHistoryListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->listItemView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iSendType:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tTime:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tDuration:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tNumber:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->tContents:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemCache;->iType:Landroid/widget/ImageView;

    return-object p1
.end method
