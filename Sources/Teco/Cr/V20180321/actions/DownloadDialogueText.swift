//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Cr {
    /// 对话文本下载
    ///
    /// 用于获取指定案件的对话文本内容，次日早上8:00后可查询前日对话文本内容。
    @inlinable
    public func downloadDialogueText(_ input: DownloadDialogueTextRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DownloadDialogueTextResponse > {
        self.client.execute(action: "DownloadDialogueText", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 对话文本下载
    ///
    /// 用于获取指定案件的对话文本内容，次日早上8:00后可查询前日对话文本内容。
    @inlinable
    public func downloadDialogueText(_ input: DownloadDialogueTextRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadDialogueTextResponse {
        try await self.client.execute(action: "DownloadDialogueText", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DownloadDialogueText请求参数结构体
    public struct DownloadDialogueTextRequest: TCRequestModel {
        /// 模块名，本接口取值：Report
        public let module: String
        
        /// 操作名，本接口取值：DownloadTextReport
        public let operation: String
        
        /// 报告日期，格式为YYYY-MM-DD
        // FIXME: Codable support not implemented for date yet.
        public let reportDate: Date
        
        /// 实例ID
        public let instId: String
        
        public init (module: String, operation: String, reportDate: Date, instId: String) {
            self.module = module
            self.operation = operation
            self.reportDate = reportDate
            self.instId = instId
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case reportDate = "ReportDate"
            case instId = "InstId"
        }
    }
    
    /// DownloadDialogueText返回参数结构体
    public struct DownloadDialogueTextResponse: TCResponseModel {
        /// 对话文本下载地址
        public let textReportUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case textReportUrl = "TextReportUrl"
            case requestId = "RequestId"
        }
    }
}
