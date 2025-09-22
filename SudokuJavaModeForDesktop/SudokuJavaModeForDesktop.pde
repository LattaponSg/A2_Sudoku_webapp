int a[][] = {
            {8,7,6,5,4,3,1,9,2},
            {5,4,3,2,1,9,7,6,8},
            {2,1,9,8,7,6,4,3,5},

            {1,9,8,7,6,5,3,2,4},
            {4,3,2,1,9,8,6,5,7},
            {7,6,5,4,3,2,9,8,1},

            {3,2,1,9,8,7,5,4,6},
            {6,5,4,3,2,1,8,7,9},
            {9,8,7,6,5,4,2,1,3}
        };

int board[][] = new int [9][9]; // store the number form verible a[][]
int blank[] = new int [7]; //store the random number for make it visible
int CellSize = 50; 
int BoardSize = 9 * CellSize;

int rows , cols; //Check rows and cols in mouse pressed

void setup() {
    size(50*9,50*9);
    textSize(20);
    textAlign(CENTER, CENTER);
    fill(0);
    Board();
    

    SetNumberInBoard();
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9; j++) {
            if(board[i][j] != 0){
                int x = j * CellSize + CellSize / 2;
                int y = i * CellSize + CellSize / 2;
                text(board[i][j], x, y);
            }
        }
    }
    
    
    //    SetNumberInBoard();
    //println("___________________________________");
    //for (int i = 0; i < 9; i++) {
    //    for (int j = 0; j < 9; j++) {
    //        print(board[i][j] + " | ");
    //    }
    //    println();
    //}
    //println("___________________________________");
}

void mousePressed(){ 
    cols = mouseX / CellSize;
    rows = mouseY / CellSize;

    if(true){
        println((1+rows) +" , "+ (1+cols));
    }
}

void keyPressed(){
    if(key >= '1' && key <= '9'){
        textAlign(CENTER, CENTER);
        println(key);
        text(key,cols * CellSize + CellSize/2 ,rows * CellSize + CellSize/2);
    }

}

void Board(){
    for(int i = 0; i <= 9 ; i++){
      if(i % 3 == 0){
          strokeWeight(3);
      }else { strokeWeight(1); }
      
        line(0 , i*CellSize , BoardSize , i * CellSize); 
        line(i*CellSize , 0 , i*CellSize , BoardSize);
    }    
}

void RandomBlank(){
    int i = 0;
    while(i < 7){
        blank[i] = (1+int(random(1,10))); // 1-9
        i++;
    }
}

void SetNumberInBoard(){
    for(int i = 0 ; i < 9 ; i++){
        RandomBlank();
        int rows[] = new int [9];
        for(int j = 0 ;j < 9; j++){
            int val = a[i][j];
            for(int k = 0; k < blank.length ; k++){
                if(val == blank[k]) 
                    {val = 0;}
            }
            rows[j] = val;
        }
        board[i] = rows;
    }
}
