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

extension Gse {
    /// DescribeUserQuota请求参数结构体
    public struct DescribeUserQuotaRequest: TCRequestModel {
        /// 资源类型
        public let resourceType: UInt64?

        public init(resourceType: UInt64? = nil) {
            self.resourceType = resourceType
        }

        enum CodingKeys: String, CodingKey {
            case resourceType = "ResourceType"
        }
    }

    /// DescribeUserQuota返回参数结构体
    public struct DescribeUserQuotaResponse: TCResponseModel {
        /// 配额资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let quotaResource: QuotaResource?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case quotaResource = "QuotaResource"
            case requestId = "RequestId"
        }
    }

    /// 获取用户单个模块配额
    ///
    /// 本接口（DescribeUserQuota）获取用户单个模块配额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeUserQuota(_ input: DescribeUserQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserQuotaResponse> {
        fatalError("DescribeUserQuota is no longer available.")
    }

    /// 获取用户单个模块配额
    ///
    /// 本接口（DescribeUserQuota）获取用户单个模块配额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeUserQuota(_ input: DescribeUserQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserQuotaResponse {
        fatalError("DescribeUserQuota is no longer available.")
    }

    /// 获取用户单个模块配额
    ///
    /// 本接口（DescribeUserQuota）获取用户单个模块配额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeUserQuota(resourceType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserQuotaResponse> {
        fatalError("DescribeUserQuota is no longer available.")
    }

    /// 获取用户单个模块配额
    ///
    /// 本接口（DescribeUserQuota）获取用户单个模块配额。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeUserQuota(resourceType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserQuotaResponse {
        fatalError("DescribeUserQuota is no longer available.")
    }
}
