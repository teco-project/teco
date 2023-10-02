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

extension Dlc {
    /// DescribeSparkSessionBatchSQL请求参数结构体
    public struct DescribeSparkSessionBatchSQLRequest: TCRequest {
        /// SparkSQL唯一标识
        public let batchId: String

        public init(batchId: String) {
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
        }
    }

    /// DescribeSparkSessionBatchSQL返回参数结构体
    public struct DescribeSparkSessionBatchSQLResponse: TCResponse {
        /// 状态：0：运行中、1：成功、2：失败、3：取消、4：超时；
        public let state: UInt64

        /// SQL子任务列表，仅展示运行完成的子任务，若某个任务运行失败，后续其它子任务不返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tasks: [BatchSqlTask]?

        /// 非sql运行的异常事件信息，包含资源创建失败、调度异常，JOB超时等，正常运行下该Event值为空
        public let event: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case state = "State"
            case tasks = "Tasks"
            case event = "Event"
            case requestId = "RequestId"
        }
    }

    /// 获取Spark SQL批任务运行状态
    ///
    /// 本接口（DescribeSparkSessionBatchSQL）用于查询Spark SQL批任务运行状态
    @inlinable
    public func describeSparkSessionBatchSQL(_ input: DescribeSparkSessionBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkSessionBatchSQLResponse> {
        self.client.execute(action: "DescribeSparkSessionBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Spark SQL批任务运行状态
    ///
    /// 本接口（DescribeSparkSessionBatchSQL）用于查询Spark SQL批任务运行状态
    @inlinable
    public func describeSparkSessionBatchSQL(_ input: DescribeSparkSessionBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkSessionBatchSQLResponse {
        try await self.client.execute(action: "DescribeSparkSessionBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Spark SQL批任务运行状态
    ///
    /// 本接口（DescribeSparkSessionBatchSQL）用于查询Spark SQL批任务运行状态
    @inlinable
    public func describeSparkSessionBatchSQL(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkSessionBatchSQLResponse> {
        self.describeSparkSessionBatchSQL(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Spark SQL批任务运行状态
    ///
    /// 本接口（DescribeSparkSessionBatchSQL）用于查询Spark SQL批任务运行状态
    @inlinable
    public func describeSparkSessionBatchSQL(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkSessionBatchSQLResponse {
        try await self.describeSparkSessionBatchSQL(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}