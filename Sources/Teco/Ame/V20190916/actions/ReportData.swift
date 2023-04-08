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

extension Ame {
    /// ReportData请求参数结构体
    public struct ReportDataRequest: TCRequestModel {
        /// 上报数据
        /// 注:reportData为客户端压缩后的上报数据进行16进制转换的字符串数据
        /// 压缩说明：
        /// a) 上报的json格式字符串通过流的转换（ByteArrayInputStream, java.util.zip.GZIPOutputStream），获取到压缩后的字节数组。
        /// b) 将压缩后的字节数组转成16进制字符串。
        ///
        /// reportData由两部分数据组成：
        /// 1）report_type（上报类型）
        /// 2）data（歌曲上报数据）
        /// 不同的report_type对应的data数据结构不一样。
        ///
        /// 详细说明请参考文档reportdata.docx：
        /// https://github.com/tencentyun/ame-documents
        public let reportData: String

        public init(reportData: String) {
            self.reportData = reportData
        }

        enum CodingKeys: String, CodingKey {
            case reportData = "ReportData"
        }
    }

    /// ReportData返回参数结构体
    public struct ReportDataResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报歌曲播放数据
    ///
    /// 客户上报用户数据功能，为了更好地为用户提供优质服务
    @inlinable @discardableResult
    public func reportData(_ input: ReportDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportDataResponse> {
        self.client.execute(action: "ReportData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报歌曲播放数据
    ///
    /// 客户上报用户数据功能，为了更好地为用户提供优质服务
    @inlinable @discardableResult
    public func reportData(_ input: ReportDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportDataResponse {
        try await self.client.execute(action: "ReportData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报歌曲播放数据
    ///
    /// 客户上报用户数据功能，为了更好地为用户提供优质服务
    @inlinable @discardableResult
    public func reportData(reportData: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportDataResponse> {
        self.reportData(.init(reportData: reportData), region: region, logger: logger, on: eventLoop)
    }

    /// 上报歌曲播放数据
    ///
    /// 客户上报用户数据功能，为了更好地为用户提供优质服务
    @inlinable @discardableResult
    public func reportData(reportData: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportDataResponse {
        try await self.reportData(.init(reportData: reportData), region: region, logger: logger, on: eventLoop)
    }
}
