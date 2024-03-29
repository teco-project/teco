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

extension Domain {
    /// UpdateProhibitionBatch请求参数结构体
    public struct UpdateProhibitionBatchRequest: TCRequest {
        /// 批量操作的域名。
        public let domains: [String]

        /// 是否开启禁止域名更新。
        /// True:开启禁止域名更新状态。
        /// False：关闭禁止域名更新状态。
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

    /// UpdateProhibitionBatch返回参数结构体
    public struct UpdateProhibitionBatchResponse: TCResponse {
        /// 日志ID
        public let logId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case requestId = "RequestId"
        }
    }

    /// 批量禁止更新锁
    ///
    /// 本接口 ( UpdateProhibitionBatch ) 用于批量禁止更新锁。
    @inlinable
    public func updateProhibitionBatch(_ input: UpdateProhibitionBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProhibitionBatchResponse> {
        self.client.execute(action: "UpdateProhibitionBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量禁止更新锁
    ///
    /// 本接口 ( UpdateProhibitionBatch ) 用于批量禁止更新锁。
    @inlinable
    public func updateProhibitionBatch(_ input: UpdateProhibitionBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProhibitionBatchResponse {
        try await self.client.execute(action: "UpdateProhibitionBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量禁止更新锁
    ///
    /// 本接口 ( UpdateProhibitionBatch ) 用于批量禁止更新锁。
    @inlinable
    public func updateProhibitionBatch(domains: [String], status: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProhibitionBatchResponse> {
        self.updateProhibitionBatch(.init(domains: domains, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 批量禁止更新锁
    ///
    /// 本接口 ( UpdateProhibitionBatch ) 用于批量禁止更新锁。
    @inlinable
    public func updateProhibitionBatch(domains: [String], status: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProhibitionBatchResponse {
        try await self.updateProhibitionBatch(.init(domains: domains, status: status), region: region, logger: logger, on: eventLoop)
    }
}
