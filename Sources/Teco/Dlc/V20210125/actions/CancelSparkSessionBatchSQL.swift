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
    /// CancelSparkSessionBatchSQL请求参数结构体
    public struct CancelSparkSessionBatchSQLRequest: TCRequest {
        /// 批任务唯一标识
        public let batchId: String

        public init(batchId: String) {
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
        }
    }

    /// CancelSparkSessionBatchSQL返回参数结构体
    public struct CancelSparkSessionBatchSQLResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消Spark SQL批任务
    ///
    /// 本接口（CancelSparkSessionBatchSQL）用于取消Spark SQL批任务。
    @inlinable @discardableResult
    public func cancelSparkSessionBatchSQL(_ input: CancelSparkSessionBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSparkSessionBatchSQLResponse> {
        self.client.execute(action: "CancelSparkSessionBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消Spark SQL批任务
    ///
    /// 本接口（CancelSparkSessionBatchSQL）用于取消Spark SQL批任务。
    @inlinable @discardableResult
    public func cancelSparkSessionBatchSQL(_ input: CancelSparkSessionBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelSparkSessionBatchSQLResponse {
        try await self.client.execute(action: "CancelSparkSessionBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消Spark SQL批任务
    ///
    /// 本接口（CancelSparkSessionBatchSQL）用于取消Spark SQL批任务。
    @inlinable @discardableResult
    public func cancelSparkSessionBatchSQL(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSparkSessionBatchSQLResponse> {
        self.cancelSparkSessionBatchSQL(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消Spark SQL批任务
    ///
    /// 本接口（CancelSparkSessionBatchSQL）用于取消Spark SQL批任务。
    @inlinable @discardableResult
    public func cancelSparkSessionBatchSQL(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelSparkSessionBatchSQLResponse {
        try await self.cancelSparkSessionBatchSQL(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
