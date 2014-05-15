.class public Lcom/android/mms/ui/BubbleTypePicker;
.super Lcom/android/mms/ui/MessageBubbleActivity;
.source "BubbleTypePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    }
.end annotation


# static fields
.field private static final BUBBLE_RECEIVE_TYPE:I = 0x1

.field private static final BUBBLE_RECEIVE_VERTICAL_TYPE:I = 0x3

.field private static final BUBBLE_SEND_TYPE:I = 0x0

.field private static final BUBBLE_SEND_VERTICAL_TYPE:I = 0x2

.field private static final BUBBLE_TYPE:[Ljava/lang/String; = null

.field public static final BUBBLE_TYPE_DEFAULT:Ljava/lang/String; = "Default"

.field public static final BUBBLE_TYPE_LABEL:Ljava/lang/String; = "Label"

.field public static final BUBBLE_TYPE_MODERN:Ljava/lang/String; = "Modern"

.field public static final BUBBLE_TYPE_ORIGAMI:Ljava/lang/String; = "Origami"

.field public static final BUBBLE_TYPE_POP:Ljava/lang/String; = "Pop"

.field public static final BUBBLE_TYPE_POST:Ljava/lang/String; = "Post"

.field private static final TAG:Ljava/lang/String; = "Mms/BubbleTypePicker"


# instance fields
.field private final BUBBLE_STYLE_IMAGE_HEIGHT:I

.field private final BUBBLE_STYLE_IMAGE_V_HEIGHT:I

.field private final BUBBLE_STYLE_IMAGE_V_WIDTH:I

.field private final BUBBLE_STYLE_IMAGE_WIDTH:I

.field private MoveToSelectedReceive:Z

.field private MoveToSelectedSent:Z

.field private mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

.field private mIsRecAnimating:Z

.field private mIsSentAnimating:Z

.field private mMenuSave:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Origami"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Label"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Modern"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Post"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Default"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageBubbleActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    const/16 v0, 0x8a

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_WIDTH:I

    const/16 v0, 0x69

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_HEIGHT:I

    const/16 v0, 0x7a

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_V_WIDTH:I

    const/16 v0, 0x5e

    iput v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_STYLE_IMAGE_V_HEIGHT:I

    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsRecAnimating:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsRecAnimating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BubbleTypePicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleSentStyle(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BubbleTypePicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BubbleTypePicker;->saveBubbleReceiveStyle(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BubbleTypePicker;)[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPositionVertical()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BubbleTypePicker;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mMenuSave:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/BubbleTypePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/BubbleTypePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/BubbleTypePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    return p1
.end method

.method private makeBubbleVertical(I)V
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    if-ne p1, v5, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    :goto_0
    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_7

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    new-instance v3, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    invoke-direct {v3, p0, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;-><init>(Lcom/android/mms/ui/BubbleTypePicker;Landroid/content/Context;I)V

    aput-object v3, v2, p1

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$7;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$7;-><init>(Lcom/android/mms/ui/BubbleTypePicker;I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$8;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/BubbleTypePicker$8;-><init>(Lcom/android/mms/ui/BubbleTypePicker;I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BubbleTypePicker$9;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_a

    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-ne v2, v4, :cond_9

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelection(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    goto :goto_0

    :cond_6
    if-ne p1, v4, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    goto :goto_0

    :cond_7
    if-eq p1, v5, :cond_8

    if-ne p1, v3, :cond_1

    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setScrollPositionVertical()V

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-ne v2, v4, :cond_b

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    :cond_b
    iget v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2
.end method

.method private saveBubbleReceiveStyle(I)V
    .locals 5

    sget-object v3, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_RECEIVE_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    rem-int/lit8 v2, v3, 0xa

    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private saveBubbleSentStyle(I)V
    .locals 5

    sget-object v3, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_SEND_STYLE_ID:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_bubble_style"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0xa

    const-string v3, "pref_key_bubble_style"

    mul-int/lit8 v4, v2, 0xa

    add-int/2addr v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setScrollPosition()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$10;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$11;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setScrollPositionVertical()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$12;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$13;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final makeView()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/android/mms/ui/MessageBubbleActivity;->makeView()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setActionBar()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGSScollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mBGScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->refreshLayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mIsRecAnimating:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->refreshLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageBubbleActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$1;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b0186

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$2;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b018e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$3;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b018b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/mms/ui/BubbleTypePicker$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BubbleTypePicker$4;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->doSentAnimation:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageBubbleActivity;->doReceiveAnimatin:Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    iput-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->makeView()V

    iput-boolean v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->setWindowResizingEventHandler()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    sget-object v2, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_SEND_STYLE_ID:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v2, Lcom/android/mms/ui/BubbleTypePicker;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/MessageBubbleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshLayout()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mLayoutHorizontal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedSent:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/BubbleTypePicker;->MoveToSelectedReceive:Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V

    goto :goto_0
.end method

.method public setActionBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/BubbleTypePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mActionBar:Landroid/app/ActionBar;

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040039

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mCancelButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BubbleTypePicker$5;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mSaveButton:Landroid/widget/Button;

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0c00da

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    sget-object v1, Lcom/android/mms/ui/BubbleTypePicker;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/BubbleTypePicker$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BubbleTypePicker$6;-><init>(Lcom/android/mms/ui/BubbleTypePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
