import { storiesOf } from '@storybook/react'
import Keyinput from '../components/KeyInput'
# import { Hello } from '../../dist/bundle'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom { Keyinput }

export default ->

  storiesOf 'Keyinput', module

  .add 'index'

  , =>

    { c_Keyinput } = CFX

    c_Keyinput {}
