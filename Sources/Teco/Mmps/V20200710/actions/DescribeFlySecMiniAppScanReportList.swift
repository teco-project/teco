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

extension Mmps {
    /// DescribeFlySecMiniAppScanReportList请求参数结构体
    public struct DescribeFlySecMiniAppScanReportListRequest: TCRequestModel {
        /// 小程序AppID
        public let miniAppID: String

        /// 诊断方式 1:基础诊断，2:深度诊断
        public let mode: Int64

        /// 诊断状态 -1:查询全部, 0:排队中, 1:成功, 2:失败, 3:进行中
        public let status: Int64

        /// 查询数量, 0:查询所有, 其他值:最近几次的诊断数量
        public let size: Int64

        /// 小程序版本
        public let miniAppVersion: String?

        public init(miniAppID: String, mode: Int64, status: Int64, size: Int64, miniAppVersion: String? = nil) {
            self.miniAppID = miniAppID
            self.mode = mode
            self.status = status
            self.size = size
            self.miniAppVersion = miniAppVersion
        }

        enum CodingKeys: String, CodingKey {
            case miniAppID = "MiniAppID"
            case mode = "Mode"
            case status = "Status"
            case size = "Size"
            case miniAppVersion = "MiniAppVersion"
        }
    }

    /// DescribeFlySecMiniAppScanReportList返回参数结构体
    public struct DescribeFlySecMiniAppScanReportListResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64

        /// 诊断报告数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [FlySecMiniAppReportData]?

        /// 诊断任务数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询指定小程序版本的安全得分
    ///
    /// 查询指定小程序版本的翼扬诊断安全得分
    @inlinable
    public func describeFlySecMiniAppScanReportList(_ input: DescribeFlySecMiniAppScanReportListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlySecMiniAppScanReportListResponse> {
        self.client.execute(action: "DescribeFlySecMiniAppScanReportList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定小程序版本的安全得分
    ///
    /// 查询指定小程序版本的翼扬诊断安全得分
    @inlinable
    public func describeFlySecMiniAppScanReportList(_ input: DescribeFlySecMiniAppScanReportListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanReportListResponse {
        try await self.client.execute(action: "DescribeFlySecMiniAppScanReportList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定小程序版本的安全得分
    ///
    /// 查询指定小程序版本的翼扬诊断安全得分
    @inlinable
    public func describeFlySecMiniAppScanReportList(miniAppID: String, mode: Int64, status: Int64, size: Int64, miniAppVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlySecMiniAppScanReportListResponse> {
        self.describeFlySecMiniAppScanReportList(.init(miniAppID: miniAppID, mode: mode, status: status, size: size, miniAppVersion: miniAppVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定小程序版本的安全得分
    ///
    /// 查询指定小程序版本的翼扬诊断安全得分
    @inlinable
    public func describeFlySecMiniAppScanReportList(miniAppID: String, mode: Int64, status: Int64, size: Int64, miniAppVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlySecMiniAppScanReportListResponse {
        try await self.describeFlySecMiniAppScanReportList(.init(miniAppID: miniAppID, mode: mode, status: status, size: size, miniAppVersion: miniAppVersion), region: region, logger: logger, on: eventLoop)
    }
}
