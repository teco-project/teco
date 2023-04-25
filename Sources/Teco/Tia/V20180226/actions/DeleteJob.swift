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

extension Tia {
    /// DeleteJob请求参数结构体
    public struct DeleteJobRequest: TCRequestModel {
        /// 任务名称
        public let name: String

        /// 运行任务的集群
        public let cluster: String

        public init(name: String, cluster: String) {
            self.name = name
            self.cluster = cluster
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case cluster = "Cluster"
        }
    }

    /// DeleteJob返回参数结构体
    public struct DeleteJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Job
    ///
    /// 删除训练任务
    @inlinable @discardableResult
    public func deleteJob(_ input: DeleteJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobResponse> {
        self.client.execute(action: "DeleteJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Job
    ///
    /// 删除训练任务
    @inlinable @discardableResult
    public func deleteJob(_ input: DeleteJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobResponse {
        try await self.client.execute(action: "DeleteJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Job
    ///
    /// 删除训练任务
    @inlinable @discardableResult
    public func deleteJob(name: String, cluster: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobResponse> {
        self.deleteJob(.init(name: name, cluster: cluster), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Job
    ///
    /// 删除训练任务
    @inlinable @discardableResult
    public func deleteJob(name: String, cluster: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobResponse {
        try await self.deleteJob(.init(name: name, cluster: cluster), region: region, logger: logger, on: eventLoop)
    }
}
