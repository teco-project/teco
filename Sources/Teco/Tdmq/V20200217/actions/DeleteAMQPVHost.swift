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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tdmq {
    /// DeleteAMQPVHost请求参数结构体
    public struct DeleteAMQPVHostRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// vhost名称
        public let vHostId: String

        public init(clusterId: String, vHostId: String) {
            self.clusterId = clusterId
            self.vHostId = vHostId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
        }
    }

    /// DeleteAMQPVHost返回参数结构体
    public struct DeleteAMQPVHostResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Vhost
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func deleteAMQPVHost(_ input: DeleteAMQPVHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAMQPVHostResponse> {
        fatalError("DeleteAMQPVHost is no longer available.")
    }

    /// 删除Vhost
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func deleteAMQPVHost(_ input: DeleteAMQPVHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPVHostResponse {
        fatalError("DeleteAMQPVHost is no longer available.")
    }

    /// 删除Vhost
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func deleteAMQPVHost(clusterId: String, vHostId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAMQPVHostResponse> {
        fatalError("DeleteAMQPVHost is no longer available.")
    }

    /// 删除Vhost
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func deleteAMQPVHost(clusterId: String, vHostId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPVHostResponse {
        fatalError("DeleteAMQPVHost is no longer available.")
    }
}
