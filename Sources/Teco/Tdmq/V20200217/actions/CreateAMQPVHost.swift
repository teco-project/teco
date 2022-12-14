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

extension Tdmq {
    /// CreateAMQPVHost请求参数结构体
    public struct CreateAMQPVHostRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// vhost名称，3-64个字符，只能包含字母、数字、“-”及“_”
        public let vHostId: String

        /// 未消费消息的保留时间，以毫秒为单位，60秒-15天
        public let msgTtl: UInt64

        /// 说明，最大128个字符
        public let remark: String?

        public init(clusterId: String, vHostId: String, msgTtl: UInt64, remark: String? = nil) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.msgTtl = msgTtl
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case msgTtl = "MsgTtl"
            case remark = "Remark"
        }
    }

    /// CreateAMQPVHost返回参数结构体
    public struct CreateAMQPVHostResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建Amqp Vhost
    @inlinable
    public func createAMQPVHost(_ input: CreateAMQPVHostRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAMQPVHostResponse > {
        self.client.execute(action: "CreateAMQPVHost", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Amqp Vhost
    @inlinable
    public func createAMQPVHost(_ input: CreateAMQPVHostRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPVHostResponse {
        try await self.client.execute(action: "CreateAMQPVHost", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Amqp Vhost
    @inlinable
    public func createAMQPVHost(clusterId: String, vHostId: String, msgTtl: UInt64, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAMQPVHostResponse > {
        self.createAMQPVHost(CreateAMQPVHostRequest(clusterId: clusterId, vHostId: vHostId, msgTtl: msgTtl, remark: remark), logger: logger, on: eventLoop)
    }

    /// 创建Amqp Vhost
    @inlinable
    public func createAMQPVHost(clusterId: String, vHostId: String, msgTtl: UInt64, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPVHostResponse {
        try await self.createAMQPVHost(CreateAMQPVHostRequest(clusterId: clusterId, vHostId: vHostId, msgTtl: msgTtl, remark: remark), logger: logger, on: eventLoop)
    }
}
