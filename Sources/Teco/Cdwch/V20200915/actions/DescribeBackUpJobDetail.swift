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

extension Cdwch {
    /// DescribeBackUpJobDetail请求参数结构体
    public struct DescribeBackUpJobDetailRequest: TCRequest {
        /// 集群id
        public let instanceId: String

        /// 任务id
        public let backUpJobId: Int64

        public init(instanceId: String, backUpJobId: Int64) {
            self.instanceId = instanceId
            self.backUpJobId = backUpJobId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backUpJobId = "BackUpJobId"
        }
    }

    /// DescribeBackUpJobDetail返回参数结构体
    public struct DescribeBackUpJobDetailResponse: TCResponse {
        /// 备份表详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableContents: [BackupTableContent]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tableContents = "TableContents"
            case requestId = "RequestId"
        }
    }

    /// 查询备份任务详情
    @inlinable
    public func describeBackUpJobDetail(_ input: DescribeBackUpJobDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackUpJobDetailResponse> {
        self.client.execute(action: "DescribeBackUpJobDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备份任务详情
    @inlinable
    public func describeBackUpJobDetail(_ input: DescribeBackUpJobDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackUpJobDetailResponse {
        try await self.client.execute(action: "DescribeBackUpJobDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备份任务详情
    @inlinable
    public func describeBackUpJobDetail(instanceId: String, backUpJobId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackUpJobDetailResponse> {
        self.describeBackUpJobDetail(.init(instanceId: instanceId, backUpJobId: backUpJobId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备份任务详情
    @inlinable
    public func describeBackUpJobDetail(instanceId: String, backUpJobId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackUpJobDetailResponse {
        try await self.describeBackUpJobDetail(.init(instanceId: instanceId, backUpJobId: backUpJobId), region: region, logger: logger, on: eventLoop)
    }
}