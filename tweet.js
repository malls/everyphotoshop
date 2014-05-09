var textFile = File("your/location/tweet.txt");

if(textFile.exists){
        textFile.remove();
};

textFile.encoding = "UTF8";
textFile.open("e", "TEXT", "????");
textFile.write(app.activeDocument.name);
textFile.close();