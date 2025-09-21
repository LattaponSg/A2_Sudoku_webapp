let a = [
    [8,7,6,5,4,3,1,9,2],
    [5,4,3,2,1,9,7,6,8],
    [2,1,9,8,7,6,4,3,5],

    [1,9,8,7,6,5,3,2,4],
    [4,3,2,1,9,8,6,5,7],
    [7,6,5,4,3,2,9,8,1],

    [3,2,1,9,8,7,5,4,6],
    [6,5,4,3,2,1,8,7,9],
    [9,8,7,6,5,4,2,1,3]
];

let b = [];
let blank = [];

function random_blank() {
    blank = [];
    for (let i = 0; i < 7; i++) {
        blank.push(1 + Math.floor(Math.random() * 9));
    }
}

function set_array_b() {
    b = [];
    for (let r = 0; r < 9; r++) {
        random_blank();
        let row = [];
        for (let c = 0; c < 9; c++) {
            let val = a[r][c];
            for (let i = 0; i < blank.length; i++) {
                if (val == blank[i]) {
                    val = 0;          
                }
            }
            row.push(val);
        }
        b.push(row);
    }
}