image_alpha = sin(degtorad(d));
d += 2;
if (dest[0] != x or dest[1] != y)
{
    x += (dest[0] - x) / snapDiv;
    y += (dest[1] - y) / snapDiv;
}
if (d > 180)
    instance_destroy();

