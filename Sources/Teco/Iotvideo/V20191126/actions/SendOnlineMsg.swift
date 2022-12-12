//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideo {
    /// SendOnlineMsg请求参数结构体
    public struct SendOnlineMsgRequest: TCRequestModel {
        /// 设备TID
        public let tid: String
        
        /// 如果设备处于休眠状态，是否唤醒设备
        public let wakeup: Bool
        
        /// 等待回应类型
        /// 0：不等待设备回应直接响应请求;
        /// 1：要求设备确认消息已接收,或等待超时后返回;
        /// 2：要求设备进行响应处理,收到设备的响应数据后,将设备响应数据回应给请求方;
        public let waitResp: UInt64
        
        /// 消息主题
        public let msgTopic: String
        
        /// 消息内容，最大长度不超过8k字节
        public let msgContent: String
        
        public init (tid: String, wakeup: Bool, waitResp: UInt64, msgTopic: String, msgContent: String) {
            self.tid = tid
            self.wakeup = wakeup
            self.waitResp = waitResp
            self.msgTopic = msgTopic
            self.msgContent = msgContent
        }
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
            case wakeup = "Wakeup"
            case waitResp = "WaitResp"
            case msgTopic = "MsgTopic"
            case msgContent = "MsgContent"
        }
    }
    
    /// SendOnlineMsg返回参数结构体
    public struct SendOnlineMsgResponse: TCResponseModel {
        /// 若返回此项则表明需要用户用此taskID进行查询请求是否成功(只有waitresp不等于0的情况下才可能会返回该taskID项)
        public let taskId: String
        
        /// 设备响应信息
        public let data: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 向设备发送在线消息
    ///
    /// 本接口（SendOnlineMsg）用于向设备发送在线消息。
    /// 注意：
    /// 若设备当前不在线,会直接返回错误;
    /// 若设备网络出现异常时,消息发送可能超时,超时等待最长时间为3秒.waitresp非0情况下,会导致本接口阻塞3秒。
    @inlinable
    public func sendOnlineMsg(_ input: SendOnlineMsgRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendOnlineMsgResponse > {
        self.client.execute(action: "SendOnlineMsg", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 向设备发送在线消息
    ///
    /// 本接口（SendOnlineMsg）用于向设备发送在线消息。
    /// 注意：
    /// 若设备当前不在线,会直接返回错误;
    /// 若设备网络出现异常时,消息发送可能超时,超时等待最长时间为3秒.waitresp非0情况下,会导致本接口阻塞3秒。
    @inlinable
    public func sendOnlineMsg(_ input: SendOnlineMsgRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendOnlineMsgResponse {
        try await self.client.execute(action: "SendOnlineMsg", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
