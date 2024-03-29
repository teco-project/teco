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

extension Teo {
    /// CheckCnameStatus请求参数结构体
    public struct CheckCnameStatusRequest: TCRequest {
        /// 站点 ID。
        public let zoneId: String

        /// 加速域名列表。
        public let recordNames: [String]

        public init(zoneId: String, recordNames: [String]) {
            self.zoneId = zoneId
            self.recordNames = recordNames
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case recordNames = "RecordNames"
        }
    }

    /// CheckCnameStatus返回参数结构体
    public struct CheckCnameStatusResponse: TCResponse {
        /// 加速域名 CNAME 状态信息列表。
        public let cnameStatus: [CnameStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cnameStatus = "CnameStatus"
            case requestId = "RequestId"
        }
    }

    /// 校验域名 CNAME 状态
    @inlinable
    public func checkCnameStatus(_ input: CheckCnameStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCnameStatusResponse> {
        self.client.execute(action: "CheckCnameStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 校验域名 CNAME 状态
    @inlinable
    public func checkCnameStatus(_ input: CheckCnameStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCnameStatusResponse {
        try await self.client.execute(action: "CheckCnameStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 校验域名 CNAME 状态
    @inlinable
    public func checkCnameStatus(zoneId: String, recordNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCnameStatusResponse> {
        self.checkCnameStatus(.init(zoneId: zoneId, recordNames: recordNames), region: region, logger: logger, on: eventLoop)
    }

    /// 校验域名 CNAME 状态
    @inlinable
    public func checkCnameStatus(zoneId: String, recordNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCnameStatusResponse {
        try await self.checkCnameStatus(.init(zoneId: zoneId, recordNames: recordNames), region: region, logger: logger, on: eventLoop)
    }
}
