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
    /// ModifyAMQPExchange请求参数结构体
    public struct ModifyAMQPExchangeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// Vhost间名称
        public let vHostId: String

        /// 交换机名称
        public let exchange: String

        /// 说明信息，最大128个字符
        public let remark: String?

        public init(clusterId: String, vHostId: String, exchange: String, remark: String? = nil) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.exchange = exchange
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case exchange = "Exchange"
            case remark = "Remark"
        }
    }

    /// ModifyAMQPExchange返回参数结构体
    public struct ModifyAMQPExchangeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新Amqp交换机
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPExchange(_ input: ModifyAMQPExchangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAMQPExchangeResponse> {
        fatalError("ModifyAMQPExchange is no longer available.")
    }

    /// 更新Amqp交换机
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPExchange(_ input: ModifyAMQPExchangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAMQPExchangeResponse {
        fatalError("ModifyAMQPExchange is no longer available.")
    }

    /// 更新Amqp交换机
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPExchange(clusterId: String, vHostId: String, exchange: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAMQPExchangeResponse> {
        fatalError("ModifyAMQPExchange is no longer available.")
    }

    /// 更新Amqp交换机
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPExchange(clusterId: String, vHostId: String, exchange: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAMQPExchangeResponse {
        fatalError("ModifyAMQPExchange is no longer available.")
    }
}
