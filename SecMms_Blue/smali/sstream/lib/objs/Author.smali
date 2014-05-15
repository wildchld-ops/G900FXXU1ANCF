.class public Lsstream/lib/objs/Author;
.super Ljava/lang/Object;
.source "Author.java"


# instance fields
.field private image:Lsstream/lib/objs/Image;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsstream/lib/objs/Image;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsstream/lib/objs/Author;->name:Ljava/lang/String;

    iput-object p2, p0, Lsstream/lib/objs/Author;->image:Lsstream/lib/objs/Image;

    return-void
.end method


# virtual methods
.method public getImage()Lsstream/lib/objs/Image;
    .locals 1

    iget-object v0, p0, Lsstream/lib/objs/Author;->image:Lsstream/lib/objs/Image;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsstream/lib/objs/Author;->name:Ljava/lang/String;

    return-object v0
.end method
