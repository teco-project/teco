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

extension Domain {
    /// TransferProhibitionBatch请求参数结构体
    public struct TransferProhibitionBatchRequest: TCRequestModel {
        /// 批量操作的域名。
        public let domains: [String]

        /// 是否开启禁止域名转移。
        /// True: 开启禁止域名转移状态。
        /// False：关闭禁止域名转移状态。
        public let status: Bool

        public init(domains: [String], status: Bool) {
            self.domains = domains
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case status = "Status"
        }
    }

    /// TransferProhibitionBatch返回参数结构体
    public struct TransferProhibitionBatchResponse: TCResponseModel {
        /// 日志ID
        public let logId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case requestId = "RequestId"
        }
    }

    /// 批量禁止转移锁
    ///
    /// 本接口 ( TransferProhibitionBatch ) 用于批量禁止域名转移 。
    @inlinable
    public func transferProhibitionBatch(_ input: TransferProhibitionBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferProhibitionBatchResponse> {
        self.client.execute(action: "TransferProhibitionBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量禁止转移锁
    ///
    /// 本接口 ( TransferProhibitionBatch ) 用于批量禁止域名转移 。
    @inlinable
    public func transferProhibitionBatch(_ input: TransferProhibitionBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferProhibitionBatchResponse {
        try await self.client.execute(action: "TransferProhibitionBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量禁止转移锁
    ///
    /// 本接口 ( TransferProhibitionBatch ) 用于批量禁止域名转移 。
    @inlinable
    public func transferProhibitionBatch(domains: [String], status: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferProhibitionBatchResponse> {
        self.transferProhibitionBatch(.init(domains: domains, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 批量禁止转移锁
    ///
    /// 本接口 ( TransferProhibitionBatch ) 用于批量禁止域名转移 。
    @inlinable
    public func transferProhibitionBatch(domains: [String], status: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferProhibitionBatchResponse {
        try await self.transferProhibitionBatch(.init(domains: domains, status: status), region: region, logger: logger, on: eventLoop)
    }
}
