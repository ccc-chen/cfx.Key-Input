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

export default ->

  render: ->

    {
      c_div
      c_InputItem
      c_List
      c_HotKeys
    } = CFX
    
    keyMap = 
      clear: 'enter'

    handlers = 
      clear: (
        -> @refs.RefInput.clearInput()
      ).bind @

    c_HotKeys {
      keyMap
      handlers
    }
    ,
      c_List {}
      ,
        c_InputItem {
          ref: 'RefInput'
          placeholder: '请输入你想输入的内容'
          onChange: -> dd 'Hello World!!!'
          clear: true
        }