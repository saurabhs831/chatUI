export default {
	myVar1: [],
	myVar2: {},
	myFun1 () {

		{{	getUser.run();
			let data = [];
			data = getUser.data;
			const isInput1Exist = data.some(item => item.userName === userName.text);
			if(isInput1Exist){
				let index = data.findIndex(item => item.userName === userName.text)
				console.log(index)
				if(data[index].password === password.text && data[index].userName === userName.text){
					let ssodata = data[index].sso;// Retrieve the SSO value
					storeValue("ssodata", ssodata),
						console.log(data[index].password, data[index].userName, ssodata);

					console.log('password match and user id match')
					if (data[index].role === "agent"){
						navigateTo('home')
						showAlert('welcome agent', 'success')
						console.log("welcome Agent")}
					else {
						navigateTo("home")
						showAlert('welcome Manager', 'success')
						console.log("welcome manager")}
				}
			} else {console.log("username or password incorrect")
							showAlert('username or password incorrect', 'error')
						 } 
		 }}
	}
}

