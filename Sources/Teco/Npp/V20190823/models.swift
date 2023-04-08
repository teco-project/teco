//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Npp {
    /// 话单详情
    public struct CallBackCdr: TCOutputModel {
        /// 呼叫通话 ID
        public let callId: String

        /// 主叫号码
        public let src: String

        /// 被叫号码
        public let dst: String

        /// 主叫呼叫开始时间
        public let startSrcCallTime: String

        /// 主叫响铃开始时间
        public let startSrcRingTime: String

        /// 主叫接听时间
        public let srcAcceptTime: String

        /// 被叫呼叫开始时间
        public let startDstCallTime: String

        /// 被叫响铃开始时间
        public let startDstRingTime: String

        /// 被叫接听时间
        public let dstAcceptTime: String

        /// 用户挂机通话结束时间
        public let endCallTime: String

        /// 通话最后状态：0：未知状态 1：正常通话 2：主叫未接 3：主叫接听，被叫未接 4：主叫未接通 5：被叫未接通
        public let callEndStatus: String

        /// 通话计费时间
        public let duration: String

        /// 录音 URL，如果不录音或录音失败，该值为空
        public let recordUrl: String

        /// 通话类型(1: VOIP 2:IP TO PSTN 3: PSTN TO PSTN)，如果话单中没有该字段，默认值为回拨 3 (PSTN TO PSTN)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callType: String?

        /// 同回拨请求中的 bizId，如果回拨请求中带 bizId 会有该字段返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizId: String?

        /// 订单 ID,最大长度不超过 64 个字节，对于一些有订单状态 App 相关应用（如达人帮接入 App 应用)，该字段只在帐单中带上，其它回调不附带该字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderId: String?

        enum CodingKeys: String, CodingKey {
            case callId = "CallId"
            case src = "Src"
            case dst = "Dst"
            case startSrcCallTime = "StartSrcCallTime"
            case startSrcRingTime = "StartSrcRingTime"
            case srcAcceptTime = "SrcAcceptTime"
            case startDstCallTime = "StartDstCallTime"
            case startDstRingTime = "StartDstRingTime"
            case dstAcceptTime = "DstAcceptTime"
            case endCallTime = "EndCallTime"
            case callEndStatus = "CallEndStatus"
            case duration = "Duration"
            case recordUrl = "RecordUrl"
            case callType = "CallType"
            case bizId = "BizId"
            case orderId = "OrderId"
        }
    }

    /// 回拨号码字段
    public struct CallBackPhoneCode: TCOutputModel {
        /// 国家码，统一以 00 开头
        public let nation: String

        /// 号码（固话区号前加 0，如075586013388）
        public let phone: String

        enum CodingKeys: String, CodingKey {
            case nation = "Nation"
            case phone = "Phone"
        }
    }

    /// 对应按键操作,如果没有结构体里定义按键操作用户按键以后都从 interruptPrompt 重新播放
    public struct KeyList: TCInputModel {
        /// 用户按键（0-9、*、#、A-D)
        public let key: String

        /// 1: 呼通被叫 2：interruptPrompt 重播提示 3：拆线
        public let operate: String

        public init(key: String, operate: String) {
            self.key = key
            self.operate = operate
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case operate = "Operate"
        }
    }

    /// 结构体，主叫呼叫预处理操作，根据不同操作确认是否呼通被叫。如需使用，本结构体需要与 keyList 结构体配合使用，此时这两个参数都为必填项
    public struct RreCallerHandle: TCInputModel {
        /// 呼叫主叫以后，给主叫用户的语音提示，播放该提示时用户所有按键无效
        public let readPrompt: String

        /// 可中断提示，播放该提示时，用户可以按键
        public let interruptPrompt: String

        /// 对应按键操作,如果没有结构体里定义按键操作用户按键以后都从 interruptPrompt 重新播放
        public let keyList: [KeyList]

        /// 最多重复播放次数，超过该次数拆线
        public let repeatTimes: String

        /// 用户按键回调通知地址，如果为空不回调
        public let keyPressUrl: String

        /// 提示音男声女声：1女声，2男声。默认女声
        public let promptGender: String

        public init(readPrompt: String, interruptPrompt: String, keyList: [KeyList], repeatTimes: String, keyPressUrl: String, promptGender: String) {
            self.readPrompt = readPrompt
            self.interruptPrompt = interruptPrompt
            self.keyList = keyList
            self.repeatTimes = repeatTimes
            self.keyPressUrl = keyPressUrl
            self.promptGender = promptGender
        }

        enum CodingKeys: String, CodingKey {
            case readPrompt = "ReadPrompt"
            case interruptPrompt = "InterruptPrompt"
            case keyList = "KeyList"
            case repeatTimes = "RepeatTimes"
            case keyPressUrl = "KeyPressUrl"
            case promptGender = "PromptGender"
        }
    }

    /// 直拨话单详情
    public struct VirturalNumCdr: TCOutputModel {
        /// 呼叫通话 ID
        public let callId: String

        /// 双方号码 + 中间号绑定 ID，该 ID 全局唯一
        public let bindId: String

        /// 主叫号码
        public let src: String

        /// 被叫号码
        public let dst: String

        /// 主叫通讯录直拨虚拟保护号码
        public let dstVirtualNum: String

        /// 虚拟保护号码平台收到呼叫时间
        public let callCenterAcceptTime: String

        /// 被叫呼叫开始时间
        public let startDstCallTime: String

        /// 被叫响铃开始时间
        public let startDstRingTime: String

        /// 被叫接听时间
        public let dstAcceptTime: String

        /// 用户挂机通话结束时间
        public let endCallTime: String

        /// 通话最后状态：0：未知状态 1：正常通话 2：查询呼叫转移被叫号异常 3：未接通 4：未接听 5：拒接挂断 6：关机 7：空号 8：通话中 9：欠费 10：运营商线路或平台异常
        public let callEndStatus: String

        /// 主叫接通虚拟保护号码到通话结束通话时间
        public let srcDuration: String

        /// 呼叫转接被叫接通到通话结束通话时间
        public let dstDuration: String

        /// 录音 URL，如果不录音或录音失败，该值为空
        public let recordUrl: String

        enum CodingKeys: String, CodingKey {
            case callId = "CallId"
            case bindId = "BindId"
            case src = "Src"
            case dst = "Dst"
            case dstVirtualNum = "DstVirtualNum"
            case callCenterAcceptTime = "CallCenterAcceptTime"
            case startDstCallTime = "StartDstCallTime"
            case startDstRingTime = "StartDstRingTime"
            case dstAcceptTime = "DstAcceptTime"
            case endCallTime = "EndCallTime"
            case callEndStatus = "CallEndStatus"
            case srcDuration = "SrcDuration"
            case dstDuration = "DstDuration"
            case recordUrl = "RecordUrl"
        }
    }
}
