.class Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;
.super Ljava/lang/Object;
.source "TabDragElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoBarData"
.end annotation


# instance fields
.field private mPreviousSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->this$0:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->mPreviousSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;)Lorg/samsung/chrome/browser/SbrInfoBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->mPreviousSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-object v0
.end method


# virtual methods
.method public setPreviousSbrInfoBarContainer(Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement$InfoBarData;->mPreviousSbrInfoBarContainer:Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    return-void
.end method
