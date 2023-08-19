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

extension Cpdp {
    /// DownloadReconciliationUrl请求参数结构体
    public struct DownloadReconciliationUrlRequest: TCRequest {
        /// 平台应用ID
        public let mainAppId: String

        /// 平台代码
        public let appCode: String

        /// 账单日期，yyyy-MM-dd
        public let billDate: String

        /// 商户或者代理商ID
        public let subAppId: String?

        public init(mainAppId: String, appCode: String, billDate: String, subAppId: String? = nil) {
            self.mainAppId = mainAppId
            self.appCode = appCode
            self.billDate = billDate
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case mainAppId = "MainAppId"
            case appCode = "AppCode"
            case billDate = "BillDate"
            case subAppId = "SubAppId"
        }
    }

    /// DownloadReconciliationUrl返回参数结构体
    public struct DownloadReconciliationUrlResponse: TCResponse {
        /// 下载地址
        public let downloadUrl: String

        /// hash类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hashType: String?

        /// hash值
        public let hashValue: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case hashType = "HashType"
            case hashValue = "HashValue"
            case requestId = "RequestId"
        }
    }

    /// 灵云-对账中心账单下载接口
    ///
    /// 获取对账中心账单下载地址的接口
    @inlinable
    public func downloadReconciliationUrl(_ input: DownloadReconciliationUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadReconciliationUrlResponse> {
        self.client.execute(action: "DownloadReconciliationUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云-对账中心账单下载接口
    ///
    /// 获取对账中心账单下载地址的接口
    @inlinable
    public func downloadReconciliationUrl(_ input: DownloadReconciliationUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadReconciliationUrlResponse {
        try await self.client.execute(action: "DownloadReconciliationUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云-对账中心账单下载接口
    ///
    /// 获取对账中心账单下载地址的接口
    @inlinable
    public func downloadReconciliationUrl(mainAppId: String, appCode: String, billDate: String, subAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadReconciliationUrlResponse> {
        self.downloadReconciliationUrl(.init(mainAppId: mainAppId, appCode: appCode, billDate: billDate, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云-对账中心账单下载接口
    ///
    /// 获取对账中心账单下载地址的接口
    @inlinable
    public func downloadReconciliationUrl(mainAppId: String, appCode: String, billDate: String, subAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadReconciliationUrlResponse {
        try await self.downloadReconciliationUrl(.init(mainAppId: mainAppId, appCode: appCode, billDate: billDate, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
