.class public Lorg/chromium/content/browser/NavigationHistory;
.super Ljava/lang/Object;
.source "NavigationHistory.java"


# instance fields
.field private entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/chromium/content/browser/NavigationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentEntryIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/NavigationHistory;->entries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/chromium/content/browser/NavigationEntry;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationHistory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentEntryIndex()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/NavigationHistory;->mCurrentEntryIndex:I

    return v0
.end method

.method public getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationHistory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/NavigationEntry;

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/NavigationHistory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method setCurrentEntryIndex(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/NavigationHistory;->mCurrentEntryIndex:I

    return-void
.end method
