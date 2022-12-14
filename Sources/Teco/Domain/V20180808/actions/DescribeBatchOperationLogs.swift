//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Domain {
    /// DescribeBatchOperationLogs请求参数结构体
    public struct DescribeBatchOperationLogsRequest: TCRequestModel {
        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为200。
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeBatchOperationLogs返回参数结构体
    public struct DescribeBatchOperationLogsResponse: TCResponseModel {
        /// 总数量
        public let totalCount: Int64

        /// 日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainBatchLogSet: [DomainBatchLogSet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case domainBatchLogSet = "DomainBatchLogSet"
            case requestId = "RequestId"
        }
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(_ input: DescribeBatchOperationLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBatchOperationLogsResponse > {
        self.client.execute(action: "DescribeBatchOperationLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(_ input: DescribeBatchOperationLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchOperationLogsResponse {
        try await self.client.execute(action: "DescribeBatchOperationLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBatchOperationLogsResponse > {
        self.describeBatchOperationLogs(DescribeBatchOperationLogsRequest(offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchOperationLogsResponse {
        try await self.describeBatchOperationLogs(DescribeBatchOperationLogsRequest(offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
