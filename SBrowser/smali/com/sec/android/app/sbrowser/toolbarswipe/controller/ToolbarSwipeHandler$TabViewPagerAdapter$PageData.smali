.class Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;
.super Ljava/lang/Object;
.source "ToolbarSwipeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageData"
.end annotation


# instance fields
.field private mCanGoBack:Z

.field private mCanGoForward:Z

.field private mIsBookmarked:Z

.field private mIsIncognito:Z

.field private mIsQuickLaunch:Z

.field private mIsReaderModeEnabled:Z

.field private mIsSecurePage:Z

.field private mLayout:Landroid/view/View;

.field private mSecurityLevel:I

.field private mUrl:Ljava/lang/String;

.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->this$1:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsQuickLaunch:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mSecurityLevel:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsSecurePage:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsBookmarked:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsReaderModeEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsIncognito:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoBack:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoForward:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mSecurityLevel:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mSecurityLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsSecurePage:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsSecurePage:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsQuickLaunch:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsQuickLaunch:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsBookmarked:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsBookmarked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsReaderModeEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsReaderModeEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsIncognito:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mIsIncognito:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoBack:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoBack:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoForward:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mCanGoForward:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler$TabViewPagerAdapter$PageData;->mLayout:Landroid/view/View;

    return-object p1
.end method
