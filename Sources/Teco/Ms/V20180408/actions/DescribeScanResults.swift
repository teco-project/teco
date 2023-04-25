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

extension Ms {
    /// DescribeScanResults请求参数结构体
    public struct DescribeScanResultsRequest: TCRequestModel {
        /// 任务唯一标识
        public let itemId: String

        /// 批量查询一个或者多个app的扫描结果，如果不传表示查询该任务下所提交的所有app
        public let appMd5s: [String]?

        public init(itemId: String, appMd5s: [String]? = nil) {
            self.itemId = itemId
            self.appMd5s = appMd5s
        }

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case appMd5s = "AppMd5s"
        }
    }

    /// DescribeScanResults返回参数结构体
    public struct DescribeScanResultsResponse: TCResponseModel {
        /// 批量扫描的app结果集
        public let scanSet: [ScanSetInfo]

        /// 批量扫描结果的个数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scanSet = "ScanSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 批量查询扫描结果
    ///
    /// 用户通过CreateScanInstances接口提交应用进行风险批量扫描后，用此接口批量获取风险详细信息,包含漏洞信息，广告信息，插件信息和病毒信息
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanResults(_ input: DescribeScanResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanResultsResponse> {
        fatalError("DescribeScanResults is no longer available.")
    }

    /// 批量查询扫描结果
    ///
    /// 用户通过CreateScanInstances接口提交应用进行风险批量扫描后，用此接口批量获取风险详细信息,包含漏洞信息，广告信息，插件信息和病毒信息
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanResults(_ input: DescribeScanResultsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanResultsResponse {
        fatalError("DescribeScanResults is no longer available.")
    }

    /// 批量查询扫描结果
    ///
    /// 用户通过CreateScanInstances接口提交应用进行风险批量扫描后，用此接口批量获取风险详细信息,包含漏洞信息，广告信息，插件信息和病毒信息
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanResults(itemId: String, appMd5s: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanResultsResponse> {
        fatalError("DescribeScanResults is no longer available.")
    }

    /// 批量查询扫描结果
    ///
    /// 用户通过CreateScanInstances接口提交应用进行风险批量扫描后，用此接口批量获取风险详细信息,包含漏洞信息，广告信息，插件信息和病毒信息
    @available(*, unavailable, message: "由于该产品是线上免费使用产品，无企业版用户，升级迭代成本高及人力安排等原因，安全测评产品不再接入新用户，故下线。")
    @inlinable
    public func describeScanResults(itemId: String, appMd5s: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanResultsResponse {
        fatalError("DescribeScanResults is no longer available.")
    }
}
