int[][] a = {
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

int board[][] = new int [9][9]; // store the number form ver a
int blank[] = new int [7]; //store the random number


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
                if(val == blank[k]) {val = 0;}
            }
            rows[j] = val;
        }
        board[i] = rows;
    }
}

void setup() {
    SetNumberInBoard();
    println("___________________________________");
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9; j++) {
            print(board[i][j] + " | ");
        }
        println();
    }
    println("___________________________________");
}
