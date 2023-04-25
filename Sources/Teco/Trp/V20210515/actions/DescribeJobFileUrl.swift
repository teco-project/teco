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

extension Trp {
    /// DescribeJobFileUrl请求参数结构体
    public struct DescribeJobFileUrlRequest: TCRequestModel {
        /// 调度ID
        public let jobId: UInt64

        /// 企业ID
        public let corpId: UInt64?

        public init(jobId: UInt64, corpId: UInt64? = nil) {
            self.jobId = jobId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case corpId = "CorpId"
        }
    }

    /// DescribeJobFileUrl返回参数结构体
    public struct DescribeJobFileUrlResponse: TCResponseModel {
        /// 码包地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 获取异步任务的输出地址
    @inlinable
    public func describeJobFileUrl(_ input: DescribeJobFileUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobFileUrlResponse> {
        self.client.execute(action: "DescribeJobFileUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取异步任务的输出地址
    @inlinable
    public func describeJobFileUrl(_ input: DescribeJobFileUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobFileUrlResponse {
        try await self.client.execute(action: "DescribeJobFileUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取异步任务的输出地址
    @inlinable
    public func describeJobFileUrl(jobId: UInt64, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobFileUrlResponse> {
        self.describeJobFileUrl(.init(jobId: jobId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取异步任务的输出地址
    @inlinable
    public func describeJobFileUrl(jobId: UInt64, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobFileUrlResponse {
        try await self.describeJobFileUrl(.init(jobId: jobId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
