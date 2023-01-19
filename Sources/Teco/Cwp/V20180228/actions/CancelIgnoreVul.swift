//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// CancelIgnoreVul请求参数结构体
    public struct CancelIgnoreVulRequest: TCRequestModel {
        /// 漏洞事件id串，多个用英文逗号分隔
        public let eventIds: String

        public init(eventIds: String) {
            self.eventIds = eventIds
        }

        enum CodingKeys: String, CodingKey {
            case eventIds = "EventIds"
        }
    }

    /// CancelIgnoreVul返回参数结构体
    public struct CancelIgnoreVulResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消漏洞忽略
    @inlinable
    public func cancelIgnoreVul(_ input: CancelIgnoreVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelIgnoreVulResponse> {
        self.client.execute(action: "CancelIgnoreVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消漏洞忽略
    @inlinable
    public func cancelIgnoreVul(_ input: CancelIgnoreVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelIgnoreVulResponse {
        try await self.client.execute(action: "CancelIgnoreVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消漏洞忽略
    @inlinable
    public func cancelIgnoreVul(eventIds: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelIgnoreVulResponse> {
        self.cancelIgnoreVul(CancelIgnoreVulRequest(eventIds: eventIds), region: region, logger: logger, on: eventLoop)
    }

    /// 取消漏洞忽略
    @inlinable
    public func cancelIgnoreVul(eventIds: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelIgnoreVulResponse {
        try await self.cancelIgnoreVul(CancelIgnoreVulRequest(eventIds: eventIds), region: region, logger: logger, on: eventLoop)
    }
}
