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

extension Ecm {
    /// DescribeAddressQuota请求参数结构体
    public struct DescribeAddressQuotaRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String

        public init(ecmRegion: String) {
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
        }
    }

    /// DescribeAddressQuota返回参数结构体
    public struct DescribeAddressQuotaResponse: TCResponseModel {
        /// 账户 EIP 配额信息。
        public let quotaSet: [EipQuota]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case quotaSet = "QuotaSet"
            case requestId = "RequestId"
        }
    }

    /// 查询弹性公网IP配额
    ///
    /// 查询您账户的弹性公网IP（简称 EIP）在当前地域的配额信息
    @inlinable
    public func describeAddressQuota(_ input: DescribeAddressQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAddressQuotaResponse> {
        self.client.execute(action: "DescribeAddressQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP配额
    ///
    /// 查询您账户的弹性公网IP（简称 EIP）在当前地域的配额信息
    @inlinable
    public func describeAddressQuota(_ input: DescribeAddressQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressQuotaResponse {
        try await self.client.execute(action: "DescribeAddressQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性公网IP配额
    ///
    /// 查询您账户的弹性公网IP（简称 EIP）在当前地域的配额信息
    @inlinable
    public func describeAddressQuota(ecmRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAddressQuotaResponse> {
        self.describeAddressQuota(.init(ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP配额
    ///
    /// 查询您账户的弹性公网IP（简称 EIP）在当前地域的配额信息
    @inlinable
    public func describeAddressQuota(ecmRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressQuotaResponse {
        try await self.describeAddressQuota(.init(ecmRegion: ecmRegion), region: region, logger: logger, on: eventLoop)
    }
}
