W.addUserInput = ->

  if W.isVr
    W.controls = new THREE.DeviceOrientationControls W.camera, true
    W.controls.autoAlign = false # maintain compass with real world
    W.controls.connect()
    W.controls.update()
  else
    W.controls = new THREE.FirstPersonControls(W.camera)
    W.controls.movementSpeed = 10