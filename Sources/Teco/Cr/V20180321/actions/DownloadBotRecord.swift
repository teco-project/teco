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
import TecoDateHelpers

extension Cr {
    /// DownloadBotRecord请求参数结构体
    public struct DownloadBotRecordRequest: TCRequestModel {
        /// 模块：AiApi
        public let module: String
        
        /// 操作：DownloadRecord
        public let operation: String
        
        /// 业务日期
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var bizDate: Date
        
        public init (module: String, operation: String, bizDate: Date) {
            self.module = module
            self.operation = operation
            self.bizDate = bizDate
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case bizDate = "BizDate"
        }
    }
    
    /// DownloadBotRecord返回参数结构体
    public struct DownloadBotRecordResponse: TCResponseModel {
        /// 录音地址。请求后30分钟内有效
        public let recordCosUrl: String
        
        /// 文本地址。请求后30分钟内有效
        public let textCosUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case recordCosUrl = "RecordCosUrl"
            case textCosUrl = "TextCosUrl"
            case requestId = "RequestId"
        }
    }
    
    /// 下载任务录音与文本
    ///
    /// 下载任务录音与文本，第二天12点后可使用此接口获取对应的录音与文本
    @inlinable
    public func downloadBotRecord(_ input: DownloadBotRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DownloadBotRecordResponse > {
        self.client.execute(action: "DownloadBotRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下载任务录音与文本
    ///
    /// 下载任务录音与文本，第二天12点后可使用此接口获取对应的录音与文本
    @inlinable
    public func downloadBotRecord(_ input: DownloadBotRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadBotRecordResponse {
        try await self.client.execute(action: "DownloadBotRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// 下载任务录音与文本
    ///
    /// 下载任务录音与文本，第二天12点后可使用此接口获取对应的录音与文本
    @inlinable
    public func downloadBotRecord(module: String, operation: String, bizDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DownloadBotRecordResponse > {
        self.downloadBotRecord(DownloadBotRecordRequest(module: module, operation: operation, bizDate: bizDate), logger: logger, on: eventLoop)
    }
    
    /// 下载任务录音与文本
    ///
    /// 下载任务录音与文本，第二天12点后可使用此接口获取对应的录音与文本
    @inlinable
    public func downloadBotRecord(module: String, operation: String, bizDate: Date, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadBotRecordResponse {
        try await self.downloadBotRecord(DownloadBotRecordRequest(module: module, operation: operation, bizDate: bizDate), logger: logger, on: eventLoop)
    }
}
