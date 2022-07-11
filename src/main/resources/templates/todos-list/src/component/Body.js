import React from 'react'

export default function Body() {
    return (
        <>
            <div className="container">
                <div className="mb-3 row" >
                    <label for="staticEmail" className="col-sm-2 col-form-label  " >Email</label>
                    <div className="col-sm-10 form-control-plaintext">
                        <input type="text" readonly className="form-control-plaintext border border-danger" id="staticEmail" value="email@example.com" />
                    </div>
                </div>
                <div className="mb-3 row">
                    <label for="inputPassword" className="col-sm-2 col-form-label">Password</label>
                    <div className="col-sm-10 form-control-plaintext" >
                        <input type="password" className="form-control border border-danger" id="inputPassword" />
                    </div>
                </div>
                <div className="">
                    <input class="btn btn-primary" type="submit" value="Submit"></input>
                </div>
            </div>
        </>
    )
}
