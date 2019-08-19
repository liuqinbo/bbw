let obj = {
    getcookies(key) {
        let arr = document.cookie.split("; ");
        this.arr1 = [];
        for (let i = 0; i < arr.length; i++) {
            let arrTemp = arr[i].split("=");
            this.arr1.push(arrTemp[0]);
            if (arrTemp[0] == key) {
                return arrTemp[1];
            }
        }
    },
    setcookies(key, val, day) {
        if (day) {
            let date = new Date();
            date.setDate(date.getDate() + day);
            document.cookie = key + "=" + val + ";expires=" + date;
            // console.log(date);
            // console.log(document.cookie);
        } else {
            document.cookie = key + "=" + val;
        }
    },
    deletecookies(key) {
        this.setcookies(key, "", -1);
    },
    clearcookies() {
        this.getcookies();
        this.arr1.forEach(element => {
            this.setcookies(element, "", -1);
        });
    }
}
