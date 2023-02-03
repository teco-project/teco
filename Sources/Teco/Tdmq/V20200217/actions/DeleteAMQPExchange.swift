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

extension Tdmq {
    /// DeleteAMQPExchange请求参数结构体
    public struct DeleteAMQPExchangeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// Vhost名称
        public let vHostId: String

        /// 交换机名称
        public let exchange: String

        public init(clusterId: String, vHostId: String, exchange: String) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.exchange = exchange
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case exchange = "Exchange"
        }
    }

    /// DeleteAMQPExchange返回参数结构体
    public struct DeleteAMQPExchangeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Amqp交换机
    @inlinable @discardableResult
    public func deleteAMQPExchange(_ input: DeleteAMQPExchangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAMQPExchangeResponse> {
        self.client.execute(action: "DeleteAMQPExchange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Amqp交换机
    @inlinable @discardableResult
    public func deleteAMQPExchange(_ input: DeleteAMQPExchangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPExchangeResponse {
        try await self.client.execute(action: "DeleteAMQPExchange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Amqp交换机
    @inlinable @discardableResult
    public func deleteAMQPExchange(clusterId: String, vHostId: String, exchange: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAMQPExchangeResponse> {
        let input = DeleteAMQPExchangeRequest(clusterId: clusterId, vHostId: vHostId, exchange: exchange)
        return self.client.execute(action: "DeleteAMQPExchange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Amqp交换机
    @inlinable @discardableResult
    public func deleteAMQPExchange(clusterId: String, vHostId: String, exchange: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPExchangeResponse {
        let input = DeleteAMQPExchangeRequest(clusterId: clusterId, vHostId: vHostId, exchange: exchange)
        return try await self.client.execute(action: "DeleteAMQPExchange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
