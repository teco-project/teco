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

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// CreateForwardRule请求参数结构体
    public struct CreateForwardRuleRequest: TCRequest {
        /// 产品ID
        public let productID: String

        /// 消息类型
        public let msgType: UInt64

        /// 控制台Skey
        public let skey: String

        /// 队列区域
        public let queueRegion: String

        /// 队列类型 0.CMQ  1.Ckafka
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

    /// CreateForwardRule返回参数结构体
    public struct CreateForwardRuleResponse: TCResponse {
        /// 腾讯云账号
        public let endpoint: String

        /// 队列名
        public let queueName: String

        /// 产品ID
        public let productID: String

        /// 消息类型
        public let msgType: UInt64

        /// 结果
        public let result: UInt64

        /// 角色名称
        public let roleName: String

        /// 角色ID
        public let roleID: UInt64

        /// 队列区
        public let queueRegion: String

        /// 消息队列的类型。 0：CMQ，1：Ckafka
        public let queueType: UInt64

        /// 实例id， 目前只有Ckafka会用到
        public let instanceId: String

        /// 实例名称，目前只有Ckafka会用到
        public let instanceName: String

        /// 错误消息
        public let errMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endpoint = "Endpoint"
            case queueName = "QueueName"
            case productID = "ProductID"
            case msgType = "MsgType"
            case result = "Result"
            case roleName = "RoleName"
            case roleID = "RoleID"
            case queueRegion = "QueueRegion"
            case queueType = "QueueType"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case errMsg = "ErrMsg"
            case requestId = "RequestId"
        }
    }

    /// 创建转发规则
    @inlinable
    public func createForwardRule(_ input: CreateForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateForwardRuleResponse> {
        self.client.execute(action: "CreateForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建转发规则
    @inlinable
    public func createForwardRule(_ input: CreateForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateForwardRuleResponse {
        try await self.client.execute(action: "CreateForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建转发规则
    @inlinable
    public func createForwardRule(productID: String, msgType: UInt64, skey: String, queueRegion: String, queueType: UInt64, consecretid: String? = nil, instanceId: String? = nil, instanceName: String? = nil, queueID: String? = nil, queueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateForwardRuleResponse> {
        self.createForwardRule(.init(productID: productID, msgType: msgType, skey: skey, queueRegion: queueRegion, queueType: queueType, consecretid: consecretid, instanceId: instanceId, instanceName: instanceName, queueID: queueID, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建转发规则
    @inlinable
    public func createForwardRule(productID: String, msgType: UInt64, skey: String, queueRegion: String, queueType: UInt64, consecretid: String? = nil, instanceId: String? = nil, instanceName: String? = nil, queueID: String? = nil, queueName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateForwardRuleResponse {
        try await self.createForwardRule(.init(productID: productID, msgType: msgType, skey: skey, queueRegion: queueRegion, queueType: queueType, consecretid: consecretid, instanceId: instanceId, instanceName: instanceName, queueID: queueID, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
