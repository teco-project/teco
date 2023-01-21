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

extension Dts {
    /// DescribeCompareReport请求参数结构体
    public struct DescribeCompareReportRequest: TCRequestModel {
        /// 迁移任务 Id
        public let jobId: String

        /// 校验任务 Id
        public let compareTaskId: String

        /// 校验不一致结果的 limit
        public let differenceLimit: UInt64?

        /// 不一致的 Offset
        public let differenceOffset: UInt64?

        /// 搜索条件，不一致的库名
        public let differenceDB: String?

        /// 搜索条件，不一致的表名
        public let differenceTable: String?

        /// 未校验的 Limit
        public let skippedLimit: UInt64?

        /// 未校验的 Offset
        public let skippedOffset: UInt64?

        /// 搜索条件，未校验的库名
        public let skippedDB: String?

        /// 搜索条件，未校验的表名
        public let skippedTable: String?

        public init(jobId: String, compareTaskId: String, differenceLimit: UInt64? = nil, differenceOffset: UInt64? = nil, differenceDB: String? = nil, differenceTable: String? = nil, skippedLimit: UInt64? = nil, skippedOffset: UInt64? = nil, skippedDB: String? = nil, skippedTable: String? = nil) {
            self.jobId = jobId
            self.compareTaskId = compareTaskId
            self.differenceLimit = differenceLimit
            self.differenceOffset = differenceOffset
            self.differenceDB = differenceDB
            self.differenceTable = differenceTable
            self.skippedLimit = skippedLimit
            self.skippedOffset = skippedOffset
            self.skippedDB = skippedDB
            self.skippedTable = skippedTable
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case compareTaskId = "CompareTaskId"
            case differenceLimit = "DifferenceLimit"
            case differenceOffset = "DifferenceOffset"
            case differenceDB = "DifferenceDB"
            case differenceTable = "DifferenceTable"
            case skippedLimit = "SkippedLimit"
            case skippedOffset = "SkippedOffset"
            case skippedDB = "SkippedDB"
            case skippedTable = "SkippedTable"
        }
    }

    /// DescribeCompareReport返回参数结构体
    public struct DescribeCompareReportResponse: TCResponseModel {
        /// 一致性校验摘要信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let abstract: CompareAbstractInfo?

        /// 一致性校验详细信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detail: CompareDetailInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case abstract = "Abstract"
            case detail = "Detail"
            case requestId = "RequestId"
        }
    }

    /// 查询一致性校验任务详情
    @inlinable
    public func describeCompareReport(_ input: DescribeCompareReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompareReportResponse> {
        self.client.execute(action: "DescribeCompareReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务详情
    @inlinable
    public func describeCompareReport(_ input: DescribeCompareReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompareReportResponse {
        try await self.client.execute(action: "DescribeCompareReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询一致性校验任务详情
    @inlinable
    public func describeCompareReport(jobId: String, compareTaskId: String, differenceLimit: UInt64? = nil, differenceOffset: UInt64? = nil, differenceDB: String? = nil, differenceTable: String? = nil, skippedLimit: UInt64? = nil, skippedOffset: UInt64? = nil, skippedDB: String? = nil, skippedTable: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompareReportResponse> {
        self.describeCompareReport(DescribeCompareReportRequest(jobId: jobId, compareTaskId: compareTaskId, differenceLimit: differenceLimit, differenceOffset: differenceOffset, differenceDB: differenceDB, differenceTable: differenceTable, skippedLimit: skippedLimit, skippedOffset: skippedOffset, skippedDB: skippedDB, skippedTable: skippedTable), region: region, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务详情
    @inlinable
    public func describeCompareReport(jobId: String, compareTaskId: String, differenceLimit: UInt64? = nil, differenceOffset: UInt64? = nil, differenceDB: String? = nil, differenceTable: String? = nil, skippedLimit: UInt64? = nil, skippedOffset: UInt64? = nil, skippedDB: String? = nil, skippedTable: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompareReportResponse {
        try await self.describeCompareReport(DescribeCompareReportRequest(jobId: jobId, compareTaskId: compareTaskId, differenceLimit: differenceLimit, differenceOffset: differenceOffset, differenceDB: differenceDB, differenceTable: differenceTable, skippedLimit: skippedLimit, skippedOffset: skippedOffset, skippedDB: skippedDB, skippedTable: skippedTable), region: region, logger: logger, on: eventLoop)
    }
}
