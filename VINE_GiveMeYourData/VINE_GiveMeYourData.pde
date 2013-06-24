


byte[] RAW_API_KEY = {-79, -66, -66, -33, -65, -35, -84, -94, -97, -62, -50, -61, -55, -31, -92, -77, -48, -87, -93, -50, -98};
private static final byte[] RAW_API_SECRET = { 
  -32, -54, -65, -34, -29, -31, -27, -33, -48, -50, -63, -62, -80, -56, -94, -52, -89, -91, -53, -29, -82, -51, -47, -44, -55, -30, -50, -84, -51, -84, -52, -60, -31, -89, -80, -77, -45, -85, -97, -76, -101, -94
};

public static String transform(byte paramByte, byte[] paramArrayOfByte)
{
  StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length);
  int i = paramArrayOfByte.length;
  for (int j = 0; j < i; j++)
    localStringBuilder.append((char)(paramByte - paramArrayOfByte[j]));
  return localStringBuilder.toString();
}

void setup() {
    size(1280,720);
    background(4, 5, 6);
}

void draw() {
  textSize(30);
  text("GIVE ME YOUR DATA!! ....Please?", 10, 30);
  text("VINE API KEYS", 10, 60);
  text("API_KEY: "+ transform((byte)21, RAW_API_KEY), 10, 90); 
  text("API_SECRET: "+transform((byte)21, RAW_API_SECRET), 10, 120);
  textSize(20);
  text("note these might not work...but this is the transform method from the code and static byte[] array baked in the Android App", 10, 150); 
}

