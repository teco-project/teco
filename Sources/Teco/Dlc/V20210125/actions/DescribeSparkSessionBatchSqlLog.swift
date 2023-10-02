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
    /// DescribeSparkSessionBatchSqlLog请求参数结构体
    public struct DescribeSparkSessionBatchSqlLogRequest: TCRequest {
        /// SparkSQL唯一标识
        public let batchId: String

        public init(batchId: String) {
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
        }
    }

    /// DescribeSparkSessionBatchSqlLog返回参数结构体
    public struct DescribeSparkSessionBatchSqlLogResponse: TCResponse {
        /// 状态：0：运行中、1：成功、2：失败、3：取消、4：超时；
        public let state: UInt64

        /// 日志信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logSet: [SparkSessionBatchLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case state = "State"
            case logSet = "LogSet"
            case requestId = "RequestId"
        }
    }

    /// 查询Spark SQL批任务日志
    ///
    /// 本接口（DescribeSparkSessionBatchSqlLog）用于查询Spark SQL批任务日志
    @inlinable
    public func describeSparkSessionBatchSqlLog(_ input: DescribeSparkSessionBatchSqlLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkSessionBatchSqlLogResponse> {
        self.client.execute(action: "DescribeSparkSessionBatchSqlLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Spark SQL批任务日志
    ///
    /// 本接口（DescribeSparkSessionBatchSqlLog）用于查询Spark SQL批任务日志
    @inlinable
    public func describeSparkSessionBatchSqlLog(_ input: DescribeSparkSessionBatchSqlLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkSessionBatchSqlLogResponse {
        try await self.client.execute(action: "DescribeSparkSessionBatchSqlLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Spark SQL批任务日志
    ///
    /// 本接口（DescribeSparkSessionBatchSqlLog）用于查询Spark SQL批任务日志
    @inlinable
    public func describeSparkSessionBatchSqlLog(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkSessionBatchSqlLogResponse> {
        self.describeSparkSessionBatchSqlLog(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Spark SQL批任务日志
    ///
    /// 本接口（DescribeSparkSessionBatchSqlLog）用于查询Spark SQL批任务日志
    @inlinable
    public func describeSparkSessionBatchSqlLog(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkSessionBatchSqlLogResponse {
        try await self.describeSparkSessionBatchSqlLog(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
