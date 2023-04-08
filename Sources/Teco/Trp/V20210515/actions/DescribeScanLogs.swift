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

extension Trp {
    /// DescribeScanLogs请求参数结构体
    public struct DescribeScanLogsRequest: TCRequestModel {
        /// 码
        public let code: String

        /// 企业ID
        public let corpId: UInt64?

        public init(code: String, corpId: UInt64? = nil) {
            self.code = code
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case corpId = "CorpId"
        }
    }

    /// DescribeScanLogs返回参数结构体
    public struct DescribeScanLogsResponse: TCResponseModel {
        /// 【弃用】
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let products: [ScanLog]?

        /// 条数
        public let totalCount: Int64

        /// 扫描记录
        public let scanLogs: [ScanLog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case totalCount = "TotalCount"
            case scanLogs = "ScanLogs"
            case requestId = "RequestId"
        }
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanLogsResponse> {
        self.client.execute(action: "DescribeScanLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanLogsResponse {
        try await self.client.execute(action: "DescribeScanLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(code: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanLogsResponse> {
        self.describeScanLogs(.init(code: code, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(code: String, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanLogsResponse {
        try await self.describeScanLogs(.init(code: code, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
