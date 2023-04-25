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

extension Tione {
    /// DescribeNotebookSummary请求参数结构体
    public struct DescribeNotebookSummaryRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeNotebookSummary返回参数结构体
    public struct DescribeNotebookSummaryResponse: TCResponseModel {
        /// 实例总数
        public let allInstanceCnt: Int64

        /// 计费实例总数
        public let billingInstanceCnt: Int64

        /// 仅存储计费的实例总数
        public let storageOnlyBillingInstanceCnt: Int64

        /// 计算和存储都计费的实例总数
        public let computingBillingInstanceCnt: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case allInstanceCnt = "AllInstanceCnt"
            case billingInstanceCnt = "BillingInstanceCnt"
            case storageOnlyBillingInstanceCnt = "StorageOnlyBillingInstanceCnt"
            case computingBillingInstanceCnt = "ComputingBillingInstanceCnt"
            case requestId = "RequestId"
        }
    }

    /// 查询Notebook概览
    ///
    /// 查询Notebook概览数据
    @inlinable
    public func describeNotebookSummary(_ input: DescribeNotebookSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSummaryResponse> {
        self.client.execute(action: "DescribeNotebookSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Notebook概览
    ///
    /// 查询Notebook概览数据
    @inlinable
    public func describeNotebookSummary(_ input: DescribeNotebookSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSummaryResponse {
        try await self.client.execute(action: "DescribeNotebookSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Notebook概览
    ///
    /// 查询Notebook概览数据
    @inlinable
    public func describeNotebookSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSummaryResponse> {
        self.describeNotebookSummary(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Notebook概览
    ///
    /// 查询Notebook概览数据
    @inlinable
    public func describeNotebookSummary(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSummaryResponse {
        try await self.describeNotebookSummary(.init(), region: region, logger: logger, on: eventLoop)
    }
}
