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

import TecoCore

extension Trp {
    /// DescribeCodeBatchById请求参数结构体
    public struct DescribeCodeBatchByIdRequest: TCRequestModel {
        /// 企业ID
        public let corpId: UInt64?

        /// 批次ID
        public let batchId: String?

        public init(corpId: UInt64? = nil, batchId: String? = nil) {
            self.corpId = corpId
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case batchId = "BatchId"
        }
    }

    /// DescribeCodeBatchById返回参数结构体
    public struct DescribeCodeBatchByIdResponse: TCResponseModel {
        /// 批次
        public let codeBatch: CodeBatch

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codeBatch = "CodeBatch"
            case requestId = "RequestId"
        }
    }

    /// 查询批次信息
    @inlinable
    public func describeCodeBatchById(_ input: DescribeCodeBatchByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBatchByIdResponse> {
        self.client.execute(action: "DescribeCodeBatchById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询批次信息
    @inlinable
    public func describeCodeBatchById(_ input: DescribeCodeBatchByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeBatchByIdResponse {
        try await self.client.execute(action: "DescribeCodeBatchById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询批次信息
    @inlinable
    public func describeCodeBatchById(corpId: UInt64? = nil, batchId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBatchByIdResponse> {
        self.describeCodeBatchById(.init(corpId: corpId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询批次信息
    @inlinable
    public func describeCodeBatchById(corpId: UInt64? = nil, batchId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeBatchByIdResponse {
        try await self.describeCodeBatchById(.init(corpId: corpId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
