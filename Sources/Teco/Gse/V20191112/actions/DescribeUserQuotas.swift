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

extension Gse {
    /// DescribeUserQuotas请求参数结构体
    public struct DescribeUserQuotasRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeUserQuotas返回参数结构体
    public struct DescribeUserQuotasResponse: TCResponseModel {
        /// 配额信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let quotaResource: [QuotaResource]?

        /// 配额信息列表总数，最小值0
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case quotaResource = "QuotaResource"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取用户配额
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeUserQuotas）用于获取用户配额
    @inlinable
    public func describeUserQuotas(_ input: DescribeUserQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserQuotasResponse> {
        self.client.execute(action: "DescribeUserQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户配额
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeUserQuotas）用于获取用户配额
    @inlinable
    public func describeUserQuotas(_ input: DescribeUserQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserQuotasResponse {
        try await self.client.execute(action: "DescribeUserQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户配额
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeUserQuotas）用于获取用户配额
    @inlinable
    public func describeUserQuotas(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserQuotasResponse> {
        self.describeUserQuotas(DescribeUserQuotasRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户配额
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeUserQuotas）用于获取用户配额
    @inlinable
    public func describeUserQuotas(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserQuotasResponse {
        try await self.describeUserQuotas(DescribeUserQuotasRequest(), region: region, logger: logger, on: eventLoop)
    }
}
