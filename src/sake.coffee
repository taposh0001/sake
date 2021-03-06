import exec   from 'executive'
import {join} from 'path'

import invoke  from './invoke'
import running from './running'
import task    from './task'
import tasks   from './tasks'
import use     from './use'

install = ->
  # Ensure local node_modules bin is on the front of $PATH
  binPath = join process.cwd(), 'node_modules/', '.bin'
  process.env.PATH = ([binPath].concat process.env.PATH.split ':').join ':'

  global.exec    = exec
  global.invoke  = invoke
  global.running = running
  global.task    = task
  global.tasks   = tasks
  global.use     = use

export {
  invoke
  running
  task
  tasks
  use
}

export default sake = install: install
