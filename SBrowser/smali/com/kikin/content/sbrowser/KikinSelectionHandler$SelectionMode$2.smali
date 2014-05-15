.class final enum Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode$2;
.super Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;
.source "KikinSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionMode;-><init>(Ljava/lang/String;ILcom/kikin/content/sbrowser/KikinSelectionHandler$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SELECTION"

    return-object v0
.end method
