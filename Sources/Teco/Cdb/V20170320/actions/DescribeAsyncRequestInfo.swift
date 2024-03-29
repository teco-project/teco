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

extension Cdb {
    /// DescribeAsyncRequestInfo请求参数结构体
    public struct DescribeAsyncRequestInfoRequest: TCRequest {
        /// 异步任务的请求 ID。
        public let asyncRequestId: String

        public init(asyncRequestId: String) {
            self.asyncRequestId = asyncRequestId
        }

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
        }
    }

    /// DescribeAsyncRequestInfo返回参数结构体
    public struct DescribeAsyncRequestInfoResponse: TCResponse {
        /// 任务执行结果。可能的取值：INITIAL - 初始化，RUNNING - 运行中，SUCCESS - 执行成功，FAILED - 执行失败，KILLED - 已终止，REMOVED - 已删除，PAUSED - 终止中。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 任务执行信息描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let info: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case requestId = "RequestId"
        }
    }

    /// 查询异步任务的执行结果
    ///
    /// 本接口(DescribeAsyncRequestInfo)用于查询云数据库实例异步任务的执行结果。
    @inlinable
    public func describeAsyncRequestInfo(_ input: DescribeAsyncRequestInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAsyncRequestInfoResponse> {
        self.client.execute(action: "DescribeAsyncRequestInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询异步任务的执行结果
    ///
    /// 本接口(DescribeAsyncRequestInfo)用于查询云数据库实例异步任务的执行结果。
    @inlinable
    public func describeAsyncRequestInfo(_ input: DescribeAsyncRequestInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAsyncRequestInfoResponse {
        try await self.client.execute(action: "DescribeAsyncRequestInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询异步任务的执行结果
    ///
    /// 本接口(DescribeAsyncRequestInfo)用于查询云数据库实例异步任务的执行结果。
    @inlinable
    public func describeAsyncRequestInfo(asyncRequestId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAsyncRequestInfoResponse> {
        self.describeAsyncRequestInfo(.init(asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询异步任务的执行结果
    ///
    /// 本接口(DescribeAsyncRequestInfo)用于查询云数据库实例异步任务的执行结果。
    @inlinable
    public func describeAsyncRequestInfo(asyncRequestId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAsyncRequestInfoResponse {
        try await self.describeAsyncRequestInfo(.init(asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }
}
