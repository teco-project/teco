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

extension Cdn {
    /// DescribeDiagnoseReport请求参数结构体
    public struct DescribeDiagnoseReportRequest: TCRequestModel {
        /// 报告ID
        public let reportId: String

        public init(reportId: String) {
            self.reportId = reportId
        }

        enum CodingKeys: String, CodingKey {
            case reportId = "ReportId"
        }
    }

    /// DescribeDiagnoseReport返回参数结构体
    public struct DescribeDiagnoseReportResponse: TCResponseModel {
        /// 诊断报告基础信息
        public let baskInfo: DiagnoseData

        /// CNAME检测信息
        public let cnameInfo: DiagnoseData

        /// 客户端检测信息
        public let clientInfo: DiagnoseData

        /// DNS检测信息
        public let dnsInfo: DiagnoseData

        /// 网络检测信息
        public let networkInfo: DiagnoseData

        /// 边缘节点检测信息
        public let ocNodeInfo: DiagnoseData

        /// 中间源节点检测信息
        public let midNodeInfo: DiagnoseData

        /// 源站检测信息
        public let originInfo: DiagnoseData

        /// 刷新检测信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let purgeInfo: DiagnoseData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case baskInfo = "BaskInfo"
            case cnameInfo = "CnameInfo"
            case clientInfo = "ClientInfo"
            case dnsInfo = "DnsInfo"
            case networkInfo = "NetworkInfo"
            case ocNodeInfo = "OcNodeInfo"
            case midNodeInfo = "MidNodeInfo"
            case originInfo = "OriginInfo"
            case purgeInfo = "PurgeInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取诊断报告
    ///
    /// DescribeDiagnoseReport 用于获取指定报告id的内容
    @inlinable
    public func describeDiagnoseReport(_ input: DescribeDiagnoseReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiagnoseReportResponse> {
        self.client.execute(action: "DescribeDiagnoseReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取诊断报告
    ///
    /// DescribeDiagnoseReport 用于获取指定报告id的内容
    @inlinable
    public func describeDiagnoseReport(_ input: DescribeDiagnoseReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiagnoseReportResponse {
        try await self.client.execute(action: "DescribeDiagnoseReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取诊断报告
    ///
    /// DescribeDiagnoseReport 用于获取指定报告id的内容
    @inlinable
    public func describeDiagnoseReport(reportId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiagnoseReportResponse> {
        let input = DescribeDiagnoseReportRequest(reportId: reportId)
        return self.client.execute(action: "DescribeDiagnoseReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取诊断报告
    ///
    /// DescribeDiagnoseReport 用于获取指定报告id的内容
    @inlinable
    public func describeDiagnoseReport(reportId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiagnoseReportResponse {
        let input = DescribeDiagnoseReportRequest(reportId: reportId)
        return try await self.client.execute(action: "DescribeDiagnoseReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
