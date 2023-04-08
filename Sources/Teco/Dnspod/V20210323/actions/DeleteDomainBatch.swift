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

extension Dnspod {
    /// DeleteDomainBatch请求参数结构体
    public struct DeleteDomainBatchRequest: TCRequestModel {
        /// 域名数组
        public let domainList: [String]

        public init(domainList: [String]) {
            self.domainList = domainList
        }

        enum CodingKeys: String, CodingKey {
            case domainList = "DomainList"
        }
    }

    /// DeleteDomainBatch返回参数结构体
    public struct DeleteDomainBatchResponse: TCResponseModel {
        /// 任务 ID
        public let jobId: UInt64

        /// 任务详情数组
        public let detailList: [DeleteDomainBatchDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case detailList = "DetailList"
            case requestId = "RequestId"
        }
    }

    /// 批量删除域名
    @inlinable
    public func deleteDomainBatch(_ input: DeleteDomainBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainBatchResponse> {
        self.client.execute(action: "DeleteDomainBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除域名
    @inlinable
    public func deleteDomainBatch(_ input: DeleteDomainBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainBatchResponse {
        try await self.client.execute(action: "DeleteDomainBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除域名
    @inlinable
    public func deleteDomainBatch(domainList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainBatchResponse> {
        self.deleteDomainBatch(.init(domainList: domainList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除域名
    @inlinable
    public func deleteDomainBatch(domainList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainBatchResponse {
        try await self.deleteDomainBatch(.init(domainList: domainList), region: region, logger: logger, on: eventLoop)
    }
}
