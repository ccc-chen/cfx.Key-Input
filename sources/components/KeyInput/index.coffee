import { ddbs as dd } from 'ddeyes'
import React, { Component } from 'react'
import { HotKeys } from 'react-hotkeys'
import { prefixDom } from 'cfx.dom'
import {
  InputItem
  List
} from 'antd-mobile'

CFX = prefixDom {
  'div'
  InputItem
  List
  HotKeys
}

class StoryKeyInput extends Component

  constroutor: (props) ->
    super props
    @state =
      todo: ''
    @

  render: ->

    {
      c_div
      c_InputItem
      c_List
      c_HotKeys
    } = CFX

    c_HotKeys
      keyMap:
        submit: 'enter'
      handlers:
        submit: ( ->
          console.log @state.todo
          @refs.RefInput.clearInput()
        ).bind @
    ,
      c_List {}
      ,
        c_InputItem
          ref: 'RefInput'
          placeholder: '请输入你想输入的内容'
          onChange: (
            (v) =>
              @setState todo: v         
          ).bind @
          clear: true

export default StoryKeyInput          