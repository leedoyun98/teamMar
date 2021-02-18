'use strict'
var cmm = cmm || {}
cmm.joinPage = x => {
		$(`#joinPage-btn`).click( e=> {
			location.href = `${x}/move/mem/join`
		})
	}
cmm.loginPage = x => {
		$(`#loginPage-btn`).click( e=> {
			location.href = `${x}/move/mem/login`
		})
	}

