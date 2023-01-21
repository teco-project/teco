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
    /// DescribeForwardRule请求参数结构体
    public struct DescribeForwardRuleRequest: TCRequestModel {
        /// 产品ID
        public let productID: String

        /// 控制台Skey
        public let skey: String

        /// 队列类型，0：CMQ，1：Ckafka
        public let queueType: UInt64

        /// 临时密钥
        public let consecretid: String?

        public init(productID: String, skey: String, queueType: UInt64, consecretid: String? = nil) {
            self.productID = productID
            self.skey = skey
            self.queueType = queueType
            self.consecretid = consecretid
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case skey = "Skey"
            case queueType = "QueueType"
            case consecretid = "Consecretid"
        }
    }

    /// DescribeForwardRule返回参数结构体
    public struct DescribeForwardRuleResponse: TCResponseModel {
        /// 腾讯云账号
        public let endpoint: String

        /// 队列名称
        public let queueName: String

        /// 产品ID
        public let productID: String

        /// 消息类型 1设备上报信息 2设备状态变化通知 3为全选
        public let msgType: UInt64

        /// 结果 2表示禁用 其他为成功
        public let result: UInt64

        /// 角色名
        public let roleName: String

        /// 角色ID
        public let roleID: UInt64

        /// 队列区域
        public let queueRegion: String

        /// 队列类型，0：CMQ，1：Ckafka
        public let queueType: UInt64

        /// 实例id， 目前只有Ckafaka会用到
        public let instanceId: String

        /// 实例名称，目前只有Ckafaka会用到
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

    /// 获取产品转发规则
    @inlinable
    public func describeForwardRule(_ input: DescribeForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeForwardRuleResponse> {
        self.client.execute(action: "DescribeForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品转发规则
    @inlinable
    public func describeForwardRule(_ input: DescribeForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeForwardRuleResponse {
        try await self.client.execute(action: "DescribeForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品转发规则
    @inlinable
    public func describeForwardRule(productID: String, skey: String, queueType: UInt64, consecretid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeForwardRuleResponse> {
        self.describeForwardRule(DescribeForwardRuleRequest(productID: productID, skey: skey, queueType: queueType, consecretid: consecretid), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品转发规则
    @inlinable
    public func describeForwardRule(productID: String, skey: String, queueType: UInt64, consecretid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeForwardRuleResponse {
        try await self.describeForwardRule(DescribeForwardRuleRequest(productID: productID, skey: skey, queueType: queueType, consecretid: consecretid), region: region, logger: logger, on: eventLoop)
    }
}
