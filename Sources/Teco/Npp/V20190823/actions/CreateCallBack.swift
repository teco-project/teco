//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Npp {
    /// 回拨呼叫请求
    ///
    /// 回拨呼叫请求
    @inlinable
    public func createCallBack(_ input: CreateCallBackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCallBackResponse > {
        self.client.execute(action: "CreateCallBack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 回拨呼叫请求
    ///
    /// 回拨呼叫请求
    @inlinable
    public func createCallBack(_ input: CreateCallBackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCallBackResponse {
        try await self.client.execute(action: "CreateCallBack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCallBack请求参数结构体
    public struct CreateCallBackRequest: TCRequestModel {
        /// 业务appid
        public let bizAppId: String
        
        /// 主叫号码(必须为 11 位手机号，号码前加 0086，如 008613631686024)
        public let src: String
        
        /// 被叫号码(必须为 11 位手机或固话号码,号码前加 0086，如008613631686024，固话如：0086075586013388)
        public let dst: String
        
        /// 主叫显示系统分配的固话号码，如不填显示随机分配号码
        public let srcDisplayNum: String?
        
        /// 被叫显示系统分配的固话号码，如不填显示随机分配号码
        public let dstDisplayNum: String?
        
        /// 是否录音，0 表示不录音，1 表示录音。默认为不录音
        public let record: String?
        
        /// 允许最大通话时间，不填默认为 30 分钟（单位：分钟）
        public let maxAllowTime: String?
        
        /// 主叫发起呼叫状态：1 被叫发起呼叫状态：256 主叫响铃状态：2 被叫响铃状态：512 主叫接听状态：4 被叫接听状态：1024 主叫拒绝接听状态：8 被叫拒绝接听状态：2048 主叫正常挂机状态：16 被叫正常挂机状态：4096 主叫呼叫异常：32 被叫呼叫异常：8192
        /// 例如：当值为 0：表示所有状态不需要推送；当值为 4：表示只要推送主叫接听状态；当值为 16191：表示所有状态都需要推送(上面所有值和)
        public let statusFlag: String?
        
        /// 状态回调通知地址，正式环境可以配置默认推送地址
        public let statusUrl: String?
        
        /// 话单回调通知地址，正式环境可以配置默认推送地址
        public let hangupUrl: String?
        
        /// 录单 URL 回调通知地址，正式环境可以配置默认推送地址
        public let recordUrl: String?
        
        /// 业务应用 key，业务用该 key 可以区分内部业务或客户产品等，该 key 需保证在该 appId 下全局唯一，最大长度不超过 64 个字节，bizId 只能包含数字、字母。
        public let bizId: String?
        
        /// 最后一次呼叫 callId，带上该字段以后，平台会参考该 callId 分配线路，优先不分配该 callId 通话线路（注：谨慎使用，这个会影响线路调度）
        public let lastCallId: String?
        
        /// 结构体，主叫呼叫预处理操作，根据不同操作确认是否呼通被叫。如需使用，本结构体需要与 keyList 结构体配合使用，此时这两个参数都为必填项
        public let preCallerHandle: RreCallerHandle
        
        /// 订单 ID，最大长度不超过64个字节，对于一些有订单状态 App 相关应用使用（如达人帮接入 App 应用)，该字段只在帐单中带上，其它回调不附带该字段
        public let orderId: String?
        
        public init (bizAppId: String, src: String, dst: String, srcDisplayNum: String?, dstDisplayNum: String?, record: String?, maxAllowTime: String?, statusFlag: String?, statusUrl: String?, hangupUrl: String?, recordUrl: String?, bizId: String?, lastCallId: String?, preCallerHandle: RreCallerHandle, orderId: String?) {
            self.bizAppId = bizAppId
            self.src = src
            self.dst = dst
            self.srcDisplayNum = srcDisplayNum
            self.dstDisplayNum = dstDisplayNum
            self.record = record
            self.maxAllowTime = maxAllowTime
            self.statusFlag = statusFlag
            self.statusUrl = statusUrl
            self.hangupUrl = hangupUrl
            self.recordUrl = recordUrl
            self.bizId = bizId
            self.lastCallId = lastCallId
            self.preCallerHandle = preCallerHandle
            self.orderId = orderId
        }
        
        enum CodingKeys: String, CodingKey {
            case bizAppId = "BizAppId"
            case src = "Src"
            case dst = "Dst"
            case srcDisplayNum = "SrcDisplayNum"
            case dstDisplayNum = "DstDisplayNum"
            case record = "Record"
            case maxAllowTime = "MaxAllowTime"
            case statusFlag = "StatusFlag"
            case statusUrl = "StatusUrl"
            case hangupUrl = "HangupUrl"
            case recordUrl = "RecordUrl"
            case bizId = "BizId"
            case lastCallId = "LastCallId"
            case preCallerHandle = "PreCallerHandle"
            case orderId = "OrderId"
        }
    }
    
    /// CreateCallBack返回参数结构体
    public struct CreateCallBackResponse: TCResponseModel {
        /// 话单id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callId: String?
        
        /// 主叫显示系统分配的固话号码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let srcDisplayNum: String?
        
        /// 被叫显示系统分配的固话号码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dstDisplayNum: String?
        
        /// 错误码
        public let errorCode: String
        
        /// 错误原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case callId = "CallId"
            case srcDisplayNum = "SrcDisplayNum"
            case dstDisplayNum = "DstDisplayNum"
            case errorCode = "ErrorCode"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
}