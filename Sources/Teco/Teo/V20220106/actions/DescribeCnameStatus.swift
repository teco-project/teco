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

extension Teo {
    /// DescribeCnameStatus请求参数结构体
    public struct DescribeCnameStatusRequest: TCRequestModel {
        /// 站点 ID
        public let zoneId: String

        /// 域名列表
        public let names: [String]

        public init(zoneId: String, names: [String]) {
            self.zoneId = zoneId
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case names = "Names"
        }
    }

    /// DescribeCnameStatus返回参数结构体
    public struct DescribeCnameStatusResponse: TCResponseModel {
        /// 状态列表
        public let status: [CnameStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询域名 CNAME 状态
    @inlinable
    public func describeCnameStatus(_ input: DescribeCnameStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCnameStatusResponse> {
        self.client.execute(action: "DescribeCnameStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名 CNAME 状态
    @inlinable
    public func describeCnameStatus(_ input: DescribeCnameStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCnameStatusResponse {
        try await self.client.execute(action: "DescribeCnameStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名 CNAME 状态
    @inlinable
    public func describeCnameStatus(zoneId: String, names: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCnameStatusResponse> {
        self.describeCnameStatus(.init(zoneId: zoneId, names: names), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名 CNAME 状态
    @inlinable
    public func describeCnameStatus(zoneId: String, names: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCnameStatusResponse {
        try await self.describeCnameStatus(.init(zoneId: zoneId, names: names), region: region, logger: logger, on: eventLoop)
    }
}
