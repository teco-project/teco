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

extension Trro {
    /// GetLicenseStat请求参数结构体
    public struct GetLicenseStatRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetLicenseStat返回参数结构体
    public struct GetLicenseStatResponse: TCResponseModel {
        /// 有效授权
        public let valid: Int64

        /// 已绑定授权
        public let bound: Int64

        /// 未绑定授权
        public let unBound: Int64

        /// 过期授权
        public let expire: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case valid = "Valid"
            case bound = "Bound"
            case unBound = "UnBound"
            case expire = "Expire"
            case requestId = "RequestId"
        }
    }

    /// licenses统计
    ///
    /// 统计license类型数量
    @inlinable
    public func getLicenseStat(_ input: GetLicenseStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLicenseStatResponse> {
        self.client.execute(action: "GetLicenseStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// licenses统计
    ///
    /// 统计license类型数量
    @inlinable
    public func getLicenseStat(_ input: GetLicenseStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseStatResponse {
        try await self.client.execute(action: "GetLicenseStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// licenses统计
    ///
    /// 统计license类型数量
    @inlinable
    public func getLicenseStat(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLicenseStatResponse> {
        self.getLicenseStat(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// licenses统计
    ///
    /// 统计license类型数量
    @inlinable
    public func getLicenseStat(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseStatResponse {
        try await self.getLicenseStat(.init(), region: region, logger: logger, on: eventLoop)
    }
}
