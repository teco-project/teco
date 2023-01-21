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

extension Iotvideo {
    /// ModifyForwardRule请求参数结构体
    public struct ModifyForwardRuleRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 消息类型
        public let msgType: UInt64

        /// 控制台Skey
        public let skey: String

        /// 队列区域
        public let queueRegion: String

        /// 队列类型 0.CMQ 1.CKafka
        public let queueType: UInt64

        /// 临时密钥
        public let consecretid: String?

        /// 实例ID
        public let instanceId: String?

        /// 实例名称
        public let instanceName: String?

        /// 队列或主题ID
        public let queueID: String?

        /// 队列或主题名称
        public let queueName: String?

        public init(productID: String, msgType: UInt64, skey: String, queueRegion: String, queueType: UInt64, consecretid: String? = nil, instanceId: String? = nil, instanceName: String? = nil, queueID: String? = nil, queueName: String? = nil) {
            self.productID = productID
            self.msgType = msgType
            self.skey = skey
            self.queueRegion = queueRegion
            self.queueType = queueType
            self.consecretid = consecretid
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.queueID = queueID
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case msgType = "MsgType"
            case skey = "Skey"
            case queueRegion = "QueueRegion"
            case queueType = "QueueType"
            case consecretid = "Consecretid"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case queueID = "QueueID"
            case queueName = "QueueName"
        }
    }

    /// ModifyForwardRule返回参数结构体
    public struct ModifyForwardRuleResponse: TCResponseModel {
        /// 腾讯云账号
        public let endpoint: String

        /// 产品ID
        public let productID: String

        /// 结果
        public let result: UInt64

        /// 错误信息
        public let errMsg: String

        /// 队列类型 0.CMQ 1.CKafka
        public let queueType: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endpoint = "Endpoint"
            case productID = "ProductID"
            case result = "Result"
            case errMsg = "ErrMsg"
            case queueType = "QueueType"
            case requestId = "RequestId"
        }
    }

    /// 修改转发规则
    @inlinable
    public func modifyForwardRule(_ input: ModifyForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyForwardRuleResponse> {
        self.client.execute(action: "ModifyForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转发规则
    @inlinable
    public func modifyForwardRule(_ input: ModifyForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyForwardRuleResponse {
        try await self.client.execute(action: "ModifyForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改转发规则
    @inlinable
    public func modifyForwardRule(productID: String, msgType: UInt64, skey: String, queueRegion: String, queueType: UInt64, consecretid: String? = nil, instanceId: String? = nil, instanceName: String? = nil, queueID: String? = nil, queueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyForwardRuleResponse> {
        self.modifyForwardRule(ModifyForwardRuleRequest(productID: productID, msgType: msgType, skey: skey, queueRegion: queueRegion, queueType: queueType, consecretid: consecretid, instanceId: instanceId, instanceName: instanceName, queueID: queueID, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改转发规则
    @inlinable
    public func modifyForwardRule(productID: String, msgType: UInt64, skey: String, queueRegion: String, queueType: UInt64, consecretid: String? = nil, instanceId: String? = nil, instanceName: String? = nil, queueID: String? = nil, queueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyForwardRuleResponse {
        try await self.modifyForwardRule(ModifyForwardRuleRequest(productID: productID, msgType: msgType, skey: skey, queueRegion: queueRegion, queueType: queueType, consecretid: consecretid, instanceId: instanceId, instanceName: instanceName, queueID: queueID, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
