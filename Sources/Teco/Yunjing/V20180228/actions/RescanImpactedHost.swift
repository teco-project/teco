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

extension Yunjing {
    /// RescanImpactedHost请求参数结构体
    public struct RescanImpactedHostRequest: TCRequestModel {
        /// 漏洞ID。
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// RescanImpactedHost返回参数结构体
    public struct RescanImpactedHostResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 漏洞重新检测
    ///
    /// 本接口 (RescanImpactedHost) 用于漏洞重新检测。
    @inlinable @discardableResult
    public func rescanImpactedHost(_ input: RescanImpactedHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RescanImpactedHostResponse> {
        self.client.execute(action: "RescanImpactedHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞重新检测
    ///
    /// 本接口 (RescanImpactedHost) 用于漏洞重新检测。
    @inlinable @discardableResult
    public func rescanImpactedHost(_ input: RescanImpactedHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RescanImpactedHostResponse {
        try await self.client.execute(action: "RescanImpactedHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞重新检测
    ///
    /// 本接口 (RescanImpactedHost) 用于漏洞重新检测。
    @inlinable @discardableResult
    public func rescanImpactedHost(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RescanImpactedHostResponse> {
        self.rescanImpactedHost(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 漏洞重新检测
    ///
    /// 本接口 (RescanImpactedHost) 用于漏洞重新检测。
    @inlinable @discardableResult
    public func rescanImpactedHost(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RescanImpactedHostResponse {
        try await self.rescanImpactedHost(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
