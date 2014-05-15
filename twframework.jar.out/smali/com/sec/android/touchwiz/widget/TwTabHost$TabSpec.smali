.class public Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
.super Ljava/lang/Object;
.source "TwTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/String;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIdContentStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;ILcom/sec/android/touchwiz/widget/TwTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 4

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$IntentContentStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    return-object p0
.end method

.method public setContent(Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwTabHost$FactoryContentStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$ContentStrategy;

    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$ViewIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;

    return-object p0
.end method
