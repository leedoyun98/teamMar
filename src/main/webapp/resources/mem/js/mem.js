'use strict'
var mem = mem || {}

mem.home = x => {
	$(`#home-btn`).click( e => {
	location.href = `${x}`
})
}
mem.join = x => {
	$(`#join-btn`).click( e => {
		$.ajax({
			url:`${x}/members/join`,
			type: 'POST',
			data: JSON.stringify({
				memid: $('#memid').val(),
				password: $('#password').val()
			}),
			dataType: 'json',
			contentType: 'application/json',
			success: data => {
				location.href=`${x}/move/mem/login`
			},
			error: error => {
				alert(`Fail`)
				console.log(`회원가입 실패`)
			}
		})
	})
}
mem.login = x => {
	$(`#login-btn`).click( e =>
	$.ajax({
		url:`${x}/members/login`,
		type: 'POST',
		data: JSON.stringify({
			memid: $('#memid').val(),
			password: $('#password').val()
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: data => {
			if(data.message === 'SUCCESS'){
				sessionStorage.setItem('memid', data.sessionMember.memid)
				sessionStorage.setItem('password', data.sessionMember.password)
				location.href=`${x}/move/board/board`
			}else{
				alert(`로그인 실패`)
				location.reload();
			}
		},
		error: error => {
			alert(`Fail`)
			console.log(`로그인 실패 `)
		}
	})
	)
}
mem.modify = x => {
	$(`#modify-btn`).click( e => {
		$.ajax({
			url:`${x}/members/modify`,
			type:`PUT`,
			data: JSON.stringify({
				memid: sessionStorage.getItem('memid'),
				password: $('#password').val()
			}),
			dataType:`json`,
			contentType:`application/json`,
			success: data => {
				if(data.message === 'SUCCESS'){
					alert('비밀번호 수정 완료')
						location.reload();
						sessionStorage.setItem('password', data.sessionMember.password)
				}else{
					alert('비밀번호 수정 실패')
						location.reload();
				}
			},
			error: error => {
			alert(`Fail`)
			console.log(`비밀번호 수정 실패 `)
			}
		})
	})
}
mem.withdrawal = x => {
	$(`#withdrawal-btn`).click( e => {
			$.ajax({
			url:`${x}/members/withdrawal`,
			type:`DELETE`,
			data: JSON.stringify({
				memid: sessionStorage.getItem('memid')
			}),
			dataType:`json`,
			contentType:`application/json`,
			success: data => {
				if(data.message === 'SUCCESS'){
					alert('회원탈퇴 완료')
						location.href = `${x}`
						sessionStorage.clear()
				}else{
					alert('회원탈퇴 실패')
						location.reload();
				}
			},
			error: error => {
			alert(`Fail`)
			console.log(`회원탈퇴 실패 `)
			}
		})
	})
}
mem.logout = x =>{
	$(`#logout-btn`).click( e => {
		sessionStorage.clear()
		location.href = `${x}`
	})
}