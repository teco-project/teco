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

extension Ecdn {
    /// DescribePurgeQuota请求参数结构体
    public struct DescribePurgeQuotaRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribePurgeQuota返回参数结构体
    public struct DescribePurgeQuotaResponse: TCResponseModel {
        /// Url刷新用量及配额。
        public let urlPurge: Quota

        /// 目录刷新用量及配额。
        public let pathPurge: Quota

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case urlPurge = "UrlPurge"
            case pathPurge = "PathPurge"
            case requestId = "RequestId"
        }
    }

    /// 查询刷新用量配额
    ///
    /// 查询刷新接口的用量配额。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41956)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func describePurgeQuota(_ input: DescribePurgeQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeQuotaResponse> {
        fatalError("DescribePurgeQuota is no longer available.")
    }

    /// 查询刷新用量配额
    ///
    /// 查询刷新接口的用量配额。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41956)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func describePurgeQuota(_ input: DescribePurgeQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeQuotaResponse {
        fatalError("DescribePurgeQuota is no longer available.")
    }

    /// 查询刷新用量配额
    ///
    /// 查询刷新接口的用量配额。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41956)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func describePurgeQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeQuotaResponse> {
        fatalError("DescribePurgeQuota is no longer available.")
    }

    /// 查询刷新用量配额
    ///
    /// 查询刷新接口的用量配额。
    ///
    /// - Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41956)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func describePurgeQuota(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeQuotaResponse {
        fatalError("DescribePurgeQuota is no longer available.")
    }
}
