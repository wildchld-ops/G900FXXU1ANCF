.class public Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;
.super Ljava/lang/Object;
.source "SbrContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomMenuItem"
.end annotation


# instance fields
.field public final mAction:I

.field public final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;->mLabel:Ljava/lang/String;

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo$CustomMenuItem;->mAction:I

    return-void
.end method
