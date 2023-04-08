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

extension Tdmq {
    /// CreateAMQPCluster请求参数结构体
    public struct CreateAMQPClusterRequest: TCRequestModel {
        /// 3-64个字符，只能包含字母、数字、“-”及“_”
        public let name: String

        /// 集群描述，128个字符以内
        public let remark: String?

        public init(name: String, remark: String? = nil) {
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// CreateAMQPCluster返回参数结构体
    public struct CreateAMQPClusterResponse: TCResponseModel {
        /// 集群ID
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 创建AMQP集群
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func createAMQPCluster(_ input: CreateAMQPClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAMQPClusterResponse> {
        fatalError("CreateAMQPCluster is no longer available.")
    }

    /// 创建AMQP集群
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func createAMQPCluster(_ input: CreateAMQPClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPClusterResponse {
        fatalError("CreateAMQPCluster is no longer available.")
    }

    /// 创建AMQP集群
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func createAMQPCluster(name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAMQPClusterResponse> {
        fatalError("CreateAMQPCluster is no longer available.")
    }

    /// 创建AMQP集群
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable
    public func createAMQPCluster(name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPClusterResponse {
        fatalError("CreateAMQPCluster is no longer available.")
    }
}
